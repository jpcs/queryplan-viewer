xquery version "1.0-ml";

(:
 : Copyright (c) 2019 John Snelson
 :
 : Licensed under the Apache License, Version 2.0 (the "License");
 : you may not use this file except in compliance with the License.
 : You may obtain a copy of the License at
 :
 :     http://www.apache.org/licenses/LICENSE-2.0
 :
 : Unless required by applicable law or agreed to in writing, software
 : distributed under the License is distributed on an "AS IS" BASIS,
 : WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 : See the License for the specific language governing permissions and
 : limitations under the License.
 :)

module namespace qputils = "http://marklogic.com/optic/qputils";
declare default function namespace "http://marklogic.com/optic/qputils";
declare namespace plan="http://marklogic.com/plan";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
using namespace "http://www.w3.org/2005/xpath-functions";

declare variable $time-attrs := ("local-time","remote-time");
declare variable $memory-attrs := ("local-max-memory","remote-max-memory");

declare function format-time($v)
{
  let $n := xs:double($v)
  return switch(true())
  case $n > (10 * 1000 * 10000) return fn:round-half-to-even(($v div 1000 * 10000),2) || "s"
  default return fn:round-half-to-even(($v div 10000),2) || "ms"
};

declare function format-memory($v)
{
  let $n := xs:double($v)
  return switch(true())
  case $n > (1024 * 1024 * 1024) return fn:round-half-to-even($n div (1024 * 1024 * 1024),2) || "Gb"
  case $n > (1024 * 1024) return fn:round-half-to-even($n div (1024 * 1024),2) || "Mb"
  case $n > (1024) return fn:round-half-to-even($n div (1024),2) || "Kb"
  default return $n || "b"
};

declare function hex($v)
{
  let $vals := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F')
  return $vals[($v idiv 16) + 1] || $vals[($v mod 16) + 1]
  (: let $rest := $v idiv 16 :)
  (: return ( :)
  (:   $vals[($v mod 16) + 1] || :)
  (:   (if($rest ne 0) then hex($rest) else "") :)
  (: ) :)
};

declare function prefixFor($uri as xs:string)
{
  switch($uri)
  case "http://www.w3.org/2005/xpath-functions" return "fn:"
  case "http://marklogic.com/semantics" return "sem:"
  case "http://marklogic.com/xdmp" return "xdmp:"
  case "http://marklogic.com/xdmp/math" return "math:"
  case "http://marklogic.com/xdmp/json" return "json:"
  case "http://marklogic.com/xdmp/sql" return "sql:"
  case "http://www.w3.org/2001/XMLSchema" return "xs:"
  case "http://marklogic.com/cts" return "cts:"
  default return "Q{" || $uri || "}"
};

declare function makeLiteralExpr($type as xs:QName, $value)
{
  switch($type)
  case xs:QName("xs:string") return (
    '"' || string($value) || '"'
  )
  case xs:QName("sem:iri") return (
    '<' || string($value) || '>'
  )
  case xs:QName("xs:double")
  case xs:QName("xs:decimal")
  case xs:QName("xs:float")
  case xs:QName("xs:integer") return (
    string($value)
  )
  default return (
    prefixFor(namespace-uri-from-QName($type)) || local-name-from-QName($type) || '("' ||
    string($value) || '")'
  )
};

declare function makeLiteralSequenceExpr($values)
{
  if(empty($values)) then "()"
  else if(empty(tail($values))) then makeLiteralExpr($values/@xsi:type,$values)
  else (
    "(" ||
    string-join($values ! makeLiteralExpr(@xsi:type,.),", ") ||
    ")"
  )
};

declare function makeRDFValExpr($node)
{
  if($node/@datatype) then (
    makeLiteralExpr(sem:iri-to-QName($node/@datatype),$node)
  )
  else if($node/@column) then (
    $node/@column || " (" ||
    $node/@columnID || ")"
  )
  else (
    "<" || $node || ">"
  )
};

declare function makeExpr($node)
{
  (: TBD Scalar sub-selects - jpcs :)
  (: TBD Precedence - jpcs :)
  switch(true())
  (: Binary Operators :)
  case exists($node/self::plan:or) return (
    makeExpr($node/plan:expr/*) ||
    " or " ||
    makeExpr($node/plan:term/*)
  )
  case exists($node/self::plan:and) return (
    makeExpr($node/plan:expr/*) ||
    " and " ||
    makeExpr($node/plan:term/*)
  )
  case exists($node/self::plan:multiply) return (
    makeExpr($node/plan:expr/*) ||
    (switch(string($node/@op))
    case "*" return " * "
    case "/" return " div "
    case "int-div" return " idiv "
    case "%" return " mod "
    default return "??") ||
    makeExpr($node/plan:term/*)
  )
  case exists($node/self::plan:add) return (
    makeExpr($node/plan:expr/*) ||
    (switch(string($node/@op))
    case "ADD" return " + "
    case "MINUS" return " - "
    default return "??") ||
    makeExpr($node/plan:term/*)
  )
  (: Comparisons :)
  case exists($node/self::plan:value-compare) return (
    makeExpr($node/plan:expr/*) ||
    " " || lower-case($node/@op) || " " ||
    makeExpr($node/plan:term/*)
  )
  case exists($node/self::plan:general-compare) return (
    makeExpr($node/plan:expr/*) || " " ||
    (switch(string($node/@op))
    case "EQ" return "="
    case "NE" return "!="
    case "LT" return "<"
    case "GT" return ">"
    case "LE" return "<="
    case "GE" return ">="
    default return "??") ||
    " " || makeExpr($node/plan:term/*)
  )
  (: Aggregates :)
  case exists($node/self::plan:aggregate-function) return (
    $node/@name || "(" ||
    (if($node/@distinct = "true") then "distinct " else ()) ||
    (if(empty($node/plan:*)) then "*" else makeExpr($node/plan:*)) ||
    ")"
  )
  (: Function Calls :)
  case exists($node/self::plan:builtin) return (
    prefixFor($node/@uri) || $node/@name || "(" ||
    string-join($node/plan:* ! makeExpr(.),", ") ||
    ")"
  )
  (: Sequences :)
  case exists($node/self::plan:expr-sequence) return (
    let $children := $node/plan:*
    let $count := count($children)
    return (
      (if($count gt 1) then "(" else "") ||
      string-join($children ! makeExpr(.),", ") ||
      (if($count gt 1) then ")" else "")
    )
  )
  (: If :)
  case exists($node/self::plan:if) return (
    "if(" || makeExpr($node/plan:*[1]) || ")" ||
    " then " || makeExpr($node/plan:*[2]) ||
    " else " || makeExpr($node/plan:*[3])
  )
  (: Cast :)
  case exists($node/self::plan:cast) return (
    makeExpr($node/plan:*[1]) || " cast as " ||
    (
      let $type := string($node/@seq-type)
      let $ns := replace($type,"Q\{([^}]*)\}:?(.*)","$1")
      let $local := replace($type,"Q\{([^}]*)\}:?(.*)","$2")
      return
        prefixFor($ns) || $local || $node/@occur-type
    )
  )
  (: Variable References :)
  case exists($node/self::plan:column-ref) return (
    (if($node/@schema != "") then ($node/@schema || ".") else ()) ||
    (if($node/@view != "") then ($node/@view || ".") else ()) ||
    $node/@column
  )
  case exists($node/self::plan:sparql-variable) return (
    "?" || $node/plan:qname/@ltrl
  )
  case exists($node/self::plan:global-variable) return (
    "$" || $node/@qname
  )
  (: Literals :)
  case exists($node/self::plan:literal) return (
    makeLiteralSequenceExpr($node/plan:value)
  )
  default return "??"
};

declare function makeIRI($iri)
{
  let $known := <a>
    <entry prefix="rdfs">http://www.w3.org/2000/01/rdf-schema#</entry>
    <entry prefix="foaf">http://xmlns.com/foaf/0.1/</entry>
    <entry prefix="rdf">http://www.w3.org/1999/02/22-rdf-syntax-ns#</entry>
    <entry prefix="owl">http://www.w3.org/2002/07/owl#</entry>
    <entry prefix="skos">http://www.w3.org/2004/02/skos/core#</entry>
    <entry prefix="xs">http://www.w3.org/2001/XMLSchema#</entry>
    <entry prefix="fn">http://www.w3.org/2005/xpath-functions#</entry>
    <entry prefix="sem">http://marklogic.com/semantics#</entry>
  </a>
  let $iri := sql:trim($iri)
  return (
    $known/entry ! (
        if(starts-with($iri,.))
        then (@prefix || ":" || substring-after($iri,.))
        else ()
    ),
    ("<" || $iri || ">")
  )[1]
};

declare function makeGraphNodeExpr($node)
{
  switch($node/@type)
  case "iri" return makeIRI($node)
  case "blank" return ("_:" || $node/@name)
  case "var" return ("?" || $node/@name)
  case "global-variable" return ("$" || $node/@name)
  case "column-ref"
  case "column-def" return (
    (if($node/@schema != "") then ($node/@schema || ".") else ()) ||
    (if($node/@view != "") then ($node/@view || ".") else ()) ||
    $node/@column
  )
  default return "??"
};

declare function makeGraphNodeInfo($node)
{
  switch($node/@type)
  case "iri" return makeIRI($node)
  case "blank" return ($node/@column-index || " (_:" || $node/@name || ")")
  case "var" return ($node/@column-index || " (?" || $node/@name || ")")
  case "global-variable" return ("$" || $node/@name)
  case "column-ref"
  case "column-def" return (
    $node/@column-index || " (" ||
    (if($node/@schema != "") then ($node/@schema || ".") else ()) ||
    (if($node/@view != "") then ($node/@view || ".") else ()) ||
    $node/@column ||
    (: (if($node/@type = "column-def") then " (def)" else ()) || :)
    ")"
  )
  case "literal" return (
    if($node/plan:rdf-val) then makeRDFValExpr($node/plan:rdf-val)
    else makeRDFValExpr($node)
  )
  default return "??"
};

declare function attrs($map,$node,$skip)
{
  fn:fold-left(function($map, $a) {
      switch(true())
      case local-name($a) = $time-attrs return $map=>map:with(local-name($a), format-time($a))
      case local-name($a) = $memory-attrs return $map=>map:with(local-name($a), format-memory($a))
      default return $map=>map:with(local-name($a), string($a))
    },
    $map,$node/@*[not(local-name(.) = $skip)])
  =>(function($map){
    if($node/* or empty($node/text())) then $map
    else $map
      =>map:with("value",string($node))
  })()
};

declare function attrs($map,$node)
{
  attrs($map,$node,("static-type","column-number"))
};

declare function nameAndAttrs($map,$node)
{
  $map
  =>map:with("_name",local-name($node))
  =>attrs($node)
};

declare function makeTemplateViewGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>( (: v9 :)
    fn:fold-left(function($map,$n) {
      $map=>map-append("column",
        makeGraphNodeInfo($n/plan:graph-node) ||
        (if($n/@nullable = "true") then " [nullable]" else ""))
    },?,$node/*[local-name(.) = ("template-column")])
  )()
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append(local-name($n),
        (if($n/(plan:name|plan:graph-node)) then makeGraphNodeInfo($n/(plan:name|plan:graph-node)) else makeGraphNodeInfo($n)) ||
        (if($n/@nullable = "true") then " [nullable]" else ""))
    },?,$node/*[local-name(.) = ("column","row","fragment","content")])
  )(),

  for $c at $pos in $node/*[not(local-name(.) = ("template-column","column","row","fragment","content"))]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeLiteralGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>map:with("_name","literal")
  =>map:with("value",string-join($node/plan:value!string(.),", "))
  =>map:with("type",string-join($node/plan:value/@xsi:type!string(.),","))
};

declare function makeJoinFilterExpr($node as element())
{
  makeGraphNodeExpr($node/(plan:left|plan:left-graph-node/plan:graph-node)) ||
  $node/@op ||
  (if($node/(plan:right|plan:right-graph-node))
  then makeGraphNodeExpr($node/(plan:right|plan:right-graph-node/plan:graph-node))
  else makeExpr($node/plan:right-expr/plan:*))
};

declare function makeJoinFilterGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map:with(local-name($n),attrs(map:map(),$n))
    },?,$node/*[local-name(.) = ("left","right")])
  )()
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map:with(local-name($n/..),attrs(map:map(),$n))
    },?,$node/(plan:left-graph-node|plan:right-graph-node)/plan:graph-node)
  )()
  =>map:with("condition",makeJoinFilterExpr($node))
};

declare function makeTripleGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    switch(version($node))
    case 9 return 
      fn:fold-left(function($map,$n) {
        $map=>map:with(local-name($n/..),makeGraphNodeInfo($n))
      },?,$node/*[local-name(.) = ("subject","predicate","object","graph","fragment")]/plan:graph-node)
    default return
      fn:fold-left(function($map,$n) {
        $map=>map:with(local-name($n),makeGraphNodeInfo($n))
      },?,$node/*[local-name(.) = ("subject","predicate","object","graph","fragment")])
  )(),

  for $c at $pos in $node/*[not(local-name(.) = ("subject","predicate","object","graph","fragment"))]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeLexiconGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map:with(local-name($n),makeGraphNodeInfo($n))
    },?,$node/*[local-name(.) = ("value","fragment")])
  )()
  =>map:with("key",$node/plan:range-index-val/@key)
  =>map:with("scalar-type",$node/plan:range-index-val/@scalar-type),

  for $c at $pos in $node/*[not(local-name(.) = ("value","fragment","range-index-val"))]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeOrderGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("order-spec",
        (if($n/plan:graph-node) then makeGraphNodeInfo($n/plan:graph-node) else makeGraphNodeInfo($n)) ||
        (if($n/@descending = "true") then " [desc]" else "") ||
        (if($n/@nulls-first = "true") then " [nulls-first]" else ""))
    },?,$node/plan:order-spec)
  )(),

  for $c at $pos in $node/*[not(local-name(.) = ("order-spec"))]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare %private function version($node)
{
  if($node/plan:expr) then 9
  else if($node/plan:elems) then 9
  else if($node/plan:*[not(local-name() = ("zero-or-one","one-or-more","values"))]/plan:graph-node) then 9
  else 10
};

declare function makeProjectGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("column",makeGraphNodeInfo($n))
    },?,$node/(plan:column|plan:vars/plan:graph-node))
  )(),

  let $children :=
    if($node/plan:expr) then $node/plan:expr/* else $node/*[not(self::plan:column)]

  for $c at $pos in $children
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeJoinGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>map:with("_name",string($node/(@type|@join-type)))
  =>attrs($node,("static-type","type","join-type"))
  =>(function($m) {
    let $conditions :=
      if($node/plan:join-info) then $node/plan:join-info/plan:hash
      else $node/plan:hash
    return
      if(empty($conditions)) then $m 
      else $m=>map:with("condition",
        string-join(
          for $c at $pos in $conditions
          return (
            if($pos=1) then () else " and ",
            string($c/@left), string($c/(@op|@operator)), string($c/@right)
          )
        ))
  })()
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("join-filter",makeJoinFilterExpr($n))
    },?,$node/plan:filters/plan:join-filter)
  )() =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("join-filter",makeExpr($n))
    },?,$node/plan:ljfilters/*)
  )()
  ,

  let $subs :=
    switch(version($node))
    case 9 return ($node/plan:elems/*,
      if(contains($node/@type,"right")) then $node!((plan:optional|plan:negation-expr)/plan:*,plan:expr/plan:*)
      else $node!(plan:expr/plan:*,(plan:optional|plan:negation-expr)/plan:*)
    )
    default return $node/*[not(local-name(.) = ("hash","scatter"))]
  let $lhs := $subs[1]
  let $lhsID := $id || "_L"
  let $rhs := $subs[2]
  let $rhsID := $id || "_R"
  return (
    if (fn:exists($node/plan:exists))
    then 
      let $maps := makeGraph($node/plan:exists/*, $id || "_E")
    return (
      head($maps)=>map:with("_parent",$id)=>map:with("_parentLabel","right"),
      tail($maps)
    )
    else
       ()
    ,
    let $maps := makeGraph($lhs,$lhsID)
    return (
      head($maps)=>map:with("_parent",$id)=>map:with("_parentLabel","left"),
      tail($maps)
    ),
    let $maps := makeGraph($rhs,$rhsID)
    return (
      head($maps)=>map:with("_parent",$id)=>map:with("_parentLabel","right"),
      tail($maps)
    )
  )
};

declare function map-append($map,$key,$val)
{
  $map=>map:with($key,($map=>map:get($key),$val))
};

declare function makeGroupGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("order-spec",
        if($n/plan:graph-node) then makeGraphNodeInfo($n/plan:graph-node)
        else makeGraphNodeInfo($n))
    },?,$node/plan:order-spec)
  )()
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("aggregate",
        makeExpr($n/plan:aggregate-function) || " as " || makeGraphNodeExpr($n/(plan:column|plan:var/plan:graph-node)))
    },?,$node/plan:aggregate-bind)
  )(),

  let $children := $node/*[not(self::plan:order-spec|self::plan:aggregate-bind)]

  for $c at $pos in $children
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeBindGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(function($map){
    if($node/plan:column) then (
      $map=>map:with("expr", makeExpr($node/plan:expr/plan:*) || " as " ||
        makeGraphNodeExpr($node/plan:column))
    )
    else (
      $map=>map:with("expr", makeExpr($node/plan:bind-expr/plan:*) || " as " ||
        makeGraphNodeExpr($node/plan:var/plan:graph-node))
    )
  })(),

  let $children := if($node/plan:column) then (
    $node/*[not(self::plan:column|self::plan:expr)]
  ) else (
    $node/plan:expr/*
  )

  for $c at $pos in $children
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeFilterGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("condition",makeExpr($n))
    },?,$node/plan:filters/plan:*)
  )(),

  for $c at $pos in $node/*[not(self::plan:filters)]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeLimitGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map:with(local-name($n),
        if($n/plan:graph-node) then makeGraphNodeInfo($n/plan:graph-node)
        else makeGraphNodeInfo($n))
    },?,$node/*[local-name(.) = ("limit","offset")])
  )(),

  let $children := if($node/plan:expr) then (
    $node/plan:expr/*
  ) else (
    $node/*[not(self::plan:limit|self::plan:offset)]
  )  

  for $c at $pos in $children
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeZeroOrOneGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>map:with("subject", makeGraphNodeInfo($node/plan:graph-node[1]))
  =>map:with("object", makeGraphNodeInfo($node/plan:graph-node[2])),

  for $c at $pos in $node/*[not(self::plan:graph-node)][1]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeOneOrMoreGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>map:with("subject", makeGraphNodeInfo(($node/(plan:subject|plan:graph-node[1]))[1]))
  =>map:with("varIn", makeGraphNodeInfo(($node/(plan:var-in|plan:graph-node[2]))[1]))
  =>map:with("varOut", makeGraphNodeInfo(($node/(plan:var-out|plan:graph-node[3]))[1]))
  =>map:with("object", makeGraphNodeInfo(($node/(plan:object|plan:graph-node[4]))[1])),

  for $c at $pos in $node/*[not(self::plan:graph-node|self::plan:subject|
    self::plan:var-in|self::plan:var-out|self::plan:object)][1]
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeValuesRows($map,$values,$rowCount)
{
  if(empty($values)) then $map else (
    $map=>map-append("bindings", string-join(
      for $v in subsequence($values,1,$rowCount)
      return makeRDFValExpr($v),
      ", ")),
    makeValuesRows($map,subsequence($values,$rowCount+1),$rowCount)
  )
};

declare function makeValuesGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map:with("column",makeGraphNodeInfo($n))
    },?,$node/plan:graph-node)
  )()
  =>makeValuesRows($node/plan:bindings/(plan:rdf-val|plan:value),count($node/plan:graph-node))
};

declare function makeFromGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node)
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append(local-name($n/..),string($n))
    },?,$node/plan:*/plan:value)
  )()
};



declare function makeGenericGraph($node as element(), $id as xs:string)
{
  map:map()
  =>map:with("_id",$id)
  =>nameAndAttrs($node),

  for $c at $pos in $node/*
  let $newID := concat($id, "_", $pos)
  return (
    let $maps := makeGraph($c,$newID)
    return (
      head($maps)=>map:with("_parent",$id),
      tail($maps)
    )
  )
};

declare function makeGraph($node as element(), $id as xs:string)
{
  switch(true())
  case exists($node/self::plan:join-filter) return makeJoinFilterGraph($node,$id)
  case contains(local-name($node),"join") and local-name($node)!="star-join" return makeJoinGraph($node,$id)
  case exists($node/self::plan:project) return makeProjectGraph($node,$id)
  case exists($node/self::plan:order-by) return makeOrderGraph($node,$id)
  case exists($node/self::plan:triple-index) return makeTripleGraph($node,$id)
  case exists($node/self::plan:lexicon-index) return makeLexiconGraph($node,$id)
  case exists($node/self::plan:template-view) return makeTemplateViewGraph($node,$id)
  case exists($node/self::plan:literal) return makeLiteralGraph($node,$id)
  case exists($node/self::plan:group) return makeGroupGraph($node,$id)
  case exists($node/self::plan:bind) return makeBindGraph($node,$id)
  case exists($node/self::plan:filter) return makeFilterGraph($node,$id)
  case exists($node/self::plan:limit) return makeLimitGraph($node,$id)
  case exists($node/self::plan:zero-or-one) return makeZeroOrOneGraph($node,$id)
  case exists($node/self::plan:one-or-more) return makeOneOrMoreGraph($node,$id)
  case exists($node/self::plan:values) return makeValuesGraph($node,$id)
  case exists($node/self::plan:from) return makeFromGraph($node,$id)
  case exists($node/self::plan:plan) return makeGraph($node/plan:*[1],$id)
  default return makeGenericGraph($node,$id)
};

declare function gradient($v as xs:double)
{
  (: $v between 0 and 1 :)
  let $start := (255,255,255)
  let $end := (255,0,0)
  let $f := function($i) {
    hex(fn:round(($start[$i] * (1.0-$v)) + ($end[$i] * $v)))
  }
  return "#" || $f(1) || $f(2) || $f(3)
};

declare function color($n as element(), $attrNames as xs:string*, $total as xs:double)
{
  element { node-name($n)} {
    $n/@*,
    if(empty($n/@*[local-name(.)=$attrNames])) then ()
    else (
      let $v := sum($n/@*[local-name(.)=$attrNames]) div $total
      let $v := math:log((10 * $v) + 1) div math:log(11)
      return attribute _color { gradient($v) }
    ),
    $n/* ! color(.,$attrNames,$total)
  }
};

declare function colorForTime($in as element())
{
  let $ltime := sum($in//@local-time)
  let $rtime := sum($in//@remote-time)
  return color($in,$time-attrs,$ltime+$rtime)
};

declare function colorForMemory($in as element())
{
  let $lmem := sum($in//@local-max-memory)
  let $rmem := sum($in//@remote-max-memory)
  return color($in,$memory-attrs,$lmem+$rmem)
};

declare function makeScripts($in as element())
{
  let $out := makeGraph($in, "N")
  return (
    <script type="text/javascript" src="xtrace/lib/d3/d3.v3.min.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/lib/jQuery/jquery-1.9.0.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/lib/jQuery/jquery.tipsy.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/lib/dagre/dagre.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/Minimap.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/MinimapZoom.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/DirectedAcyclicGraph.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/Graph.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/Tooltip.js"><!-- --></script>,
    <script type="text/javascript" src="xtrace/js/qp.js"><!-- --></script>,
    <link href="xtrace/stylesheets/xtrace.css" rel="stylesheet" type="text/css" />,
    <link href="xtrace/stylesheets/tipsy.css" rel="stylesheet" type="text/css" />,
    <link href="xtrace/stylesheets/jquery.contextMenu.css" rel="stylesheet" type="text/css" />,
    <script>
      input = { xdmp:quote(json:to-array($out)) };

      window.onload = function() {{
          var params = getParameters();
          window.qp = new QueryPlan(document.body,input,params);
      }}
    </script>
  )
};

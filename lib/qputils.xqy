xquery version "1.0-ml";

(:
 : Copyright (c) 2021 MarkLogic Corporation
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
    (if(empty($node/plan:*)) then "*"
     else if($node/plan:expr) then makeExpr($node/plan:expr/plan:*)
     else makeExpr($node/plan:*)) ||
    ")"
  )
  (: Function Calls :)
  case exists($node/self::plan:builtin) return (
    prefixFor($node/@uri) || $node/@name || "(" ||
    string-join($node/plan:* ! makeExpr(.),", ") ||
    ")"
  )
  (: String Concat :)
  case exists($node/self::plan:string-concat) return (
    string-join($node/plan:* ! makeExpr(.)," || ")
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
  (: Switch :)
  case exists($node/self::plan:switch-expr) return (
    "switch(" || makeExpr($node/plan:switch/plan:*[1]) || ")" ||
    string-join(
        for $sc in $node/plan:clauses/plan:switch-clause
        for $c in $sc/plan:cases/plan:*
        return (
          " case " || makeExpr($c) ||
          " return " || makeExpr($c/../following-sibling::plan:*[1])
        )
    ) ||
    " default return " || makeExpr($node/plan:default/plan:*[1])
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
  (: Node Constructors :)
  case exists($node/self::plan:object-constructor) return (
    "object-node{" ||
    string-join(
      for $ncv in $node/plan:name-colon-value
      let $n := $ncv/plan:name/plan:*[1]
      let $v := $ncv/plan:name/following-sibling::plan:*[1]
      return (
        makeExpr($n) || " : " || makeExpr($v)
      ),
      ", "
    ) ||
    "}"
  )
  case exists($node/self::plan:array-constructor) return (
    "array-node{" ||
    $node/plan:*[1]/makeExpr(.) ||
    "}"
  )
  case exists($node/self::plan:element-constructor) return (
    "element-node{" ||
    makeExpr($node/plan:start-tag/plan:*[1]) ||
    "} {" ||
    string-join(
      ($node/plan:start-tag/plan:attribute-list/plan:*,
      $node/plan:start-tag/following-sibling::plan:*[1])
      ! makeExpr(.),
      ", "
    ) ||
    "}"
  )
  case exists($node/self::plan:attribute-value-pair) return (
    "attribute-node{" ||
    makeExpr($node/plan:name/plan:*[1]) ||
    "} {" ||
    makeExpr($node/plan:value/plan:*[1]) ||
    "}"
  )
  case exists($node/self::plan:namespace-decl) return (
    "namespace-node{""" || $node/@prefix ||
    """} {""" || $node/@namespace-uri ||
    """}"
  )
  case exists($node/self::plan:xml-processing) return (
    "processing-instruction-node{" ||
    $node/plan:name/plan:*[1]/makeExpr(.) ||
    "} {" ||
    $node/plan:content/plan:*[1]/makeExpr(.) ||
    "}"
  )
  case exists($node/self::plan:number-constructor) return (
    "number-node{" || makeExpr($node/plan:*[1]) || "}"
  )
  case exists($node/self::plan:boolean-constructor) return (
    "boolean-node{" || makeExpr($node/plan:*[1]) || "}"
  )
  case exists($node/self::plan:text-constructor) return (
    "text-node{" || makeExpr($node/plan:*[1]) || "}"
  )
  case exists($node/self::plan:xml-comment) return (
    "comment-node{" || makeExpr($node/plan:*[1]) || "}"
  )
  case exists($node/self::plan:document-constructor) return (
    "document-node{" || makeExpr($node/plan:*[1]) || "}"
  )
  case exists($node/self::plan:null-constructor) return (
    "null-node{}"
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
  let $op := if($node/@op) then (
      makeGraphNodeExpr($node/(plan:left|plan:left-graph-node/plan:graph-node)) ||
      $node/@op ||
      (if($node/(plan:right|plan:right-graph-node))
      then makeGraphNodeExpr($node/(plan:right|plan:right-graph-node/plan:graph-node))
      else makeExpr($node/plan:right-expr/plan:*))
    ) else ()
  let $null := if($node/@null-status = ("not-null","is-null","or-null")) then (
      if($node/@null-status = "not-null") then "fn:exists(" else "fn:empty(" ||
      makeGraphNodeExpr($node/(plan:left|plan:left-graph-node/plan:graph-node)) ||
      ")"
    ) else ()
  return (
    $op || 
    (if($op and $null) then " or " else ()) ||
    $null
  )
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
  (:
   : join, left-join, full-join, right-join, sparql-exists-join,
   : sparql-negation-join, sql-exists-join, sql-in-join,
   : sql-negation-join, sql-not-in-join
   :)
  map:map()
  =>map:with("_id",$id)
  =>map:with("_name",
    (: Historically exists join @type didn't mention "exists" :)
    if(local-name($node) = ("sql-exists-join","sparql-exists-join")
      and fn:not(fn:contains($node/@type,"exists")))
    then string($node/@type) || "-exists-join"
    (: Historically in join @type didn't mention "in" :)
    else if(local-name($node) = ("sql-in-join")
      and fn:not(fn:contains($node/@type,"in")))
    then string($node/@type) || "-in-join"
    else string($node/(@type|@join-type)))
  =>(function($m) {
    if(starts-with(local-name($node),"sql-")) then $m=>map:with("lang","sql")
    else if(starts-with(local-name($node),"sparql-")
      and local-name($node) ne "sparql-left-join") then $m=>map:with("lang","sparql")
    else $m
  })()
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
      if(contains($node/@type,"right")) then $node!((plan:optional|plan:exists|plan:negation-expr)/plan:*,plan:expr/plan:*)
      else $node!(plan:expr/plan:*,(plan:optional|plan:exists|plan:negation-expr)/plan:*)
    )
    default return $node/*[not(local-name(.) = ("hash","scatter","left-sort","right-sort"))]
  let $lhs := $subs[1]
  let $lhsID := $id || "_L"
  let $rhs := $subs[2]
  let $rhsID := $id || "_R"
  return (
    let $maps := makeEmbeddedSortGraph($node/plan:left-sort,$lhs,$id,$lhsID)
    return (
      head($maps)=>map:with("_parentLabel","left"),
      tail($maps)
    ),
    let $maps := makeEmbeddedSortGraph($node/plan:right-sort,$rhs,$id,$rhsID)
    return (
      head($maps)=>map:with("_parentLabel","right"),
      tail($maps)
    )
  )
};

declare function map-append($map,$key,$val)
{
  $map=>map:with($key,($map=>map:get($key),$val))
};

declare function makeEmbeddedSortGraph($node as element()?, $children as element()*, $parentID as xs:string, $id as xs:string)
{
  if($node) then (
    map:map()
    =>map:with("_id",$id)
    =>map:with("_parent",$parentID)
    =>map:with("_name","sort")
    =>attrs($node)
    =>(
      fn:fold-left(function($map,$n) {
        $map=>map-append("order-spec",
          (if($n/plan:graph-node) then makeGraphNodeInfo($n/plan:graph-node) else makeGraphNodeInfo($n)) ||
          (if($n/@descending = "true") then " [desc]" else "") ||
          (if($n/@nulls-first = "true") then " [nulls-first]" else ""))
      },?,$node/plan:order-spec)
    )(),

    for $c at $pos in $children
    let $newID := concat($id, "_", $pos)
    return (
      let $maps := makeGraph($c,$newID)
      return (
        head($maps)=>map:with("_parent",$id),
        tail($maps)
      )
    )
  ) else (
    for $c at $pos in $children
    let $newID := if(empty(tail($children))) then $id else concat($id, "_", $pos)
    return (
      let $maps := makeGraph($c,$newID)
      return (
        head($maps)=>map:with("_parent",$parentID),
        tail($maps)
      )
    )
  )
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
      $map=>map-append("grouping-set",
        json:to-array(
          for $o in $n/plan:order-spec
          return makeGraphNodeInfo($o)
        )
      )
    },?,$node/plan:grouping-set)
  )()
  =>(
    fn:fold-left(function($map,$n) {
      $map=>map-append("aggregate",
        makeExpr($n/plan:aggregate-function) || " as " || makeGraphNodeExpr($n/(plan:column|plan:var/plan:graph-node)))
    },?,$node/plan:aggregate-bind)
  )(),

  let $children := $node/*[not(self::plan:order-spec|self::plan:aggregate-bind|self::plan:grouping-set|self::plan:sort)]
  return makeEmbeddedSortGraph($node/plan:sort,$children,$id,concat($id,"_1"))
};

declare function gatherBinds($map, $node as element())
{
  let $map :=
    if($node/plan:column) then (
      $map=>map-append("expr", makeExpr($node/plan:expr/plan:*) || " as " ||
        makeGraphNodeExpr($node/plan:column))
    )
    else (
      $map=>map-append("expr", makeExpr($node/plan:bind-expr/plan:*) || " as " ||
        makeGraphNodeExpr($node/plan:var/plan:graph-node))
    )

  let $children := if($node/plan:column) then (
    $node/*[not(self::plan:column|self::plan:expr)]
  ) else (
    $node/plan:expr/*
  )
  return (
    if($children[1]/self::plan:bind) then gatherBinds($map,$children[1])
    else $children
  )
};

declare function makeBindGraph($node as element(), $id as xs:string)
{
  let $map := map:map()
    =>map:with("_id",$id)
    =>nameAndAttrs($node)
  let $children := gatherBinds($map,$node)
  return (
    $map,
    for $c at $pos in $children
    let $newID := concat($id, "_", $pos)
    return (
      let $maps := makeGraph($c,$newID)
      return (
        head($maps)=>map:with("_parent",$id),
        tail($maps)
      )
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
      ", "))
    =>makeValuesRows(subsequence($values,$rowCount+1),$rowCount)
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

declare function qputils:normalize ($string) {
  let $res := fn:normalize-space($string)
  return 
  if (fn:starts-with($res, "("))
  then fn:substring($res, 2, fn:string-length($string) -2)
  else $res
};

declare function qputils:parseCost ($line, $obj) {
   let $line :=  qputils:normalize ($line) 
   let $cost := fn:substring-before($line,"crd:")
   let $card := fn:substring-before(fn:substring-after($line,"crd:["),"]")
   let $_ := map:put($obj, "cardinalities", $card)
   let $_ :=
       for $token in fn:tokenize($cost,",")
       let $t := fn:tokenize($token, ":")
       let $name := $t[1]
       let $name := 
         if ($name = ("mem","dmem","nw","io"))
         then ($name|| "-cost")
         else if (fn:starts-with($name,"dcpu")) then "dcpu-cost"
         else if (fn:starts-with($name,"cpu")) then "cpu-cost"
         else if ($name = "m") then "cost"
         else if ($name = "c") then "estimated-count"
         else if ($name = "r") then "rule-count"
         else $name
       return map:put($obj,$name,qputils:normalize($t[2]))
   return () 
};

declare function qputils:parseOptimizationLine ($line, $linenum) {
 let $tokens := fn:tokenize($line, " ")
 let $name := if (fn:contains($line, "initialCost")) then "initial"
              else "thread " || ( $linenum - 1)
 let $obj := map:new() => map:with("_id", "node_" || $linenum) => map:with("_name", $name)
 let $_ := if ($linenum gt 1) then map:put($obj,"_parent", "node_" ||  1) else ()
 
 let $res :=
    for $token in $tokens 
    let $t := fn:tokenize($token, "=")
    let $tagname := 
         switch ($t[1])
         case "t" return "temperature"
         case "r" return "repeats"
         case "c" return "cool"
         default return $t[1]
        
    where fn:matches($name, "^\w")
    return  if (fn:starts-with($t[2], "(")) then qputils:parseCost($t[2], $obj) else  map:put($obj,$tagname,$t[2])
 return ($obj)
};

declare function qputils:parseCostFunctionValues ($file) {
  let $options :=
     <options xmlns="xdmp:document-get">
        <format>text</format>
      </options>
  for $line in  fn:tokenize(xdmp:document-get($file,$options), "&#xa;")
  let $tokens := fn:tokenize($line, "&#x9;")
  let $time := $tokens[1]
  let $cost := $tokens[2]
  where $time castable as xs:integer and $time != "0"
  return xs:float($cost)

};
declare function qputils:parseOptimization ($lines, $paths) {
 
 let $best := fn:subsequence($lines, fn:count($lines))
 let $best_cost := qputils:parseOptimizationLine ($best, fn:count($lines))
 for $line at $j in fn:subsequence($lines, 1, fn:count($lines) -1)
 let $obj :=  qputils:parseOptimizationLine ($line, $j)
 let $sa := $paths [ fn:ends-with(. , "_" || $j  - 2)]
 let $sa := if ($sa) then map:put($obj, "costFunctionValues", json:to-array(qputils:parseCostFunctionValues ($sa))) else ()
 let $isbest := if (map:get($best_cost, "cost") = map:get($obj, "cost")) then map:put($obj, "best", "true") else ()
 return $obj
};

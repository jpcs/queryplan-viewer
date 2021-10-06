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

module namespace t = "http://marklogic.com/optic/qputils/test";
declare default function namespace "http://marklogic.com/optic/qputils/test";
declare namespace plan="http://marklogic.com/plan";

import module namespace qputils = "http://marklogic.com/optic/qputils" at "../lib/qputils.xqy";

declare %private function zip($f, $key, $result, $line)
{
  if(empty($key) and empty($result)) then ()
  else (
    $f(head($key),head($result),$line),
    zip($f,tail($key),tail($result),$line + 1)
  )
};

declare function escape($v as xs:string)
{
  fn:replace($v,'"','\\"')
};

declare function sortAndQuote($v)
{
  string-join(
    typeswitch($v)
    case map:map return (
      "{",
      string-join(
        for $k in map:keys($v)
        order by $k
        return (
          '"' || $k || '":' || sortAndQuote(map:get($v,$k))
        ),
        ', '
      ),
      "}"
    )
    case json:array return (
      "[",
      string-join(
        for $k in json:array-values($v)
        return (
          sortAndQuote($k)
        ),
        ', '
      ),
      "]"
    )
    case xs:string | xs:untypedAtomic | xs:integer return (
      '"', escape($v), '"'
    )
    default return (
      if(tail($v)) then (
        "[",
        string-join(
          for $k in $v
          return (
            sortAndQuote($k)
          ),
          ', '
        ),
        "]"
      )
      else (
        xdmp:log(xdmp:type($v) || ": " || xdmp:quote($v)),
        '"', escape(xdmp:quote($v)), '"'
      )
    )
  )
};

declare function test($t)
{
  let $name := map:get($t,"name")
  let $plan := map:get($t,"plan")
  let $key := map:get($t,"expected")
  let $key := $key ! sortAndQuote(xdmp:from-json-string(.))

  let $result := qputils:makeGraph($plan, "N") ! sortAndQuote(.)
  return (
    zip(function($k,$r,$l) {
      if(empty($k)) then (
        $name || ":" || $l || ": + " || $r
      )
      else if(empty($r)) then (
        $name || ":" || $l || ": - " || $k
      )
      else if($k ne $r) then (
        $name || ":" || $l || ": - " || $k,
        $name || ":" || $l || ": + " || $r
      )
      else ()
    }, $key, $result, 1)
  )
};

declare function makeExpected($t)
{
  let $name := map:get($t,"name")
  let $plan := map:get($t,"plan")

  let $result := qputils:makeGraph($plan, "N") ! sortAndQuote(.)
  return (
    'map:entry("name","' || $name || '")',
    '=>map:with("plan",',
    tokenize(xdmp:quote($plan,map:entry("indent","yes")=>map:with("indentUntyped","yes")),"&#10;"),
    ')',
    '=>map:with("expected",(',
    string-join($result ! ("'" || . || "'"),",&#10;"),
    ')),'
  )
};

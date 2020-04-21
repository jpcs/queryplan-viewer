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

declare function test($t)
{
  let $name := map:get($t,"name")
  let $plan := map:get($t,"plan")
  let $key := map:get($t,"expected")

  let $result := qputils:makeGraph($plan, "N") ! xdmp:quote(.)
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

  let $result := qputils:makeGraph($plan, "N") ! xdmp:quote(.)
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

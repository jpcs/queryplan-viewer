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

import module namespace t = "http://marklogic.com/optic/qputils/test" at "tests/test.xqy";
import module namespace qputils = "http://marklogic.com/optic/qputils" at "lib/qputils.xqy";

(: Tests :)
import module "http://marklogic.com/optic/qputils/baseball" at "tests/baseball.xqy";
import module "http://marklogic.com/optic/qputils/bugs" at "tests/bugs.xqy";
import module "http://marklogic.com/optic/qputils/costs" at "tests/costs.xqy";
import module "http://marklogic.com/optic/qputils/exprs" at "tests/exprs.xqy";
import module "http://marklogic.com/optic/qputils/lexicon" at "tests/lexicon.xqy";
import module "http://marklogic.com/optic/qputils/v9" at "tests/v9.xqy";
import module "http://marklogic.com/optic/qputils/v9" at "tests/color.xqy";

let $tests :=
  for $t in xdmp:functions()[xdmp:annotation(.,xs:QName("qputils:test"))] ! .()
  order by map:get($t,"name")
  return $t
let $testRuns :=
  for $t in $tests
  (: where contains(map:get($t,"name"),"lexicon") :)
  return (
    let $result := t:test($t)
    return (
      $result,
      if(exists($result)) then t:makeExpected($t) else (),
      ()
    )
  )
return (
  xdmp:set-response-content-type("text/html"),
  <html>
    <head>
      <title>Query Plan Viewer Tests</title>
    </head>
    <body>
      <h1>{ if(empty($testRuns)) then "Success" else "Failures" }</h1>
      <pre>
      {
        for $l in $testRuns
        return ($l,<br/>)
      }
      </pre>
      <h2>Tests Run: { count($tests) }</h2>
      <p>
      { $tests ! (map:get(.,"name"),<br/>) }
      </p>
    </body>
  </html>
)

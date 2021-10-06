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

import module namespace qputils = "http://marklogic.com/optic/qputils" at "lib/qputils.xqy";


declare function local:makeHTML($out)
{
  <html>
  <head>
    <script type="text/javascript" src="ui/lib/d3.v6.min.js"><!-- --></script>
    <script type="text/javascript" src="ui/lib/d3-flextree.v2.min.js"><!-- --></script>
    <script type="text/javascript" src="ui/qv.js"><!-- --></script>
    <link rel="stylesheet" href="ui/css/style.css"><!-- --></link>
    <script>
      input = { xdmp:quote(json:to-array($out)), xdmp:log(json:to-array($out)) }
    </script>
  </head>
  <body onload="qv_showPlan('#viewer',  input);">
    <div id="wrapper" class="full-height">
      <div id="viewer"> 
        <!-- -->
      </div>
    </div>
    </body>
  </html>
};
                                        


let $file := xdmp:get-request-field("filename")
let $plan := xdmp:get-request-field("plan")

let $in :=  if ($file) then xdmp:document-get($file)/*
            else if ($plan) then xdmp:unquote (xdmp:get-request-field("plan"))/*
            else fn:error(xs:QName("XDMP-ARG"), "Missing argument: filename or plan required")

return (
  xdmp:set-response-content-type("text/html"),
  let $out := qputils:makeGraph($in, "N")
  return local:makeHTML($out) 
)

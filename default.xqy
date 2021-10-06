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

xdmp:set-response-content-type("text/html"),
<html>
<body>

<h1>MarkLogic Query Plan Viewer</h1>

<form action="show.xqy" id="form" method="POST">
  <textarea rows="20" cols="100" name="plan">Paste plan here...</textarea>
  <input type="submit"/>
</form>
<br> </br>
<a href="log.html">Parse plans from a MarkLogic log file</a>
<br> </br>
<a href="samples.xqy">Sample query plans</a>

</body>
</html>

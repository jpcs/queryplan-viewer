import module namespace qputils = "http://marklogic.com/optic/qputils" at "../lib/qputils.xqy";

xdmp:set-response-content-type("application/json"),
let $file := xdmp:get-request-field("file")
let $id := xdmp:get-request-field("id")
let $type := xdmp:get-request-field("type", "estimate")


let $id := "sessionKey=" || $id || " "

let $regex := switch ($type)
              case "estimate" return  ("Event:id=Optic Plan Trace" || ".*" || $id || "plan=")
              case "execution" return ("Event:id=Optic Execution Diagnostics Trace" || ".*" || $id )
              case "optimization"  return ("Optic Optimization Trace"|| ".*" || $id )
              default return fn:error("QV-ARG", "Invalid type")


let $res := xdmp:logfile-scan($file, $regex)
let $res := if ($type = ("optimization"))
            then qputils:parseOptimization ($res ! fn:substring-after(., $id))
            else qputils:makeGraph(xdmp:unquote(fn:substring-after($res, "&#xa;"))/*,"N")  
  
  
return  json:to-array($res)
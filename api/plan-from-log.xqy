import module namespace qputils = "http://marklogic.com/optic/qputils" at "../lib/qputils.xqy";

xdmp:set-response-content-type("application/json"),
let $file := xdmp:get-request-field("file")
let $id := xdmp:get-request-field("id")
let $type := xdmp:get-request-field("type", "estimate")


let $id := "sessionKey=" || $id || " "

let $regex := switch ($type)
              case "estimate" return  ("(Optic Plan|SPARQL AST)" || ".*" || $id || "plan=")
              case "execution" return ("Optic Execution Diagnostics" || ".*" || $id )
              case "optimization"  return ("(Optic Optimization Trace|SPARQL Cost Analysis)"|| ".*" || $id )
              default return fn:error("QV-ARG", "Invalid type")

let $res := xdmp:logfile-scan($file, $regex)
let $res := $res ! fn:substring-after(., "&#xa;")
let $res := if ($type = ("optimization"))
            then qputils:parseOptimization($res, 
                                        xdmp:logfile-scan($file, ("Optic Optimization Path" || ".*" || $id )) ! 
                                        fn:substring-after(. , "costPath="))
            else qputils:makeGraph(xdmp:unquote($res[1])/*,"N")
  
return  json:to-array($res)
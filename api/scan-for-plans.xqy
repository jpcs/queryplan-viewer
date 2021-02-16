
xdmp:set-response-content-type("application/json"),

array-node {
    let $file := xdmp:get-request-field("file")
    let $trace := xdmp:get-request-field("trace")
    let $regex := xdmp:get-request-field("regex", "( plan=| diagnostic_plan=)")
    let $regex := 
        if ($trace) 
        then ("trace=" || $trace || ".*" || $regex  ) 
        else $regex
    let $start := xdmp:get-request-field("start")
    let $start := 
        if ($start) 
        then xs:dateTime (fn:substring(xdmp:logfile-scan($file, (), (), (), (), 1),1,10) ||  "T" || $start) 
        else ()
    let $end := ()
    let $limit := 20
    for $e in xdmp:logfile-scan($file, $regex, "s", $start, $end, $limit)
    let $type := if (fn:contains($e, "diagnostic_plan")) then "execution" else "estimate"
    let $trace := 
        if (fn:contains($e, "trace=")) 
        then fn:substring-before(fn:substring-after($e, " trace="), " sessionKey=")
        else ""
    let $key := 
        if ($type eq "estimate") 
        then fn:substring-before(fn:substring-after($e, " sessionKey="), " plan=")
        else fn:substring-before(fn:substring-after($e, " sessionKey="), " diagnostic_plan=")
    let $time := fn:substring($e, 1, 23)       
    return 
        object-node { "time" : $time, "key" : $key,  "trace": $trace }
    
}



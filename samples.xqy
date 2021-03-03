xdmp:set-response-content-type("text/html"),

let $dir := xdmp:modules-root() || "samples/"
return
element html {
      element body {
           element h2 { "Samples" },
           for $group in xdmp:filesystem-directory ($dir)/dir:entry
           let $entries := xdmp:filesystem-directory($group/dir:pathname)/dir:entry[fn:ends-with(./dir:filename, ".xml")]
           return
           (
             element h3 { $group/dir:filename},
             element table {
                 attribute id {"box-table-a"},
                 for $entry in $entries
                 order by $entry/dir:filename
                 return
                    element tr {
                        element td {
                           element a { attribute href {"show.xqy?filename=" || $entry/dir:pathname} ,
                                        $entry/dir:filename/fn:string(.)
                           }
                        }
                    }
             }
           )
      }
 }


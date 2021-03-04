declare function local:recursiveFindFile($path as xs:string, $fileExtension as xs:string)
{
  let $listing := try { xdmp:filesystem-directory($path)/dir:entry } catch($e) { () }
  return (
    map:entry($path,$listing[dir:type="file"][fn:ends-with(dir:filename, "." || $fileExtension)]),
    $listing[dir:type="directory"] ! local:recursiveFindFile(dir:pathname,$fileExtension)
  )
};

xdmp:set-response-content-type("text/html"),

let $thisfile := try { fn:error() } catch($e) { $e/error:stack/error:frame[1]/error:uri/fn:string(.) }
let $dir := xdmp:modules-root() || substring-after(substring-before($thisfile,".xqy"),"/")
return
element html {
  element body {
    element h2 { "Samples" },
    for $map in local:recursiveFindFile($dir,"xml")
    for $dir in map:keys($map)
    let $entries := map:get($map,$dir)
    where $entries
    return (
      element h3 { $dir },
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

var qv_box = {
    debug: window.location.hostname === "localhost",
    width: 160,
    hpadding: 50,
    vpadding: 10,
    height: 100,
    lineHeight: 10,
    font: ".40em",
    titleFont: ".60em"
}

var qv_palettes = {
    resource : d3.scaleSequential([0, 1], d3.interpolateReds),
    serial : d3.scaleSequential([0, 1], d3.interpolateReds),
    parallel : d3.scaleSequential([0, 1], d3.interpolateBlues),
    count : d3.scaleSequential([0, 1], d3.interpolateReds),
    magnitude: d3.scaleSequential([0, 10], d3.interpolateGreens)
}

var qv_colors = {
    selected: "orange",
    default: "steelblue"
}

// Displayed in the node box with cardinality info
var qv_cardInfo = [
    "subject","predicate","object","graph","value","fragment","row"
];

// Displayed in the node box
var qv_boxInfo = [
    "column","condition","expr","order-spec","aggregate","join-filter","content",
    "cross-product", "default-graph","named-graph","varIn","varOut","num-sorted",
    "limit","offset", "percent", "temperature"
];

// Displayed along with the title
var qv_titleInfo = [
    "permutation", "type"
];

// Displayed in the cost banner
var qv_costInfo = [
    "cost","mem-cost","dmem-cost","io-cost","cpu-cost","dcpu-cost","nw-cost","estimated-count"
];

// Displayed in the execution banner
var qv_executionInfo = [
    "count","local-time","remote-time","local-max-memory","remote-max-memory"
];

// Tooltip row order
var qv_tooltipPriority = [
    "id","type","name","schema","view","column-index",
    "op","permutation","descending","dedup",
    "left","right",
    "aggregate",
    "order","num-sorted",
    "ltime","rtime","lmem","rmem",
    "cost","mem","dmem","cpu","dcpu","nw","io","count"
];

// Labels for tabs in log scanner

var qv_logTabs = {
   "optimization" : "Optimization",
    "estimate" : "Final Plan",
    "execution": "Execution"
};

var qv_logButtons = {
   "default" : "w3-bar-item w3-button  w3-small w3-theme-d1",
   "active"  : "w3-bar-item w3-button w3-small w3-theme-action"
};



function qv_debug(msg) {
    if (qv_box.debug) {
        console.log(msg)
    }
}

function qv_displayMessage (message) {
    const element = d3.select("#message")
    element.text(message).attr("class","w3-bar-item w3-small w3-right-align w3-theme-l1").on("mouseover",null)
}

function qv_displayError (message, details) {
    const element = d3.select("#message")
    qv_tooltipEvents(element, details,false)
    element.text("ERROR: " + message).attr("class","w3-bar-item w3-small w3-right-align w3-orange")
}

function qv_displayTabs (containerid, viewerid, file, data) {
    var bar = d3.select(containerid)
    bar.selectAll("a").remove()
    
    const types = Object.keys(qv_logTabs);
    types.forEach ( 
        type => {    
            var a = bar.append("a")
            if (type === "execution") {
                a.attr("class", qv_logButtons.active)
            } else {   
                a.attr("class", qv_logButtons.default)
            } 
            a.attr("href","#")
               .text(qv_logTabs[type])
               .on("click",(event) => {  
                  bar.selectAll('a[class = "' + qv_logButtons.active + '"').attr("class", qv_logButtons.default)
                  d3.select(event.target).attr("class", qv_logButtons.active)
                  qv_loadFromLog(viewerid, file, data.key, type) 
            })
        })   
    var message =  "Displaying Plan: " 
    if (data.trace) {message += data.trace} else {message += data.key}
    qv_displayMessage(message)    
}


function qv_visualizeTicks(scale, tickArguments, box) {
    const width = box.width;
    const height = box.height, 
    m = 10;
    if (tickArguments === undefined) tickArguments = [];
    scale.range([m, height - m]);
    const svg = d3.create("svg")
      .attr("width", width)
      .attr("height", height);
    svg.append("g")
        .attr("transform", "translate(" + 60 + ",0)")  
        .call(d3.axisLeft(scale).ticks(...tickArguments))
        .select(".domain").remove()
    return svg
  }

function qv_jitter (range, unit) {
    return Math.floor((Math.random() * (range / unit)) * unit)
}

function qv_displayPlansAsTimeline (containerid, viewerid, file, data) {
    d3.select(containerid).select("svg").remove()
    times = d3.group(data, d => Date.parse(d.time))
    var extent = d3.extent(times.keys())
    extent[0]=extent[0]-(1000 * 30)
    extent[1]=extent[1]+(1000 * 30)
    dst = d3
        .scaleTime()
        .domain(extent)
    
    const container = d3.select(containerid)
    const box = container.node().getBoundingClientRect()
    
    box.height = d3.select("#plans").node().parentNode.getBoundingClientRect().height 
                - d3.select("#form").node().getBoundingClientRect().height 
                - 30
    const jitter = (box.height / 10) 
    const svg = qv_visualizeTicks(dst, [10, d3.timeFormat("%H:%M:%S")],box);
   
    svg
        .selectAll("circle")
        .data(data)
        .enter()
        .append("circle")
              .attr("r", function (d) { return 3})
              .attr("fill", qv_colors.default)
              .attr("cy", function (d) {  return dst(Date.parse(d.time ) + qv_jitter(3000, 500))})
              .attr("cx", function (d) {  return 70 + qv_jitter (box.width - 100 , 5 )})
              .on("click",function (event, d) { 
                  
                  svg.selectAll('circle[fill = "' + qv_colors.selected+ '"]').attr("fill", qv_colors.default)
                  d3.select(event.target).attr("fill", qv_colors.selected)
                
                  qv_displayTabs("#tabs", viewerid, file, d)
                  qv_loadFromLog(viewerid, file, d.key, "execution") 
               }
              ).each( function (d) {qv_tooltipEvents (d3.select(this),d)})
    container.append((d) => { return svg.node()})          
    
}

function qv_scanLogForPlans  (containerid, fileid, startid, traceid,viewerid) {
    
    var file=d3.select(fileid).node().value
    var start= ""
    var trace=""
    if (d3.select(startid).node().value) { start = "&start=" + d3.select(startid).node().value.replace(" ","T") }
    if (d3.select(traceid).node().value) { trace = "&trace=" + d3.select(traceid).node().value }
    d3.select(containerid).select("table").remove()
    qv_debug(file + start +trace)
    const url = 'api/scan-for-plans.xqy?file=' +file + start +trace;
    fetch(url).then(response => {
        if (!response.ok) {
          response.json().then(data => {
            console.log(data)
            qv_displayError(response.statusText, data.errorResponse);
            })
          
          return null;
        } 
        return response.json();
      }).then(data => {
          if (data) {
            qv_displayMessage("Retrieved plans");
            qv_displayPlansAsTimeline(containerid, viewerid, file, data)
          }
      })
   
}

function qv_loadFromLog  (viewerid,file, id, type) {
    d3.select(viewerid).select("svg").remove()
    const url = 'api/plan-from-log.xqy?file=' +file+ "&id=" +id + "&type=" +type;
    fetch(url).then(response => {
        if (!response.ok) {
            response.json().then(data => {
              console.log(data)
              qv_displayError(response.statusText, data.errorResponse);
              })
            
            return null;
          } 
          return response.json();
      }).then(data => {
        //qv_displayMessage("Retrieved plans");
        if (data) qv_showPlan(viewerid,  data);
      })

   
}

function qv_hierarchy(json) {
    var data = d3.stratify()
        .id(function (d) { return d._id; })
        .parentId(function (d) { if (d._parent) return d._parent; else return "" })
        (json);
    return d3.hierarchy(data);
}

function qv_buildTree(nodes, width, height) {
    var treemap = d3.tree().nodeSize([qv_box.width * 1.1, qv_box.height * 1.1]);
    var nnodes = nodes.copy().sort((a, b) =>  d3.ascending(a.data.data._parentLabel,b.data.data._parentLabel))
    return treemap(nnodes)
}

function qv_tooltipEvents(element, tooltip, doFilter) {
    if(tooltip) element
        .on("mouseover", function(event, d) {		
            qv_tooltipShow(event,tooltip,doFilter);
        })
        .on("mouseout", function(event, d) {	
            qv_tooltipHide(event);
        });
}

function qv_title(div, title, tooltip) {
    var para = div.append("xhtml:p")
        .attr("class", "tree-node")
        .style("color", "#202020")
        .style("padding", "4px")
        .style("text-align","center")
        .style("font-size",qv_box.titleFont)
        .style("font-weight", "bold")
        .text(title);
    qv_tooltipEvents(para,tooltip,true);
    return para;
}

function qv_row(table, title, text, tooltip, color) {
    if (Array.isArray(text)) text = text.join(", ")
    if (text.constructor === ({}).constructor) text = JSON.stringify(text,null,2)
    var row = table.append("xhtml:tr");
    var td0 = row.append("xhtml:td");
    var td1 = row.append("xhtml:th");
    var td2 = row.append("xhtml:td");
    if(Array.isArray(color)) {
        color.map( (x) => td0.append("xhtml:span").style("color",x).text("\u25A0"))
    }
    td1.text(title + (text ? ":" : ""));
    if (text) td2.append("xhtml:span").text(text)
    qv_tooltipEvents(row,tooltip,false);
    return row;
}

function qv_cost(div, percent) {
    var rect = svg.append("g")
        .selectAll("rect")
        .data(cells)
        .join("rect")
        .attr("x", d => x(d.day))
        .attr("y", d => y(d.test) + 1)
        .attr("width", x.bandwidth() - 1)
        .attr("height", y.bandwidth() - 2)
        .attr("fill", d => color(d.value))
        .style("stroke", d => color(0.5))
        .style("stroke-width", "0.5")
}

function qv_proportion(value, max) {
    if(typeof max === "object") {
        var result = {};
        Object.keys(max).forEach((k) => {
            result[k] = qv_proportion(value[k],max[k]);
        });
        return result;
    }
    if (max == 0) return 0
    return value/max
}

function qv_max(a,b) {
    if(!a) return b;
    if(!b) return a;
    if(typeof a === "object") {
        var result = {};
        Object.keys(a).forEach((k) => {
            result[k] = qv_max(a[k],b[k]);
        });
        return result;
    }
    return Math.max(a,b);
}

function qv_parseMemory(str) {
    var r = parseFloat(str)
    if (str.endsWith("Gb")) return r * (1024^3)
    if (str.endsWith("Mb")) return r * (1024^2)
    if (str.endsWith("Kb")) return r * (1024)
    return r;
}
function qv_parseTime(str) {
    var r = parseFloat(str)
    if (str.endsWith("ms")) return r 
    return r * 1000;
}

// compute maximum of all the metrics across the plan
function qv_fetchCost(data) {
    var fetchParallelSerial = (value) => {
        if(!value) return {parallel:0,serial:0};

        var components= value.split("/").map(x=>parseFloat(x));
        var parallel = components[0] + components[1] + components[2];
        var serial = components[3] + components[4];
        return {parallel:parallel,serial:serial};
    };

    var result = null;
    
    if (data.cost) result = {
        // id: data._id,
        cost:  parseFloat(data.cost),
        mem:   parseFloat(data["mem-cost"]),
        dmem:  parseFloat(data["dmem-cost"]),
        io:    fetchParallelSerial(data["io-cost"]),
        cpu:   fetchParallelSerial(data["cpu-cost"]),
        dcpu:  fetchParallelSerial(data["dcpu-cost"]),
        nw:    fetchParallelSerial(data["nw-cost"]),
        count: parseFloat(data["estimated-count"])
    };
    else if (data["local-time"]) result = {
        // id: data._id,
        count: parseFloat(data.count),
        ltime: qv_parseTime(data["local-time"]),
        rtime: qv_parseTime(data["remote-time"]),
        lmem:  qv_parseMemory(data["local-max-memory"]),
        rmem:  qv_parseMemory(data["remote-max-memory"])
    };
    return result;
}

function qv_displayCostBox (parent , rect, palette, value, prefix="") {
    var r = 2;
    parent.append("rect")
    .attr("x", rect.x)
    .attr("y", rect.y)
    .attr("rx",r)
    .attr("fill", palette(value))
    .style("stroke", palette(0.5))
    .style("stroke-width", "0.5")
    .attr("width", rect.width - 1)
    .attr("height", qv_box.lineHeight).append("title").text(prefix + Math.round(value*100) +"%")
}

function qv_displayCost(metrics, cost, maxcost) {
    var parent = d3.create("svg:g").attr("width", qv_box.width )
    var i = 0;
    var padding = 4
    var width = (qv_box.width -(padding*2)) / metrics.length;
    metrics.forEach (
        v => {
            value = qv_proportion(cost[v],maxcost[v])
            x= i * width + padding
            tx= i * width + padding + width/2
            rx= i * width + padding
            ty= qv_box.lineHeight * 3/4 
            ry= qv_box.lineHeight
            i++;
            parent.append("text")
                .style("font-size", qv_box.font)
                .attr("text-anchor",  "middle")
                .attr("x", tx )
                .attr("y", ty)
                .attr("width", width  )
                .attr("height", qv_box.lineHeight).text (v)
            if (v === "count")    {
                qv_displayCostBox(parent, {x:rx, y:ry, width:width}, qv_palettes.count, value)
            }
            else if (typeof value === "number") {      
                qv_displayCostBox(parent, {x:rx, y:ry, width:width}, qv_palettes.resource,value) 
            } else  {
                qv_displayCostBox(parent, {x:rx, y:ry, width:width/2}, qv_palettes.parallel,value.parallel, "parallel: ") 
                qv_displayCostBox(parent, {x:tx, y:ry, width:width/2}, qv_palettes.serial,value.serial,"serial: ") 
            }
        }
    )
    qv_tooltipEvents(parent,cost,false);
    return parent.node()
}

function qv_parseCardinalities(cardinalities) {
    if (cardinalities) {
        if (cardinalities.startsWith("(")) {
            var l=cardinalities.length;
            return cardinalities.substring(1,l-1).replaceAll("\),\(",";").split(";").map(x=>x.split(","))
        } else return cardinalities.split(",").map((x) => [x,x])
    } else return []
}   

function qv_tripleInfo(table, type, value, cardinalities) {
    value = qv_decode(value)
    var v= parseInt(value.split(' ')[0])
    if (v >= 0) {
        var colors = null;
        var tooltip = value;
        if (cardinalities[v]) {
            colors = cardinalities[v].map( (x) =>  qv_palettes.magnitude(Math.round(Math.log10(parseFloat(x)))));
            tooltip = { value : value, cardinality: cardinalities[v].join(",") };
        }
        return qv_row(table,type,value,tooltip,colors);
    }     
    else return qv_row(table, type, value, value)
}

function qv_decode(str) {
    const res =  
    str.replace(
      /\n|\t|&amp;|&lt;|&gt;|&#39;|&quot;/g,
      tag =>
        ({
          '\n': ' ',
          '\s': ' ',
          '&amp;': '&',
          '&lt;': '<',
          '&gt;': '>',
          '&#39;': "'",
          '&quot;': '"'
        }[tag] || tag)
    )
    return res.replace(/\s\s+/g,' ');
}

function qv_node(node) {
    var data = node.data.data
    var div = d3.create("div")
    var name = data._name
    qv_titleInfo.filter((key) => data.hasOwnProperty(key))
      .forEach((key) => {name += " (" + data[key] + ")"});
     qv_title(div, name, data)
        .on("click", (event) => {   
        if (node.children)  {
            var visibility = "visible"
            if (qv_isVisible(node.children[0])) visibility="hidden"
            var descendants = node.children.map( x => x.descendants())
             qv_toggle(descendants.flat(), visibility);
        }
      }) 
    
    var table = div.append("xhtml:table")
        .attr("class", "tree-node")
        .style("border","0px")
        .style("font-size", qv_box.font);

    var cardinalities = qv_parseCardinalities(data.cardinalities)
   
    qv_cardInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => qv_tripleInfo(table,key,data[key],cardinalities));
    qv_boxInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) =>  qv_row(table,key,data[key],data[key]));
    return div.node()
}

function qv_nodeHeight(data) {
    var linesize = qv_box.lineHeight;
    var size = linesize * 3;
    qv_cardInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => { size += linesize });
    qv_boxInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => { size += linesize });
    if(qv_costInfo.some((v) => data.hasOwnProperty(v)))
        size = size + 2 * linesize
    if(qv_executionInfo.some((v) => data.hasOwnProperty(v)))
        size = size + 2 * linesize
    return size
}

function qv_tooltipTableRow(table, key, value) {
    if(Array.isArray(value)) {
        value.forEach((v) => qv_tooltipTableRow(table,key,v));
    }
    else if(typeof(value)==="object") {
        var tr = table.append("tr");
        if(key!==null) tr.append("th").text(key);
        var table2 = tr.append("td").append("table");
        Object.keys(value).forEach((key) => qv_tooltipTableRow(table2,key,value[key]));
    }
    else {
        var tr = table.append("tr");
        if(key!==null) tr.append("th").text(key);
        if(typeof(value)==="string") value = qv_decode(value);
        tr.append("td").text(value);
    }
}

function qv_tooltipContents(parent, data, doFilter) {
    var empty = true;

    if(!Array.isArray(data) && typeof(data)==="object") {
        var seen = {};
        if(doFilter) {
            Object.keys(data).filter((key) => key.charAt(0)=='_')
                .forEach((key) => { seen[key] = true });
            qv_cardInfo.forEach((key) => { seen[key] = true });
            qv_boxInfo.forEach((key) => { seen[key] = true });
            qv_costInfo.forEach((key) => { seen[key] = true });
            qv_executionInfo.forEach((key) => { seen[key] = true });
        }

        var seenFilter = (key) => {
            if(seen[key]) return false;
            seen[key] = true;
            return data.hasOwnProperty(key);
        };

        var table = parent.append("table");
        var display = (key) => {
            qv_tooltipTableRow(table,key,data[key]);
            empty = false;
        }

        qv_tooltipPriority.filter(seenFilter).forEach(display);
        Object.keys(data).filter(seenFilter).forEach(display);
    }
    else if(data && (!Array.isArray(data) || data.length !== 0)) {
        qv_tooltipTableRow(parent.append("table"),null,data);
        empty = false;
    }
    return !empty;
}

function qv_tooltipShow(event, data, doFilter) {

    var boundaries = d3.select("body").node().getBoundingClientRect()

    var x = Math.min (event.pageX + 28, boundaries.right-100)
    var y = Math.min (event.pageY - 28, boundaries.bottom-50)
    
    var tooltip = d3.select("#tooltip")
        .style("left", x + "px")
        .style("top", y + "px");
    tooltip.html("");
    if(qv_tooltipContents(tooltip,data,doFilter))
        tooltip.transition().duration(200).style("opacity", .9);
}

function qv_tooltipHide(event) {
    var tooltip = d3.select("#tooltip");
    tooltip.transition()
        .duration(500)		
        .style("opacity", 0);
}

function qv_isVisible(node) {
    var id=node.data.id
    var p = d3.select("#node_" + id)

    return (p.attr("visibility") === "visible")
}

function qv_toggle(nodes, visibility) {
    nodes.forEach((d, i) => {
        id=d.data.id
        d3.select("#link_" + id).attr("visibility", visibility)
        d3.select("#node_" + id).attr("visibility", visibility)
        d3.select("#label_" + id).attr("visibility", visibility)        
    })
}

function qv_showPlan(containerid, json) {
    qv_debug(json)
    var container = d3.select(containerid);
    var margin = { top: 20, right: 0, bottom: 0, left: 0 }
    var nodes = qv_hierarchy(json)

    const box = container.node().getBoundingClientRect()
    var width = box.width
    var height = box.height - 40

    nodes = qv_buildTree(nodes,width,height)
    qv_debug(nodes);
    var svg = container.append("svg")
         .attr("width", width + margin.left + margin.right)
         .attr("height", height + margin.top + margin.bottom)

    // set up transform and zoom
    var g = svg.append("g")
    var zoom = d3.zoom()
        .scaleExtent([0.1, 10])
        .on('zoom', function (event) {
        g.attr('transform', event.transform);
        });
    // Initial position and scale: center root, 80% zoom.
    svg.call(zoom.transform, d3.zoomIdentity.translate(width/2, 50).scale(.80))
   
    svg.call(zoom);

    //links
    qv_debug(nodes.links())

    // A group for each link
    var links = g
        .selectAll("path")
        .data(nodes.links())
        .join("g")
        .style("color", "red");

    // Add the link path
    links.append("path")
        .attr("class", "link")
        .attr("id", function (d) { return "link_" +d.target.data.id })
        .attr("visibility", "visible")
        .attr("d", d3.linkVertical()
              .x(d => d.x + qv_box.width / 2)
              .y(d => d.y + qv_box.lineHeight * 3 ));

    // Add the link label, using (non-moving) animation to place it 60% along the path
    links.append("text")
        .attr("class", "link-label")
        .attr("id", function (d) { return "label_" +d.target.data.id })
        .text(function(d) { return d.target.data.data["_parentLabel"] })
        .attr("transform",function(d) {
            var bbox = this.getBBox();
            var transform = "";
            if(d.target.x < d.source.x) {
                // Turn upside down labels the right way up
                transform +=
                    "translate(" + (bbox.width/2) + "," + (0) + ") "
                    + "rotate(180) "
                    + "translate(" + (-bbox.width/2) + "," + (0) + ") ";
            }
            // Leave a bit of space between the label and the path
            transform += "translate(" + (0) + "," + (-3) + ") "
            return transform;
        })    
        .append("animateMotion")
        .attr("calcMode","linear")
        .attr("rotate","auto")
        .attr("keyPoints","0.6;0.6")
        .attr("keyTimes","0.0;1.0")
        .append("mpath")
        .attr("href", function(d) { return "#link_" +d.target.data.id; });
    
    // container for node
    var node = g.selectAll(".node")
        .data(nodes.descendants())
        .enter().append("g")
        .attr("id", function (d) {  return "node_" + d.data.id })
        .attr("visibility", "visible")
        .attr("class", function (d) {
            return "node" +
                (d.children ? " node--internal" : " node--leaf");
        })
        .attr("transform", function (d) {
            return "translate(" + (d.x) + "," + d.y + ")";
        });

    // rectangle around node
    node.append("rect")
        .attr("y", 0)
        .attr("rx",5)
        .attr("fill", "white")
        .attr("width", qv_box.width)
        .attr("height", function (d) { 
            var h = qv_nodeHeight(d.data.data) 
            return  h})
       
    // add cost banner
    var maxcost = null;
    nodes.descendants().forEach(element => {
        maxcost = qv_max(qv_fetchCost(element.data.data),maxcost);
    });
    qv_debug(maxcost);

    node.filter((d) => qv_costInfo.some((v) => d.data.data[v])).append((d) => {
        var cost = qv_fetchCost(d.data.data);
        return qv_displayCost(["cost","mem","dmem","cpu","dcpu","nw","io","count"],cost,maxcost);
    });
    node.filter((d) => qv_executionInfo.some((v) => d.data.data[v])).append((d) => {
        var cost = qv_fetchCost(d.data.data);
        qv_debug(cost);
        return qv_displayCost(["ltime","rtime","lmem","rmem","count"],cost,maxcost);
    });
  
    // add text box
    var fo = node.append("foreignObject")
        .attr("y", (d) => {
            var result = 0;
            if(qv_costInfo.some((v) => d.data.data.hasOwnProperty(v)))
                result += qv_box.lineHeight * 2;
            if(qv_executionInfo.some((v) => d.data.data.hasOwnProperty(v)))
                result += qv_box.lineHeight * 2;
            return result;
        })
        .attr("height", function (d) { return qv_nodeHeight(d.data.data) })
        .attr("width", qv_box.width)
    fo.append((d) => {
        return qv_node(d, maxcost);
    })
}

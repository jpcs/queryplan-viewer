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

// var qv_boxInfo = ["condition","column","row","expr","iri","nullable","order-spec","aggregate","left-graph-node","join-filter","left"];

var qv_cardInfo = [ "subject","predicate","object","graph","value","fragment","row" ] ;

var qv_boxInfo = [ "column","condition","expr","order-spec","aggregate","join-filter", "content","cross-product", "default-graph","named-graph","varIn","varOut"];

function qv_debug(msg) {
    if (qv_box.debug) {
        console.log(msg)
    }
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

function qv_tooltipEvents(element, tooltip) {
    if(tooltip) element
        .on("mouseover", function(event, d) {		
            qv_tooltipShow(event,tooltip);
        })
        .on("mouseout", function(event, d) {	
            qv_tooltipHide(event);
        });
}

function qv_title(div, title, tooltip) {
    var span = div.append("xhtml:p")
        .attr("class", "tree-node")
        .style("color", "#202020")
        .style("padding", "4px")
        .style("text-align","center")
        .style("font-size",qv_box.titleFont)
        .style("font-weight", "bold")
        .text(title);
    qv_tooltipEvents(span,tooltip);
    return span;
}

function qv_row(table, title, text, tooltip, color) {
    if (Array.isArray(text)) text = text.join(", ")
    if (text.constructor === ({}).constructor) text = JSON.stringify(text,null,2)
    var row = table.append("xhtml:tr");
    var td0 = row.append("xhtml:td");
    var td1 = row.append("xhtml:td");
    var td2 = row.append("xhtml:td");
    if(Array.isArray(color)) {
        color.map( (x) => td0.append("xhtml:span").style("color",x).text("\u25A0"))
    }
    td1.append("xhtml:span").style("font-weight", "bold").text(title + (text ? ":" : ""));
    if (text) td2.append("xhtml:span").text(text)
    qv_tooltipEvents(row,tooltip);
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

// splits parallel and serial cost, and returns values as proportion of a given whole.

function qv_parallelVsSerial (value, whole) {
    if (value) {
        var components= value.split("/").map(x=>parseFloat(x))
        var parallel = (components[0] + components[1] + components[2]) /whole.parallel
        var serial = (components[3] + components[4]) / whole.serial
        return {parallel:parallel,serial:serial}
    } else {
        return {parallel:0,serial:0}
    }   
}

function qv_maxParallelVsSerial (value, max) {
    value = qv_parallelVsSerial(value, {parallel:1,serial:1})
    maxp = Math.max (value.parallel, max.parallel)
    maxs = Math.max (value.serial, max.serial)
    return {parallel:maxp,serial:maxs}
}

function qv_proportion (value, max) {
    if (max == 0) return 0
    return value/max
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

function qv_maxCost (nodes) {
    var maxcost = {
        label : "maxcost",
        cost: 0,
        mem: 0,
        dmem: 0,
        io: {parallel:0,serial:0},
        cpu: {parallel:0,serial:0},
        dcpu: {parallel:0,serial:0},
        nw: {parallel:0,serial:0},
        count: 0,
        ltime: 0,
        rtime: 0,
        lmem:0,
        rmem:0
    }

    nodes.descendants().forEach(element => {
        var data = element.data.data
        if (data.cost) {
            maxcost.cost = Math.max(parseFloat(data.cost),maxcost.cost)
            maxcost.mem = Math.max(parseFloat(data["mem-cost"]), maxcost.mem)
            maxcost.dmem = Math.max(parseFloat(data["dmem-cost"]), maxcost.dmem)
            maxcost.count = Math.max(parseFloat(data["estimated-count"]), maxcost.count)
            maxcost.io = qv_maxParallelVsSerial(data["io-cost"], maxcost.io)
            maxcost.cpu = qv_maxParallelVsSerial(data["cpu-cost"], maxcost.cpu)
            maxcost.dcpu = qv_maxParallelVsSerial(data["dcpu-cost"], maxcost.dcpu)
            maxcost.nw = qv_maxParallelVsSerial(data["nw-cost"], maxcost.nw)
        } else if (data["local-time"]) {
            maxcost.count = Math.max(parseFloat(data.count),maxcost.count)
            maxcost.lmem = Math.max(qv_parseMemory(data["local-max-memory"]), maxcost.lmem)
            maxcost.rmem = Math.max(qv_parseMemory(data["remote-max-memory"]), maxcost.rmem)
            maxcost.ltime = Math.max(qv_parseTime(data["local-time"]), maxcost.ltime)
            maxcost.rtime = Math.max(qv_parseTime(data["remote-time"]), maxcost.rtime)
        }
    })
    return maxcost
}



function qv_relativeCost( data, maxcost) {
    if (data.cost) {
      return {
        id: data._id,
        cost: qv_proportion(parseFloat(data.cost) , maxcost.cost),
        mem: qv_proportion(parseFloat(data["mem-cost"]) , maxcost.mem),
        dmem: qv_proportion(parseFloat(data["dmem-cost"]) , maxcost.dmem),
        io: qv_parallelVsSerial(data["io-cost"],maxcost.io),
        cpu: qv_parallelVsSerial(data["cpu-cost"],maxcost.cpu),
        dcpu: qv_parallelVsSerial(data["dcpu-cost"],maxcost.dcpu),
        nw: qv_parallelVsSerial(data["nw-cost"],maxcost.nw),
        count: qv_proportion(parseFloat(data["estimated-count"]) , maxcost.count)
      }
    }   else if (data["local-time"]) {
        return {
        id: data._id,
        count: qv_proportion(parseFloat(data.count) , maxcost.count),
        ltime: qv_proportion(qv_parseTime(data["local-time"]) , maxcost.ltime),
        rtime: qv_proportion(qv_parseTime(data["remote-time"]) , maxcost.rtime),
        lmem:  qv_proportion(qv_parseMemory(data["local-max-memory"]) , maxcost.lmem),
        rmem:  qv_proportion(qv_parseMemory(data["remote-max-memory"]) , maxcost.rmem)
        }
    }
  
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

function qv_displayCost(metrics, cost) {
    var parent = d3.create("svg:g").attr("width", qv_box.width )
    var i = 0;
    var padding = 4
    var width = (qv_box.width -(padding*2)) / metrics.length;
    metrics.forEach (
        v => {
            value = cost[v]
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
    return parent.node()
}

function qv_parse_cardinalities(cardinalities) {
    if (cardinalities) {
        if (cardinalities.startsWith("(")) {
            var l=cardinalities.length;
            return cardinalities.substring(1,l-1).replaceAll("\),\(",";").split(";").map(x=>x.split(","))
        } else return cardinalities.split(",").map((x) => [x,x])
    } else return []
}   

function qv_triple_info(table, type, value, cardinalities) {
    value = qv_decode(value)
    var v= parseInt(value.split(' ')[0])
    if (v >= 0) {
        var colors = null;
        if (cardinalities[v])  colors = cardinalities[v].map( (x) =>  qv_palettes.magnitude(Math.round(Math.log10(parseFloat(x)))))
        return qv_row(table, type, value , {
              type : type,
              value : value,
              cardinality: cardinalities[v]}
             , colors)
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
     if ( data.permutation) name += " (" + data.permutation + ")"
     if ( data.type) name += " (" + data.type + ")"
     if ( data.limit) name += " (" + data.limit + ")"
     if ( data["num-sorted"]) name += " ( num-sorted=" +  data["num-sorted"] + ")"
     qv_title(div, name, data)
        .on("click", (event) => {   
        if (node.children)  {
            var visibility = "visible"
            if (qv_isVisible(node.children[0])) visibility="hidden"
            var descendants = node.children.map( x => x.descendants())
             qv_toggle(descendants.flat(), visibility);
        }
      }) 
    if (Object.keys(data).length > 3) {
   //     div.append("hr").attr("class","nodehr")
    }
    var table = div.append("xhtml:table")
        .attr("class", "tree-node")
        .style("border","0px")
        .style("font-size", qv_box.font);

    var cardinalities = qv_parse_cardinalities(data.cardinalities)
    //console.log(cardinalities)
    qv_cardInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => qv_triple_info(table,key,data[key],cardinalities));
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
    if(data.cost || data.count) size = size + 2 * linesize
    return size
}

function qv_tooltipShow(event, data) {
    var tooltip = d3.select("#tooltip")
        tooltip.style("left", (event.pageX + 28) + "px")
            .style("top", (event.pageY - 28) + "px");
        tooltip.select("pre").text(JSON.stringify(data, null,2))
        tooltip.transition()
            .duration(200)
            .style("opacity", .9);
    
}	  


function qv_tooltipHide(event) {
    var tooltip = d3.select("#tooltip")
        tooltip.transition()		
        .duration(500)		
        .style("opacity", 0)
        
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

function qv_init(containerid, json) {
    qv_debug(json)
    var container = d3.select(containerid);
    var margin = { top: 40, right: 90, bottom: 200, left: 90 }
    var nodes = qv_hierarchy(json)

    var maxcost = qv_maxCost(nodes)

    qv_debug(maxcost);

    var width = (nodes.leaves().length  + 2)  * (qv_box.width + qv_box.hpadding);
    var height = nodes.height * (qv_box.height + qv_box.vpadding) * 2;

    nodes = qv_buildTree(nodes,width,height)
    qv_debug(nodes);
    var svg = container.append("svg")
        .attr("width", Math.max(2048, width + margin.left + margin.right))
        .attr("height", height + margin.top + margin.bottom)

    // set up transform and zoom
    g = svg.append("g")
        .attr("transform",
            "translate(" + ( margin.left) + "," + margin.top + ")");
    var zoom = d3.zoom()
        .scaleExtent([0.1, 10])
        .on('zoom', function (event) {
            g.attr('transform', event.transform);
        });
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

    // Add the link label, using (non-moving) animation to place it 30% along the path
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
        .attr("keyPoints","0.3;0.3")
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
    node.filter(function(d){ return d.data.data.cost }).append((d) => {
            var cost = qv_relativeCost(d.data.data, maxcost)
            return qv_displayCost(["cost","mem","dmem","io","cpu", "dcpu","nw", "count"],cost)
    })
    node.filter(function(d){ return d.data.data["local-time"] }).append((d) => {
        var cost = qv_relativeCost(d.data.data, maxcost)
        qv_debug(cost)
        return qv_displayCost(["ltime","rtime", "lmem","rmem", "count"],cost)
    })
  
    // add text box
    var fo = node.append("foreignObject")
        .attr("y", function (d) {  if (d.data.data.cost || d.data.data["local-time"] ) {return qv_box.lineHeight * 2} else {return 0}})
        .attr("height", function (d) { return qv_nodeHeight(d.data.data) })
        .attr("width", qv_box.width)
    fo.append((d) => {
        return qv_node(d, maxcost);
        }
    )    
}

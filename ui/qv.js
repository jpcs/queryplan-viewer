/*
 * Copyright (c) 2021 MarkLogic Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

var qv_box = {
    debug: window.location.hostname === "localhost",
    width: 160,
    height: 100,
    lineHeight: 8,
    maxRowRepeats: 3
}

var qv_palettes = {
    cost : d3.scaleSequential([0, 1], qv_interpolateReds),
    magnitude: d3.scaleSequential([0, 10], d3.interpolateBlues)
}

var qv_colors = {
    selected: "orange",
    default: "steelblue"
}

// Displayed in the node box with cardinality info
var qv_cardInfo = [
    "subject","predicate","object","graph","value","fragment","row","column"
];

// Displayed in the node box
var qv_boxInfo = [
    "condition","expr","order-spec","grouping-set","aggregate","join-filter","content",
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
    "estimate" : "Optimized Plan",
    "execution": "Diagnostic Plan"
};

var qv_logButtons = {
   "default" : "w3-bar-item w3-button  w3-small w3-theme-d1",
   "active"  : "w3-bar-item w3-button w3-small w3-theme-action"
};


    

////////////////////////////////////////////////////////////////////////////////
// Helper Functions


function qv_interpolateReds (t) {
    return d3.interpolateRgbBasis([ "#fccbd0", "#f4364c" , "#610510" ]) (t)
 
 }
 
function qv_debug(msg) {
    if (qv_box.debug) {
        console.log(msg)
    }
}

function qv_decode(str) {
    if(typeof(str)!=="string") return str;
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

////////////////////////////////////////////////////////////////////////////////
// Log Timeline View

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

////////////////////////////////////////////////////////////////////////////////
// Tooltips

function qv_tooltipEvents(element, tooltip, doFilter) {
    if(tooltip) element
        .on("mouseover", function(event, d) {		
            qv_tooltipShow(event,tooltip,doFilter);
        })
        .on("mouseout", function(event, d) {	
            qv_tooltipHide(event);
        });
}

function qv_tooltipValue (key, value) {
    if (key == null) return qv_decode(value)
    else if (key === "id" || key.endsWith("-id") || key === "statusCode") return value
    else if (key === "lmem" || key === "rmem") return (Math.round(value / 1024 ) )
    else if (key === "ltime" || key === "rtime") return (Math.round(value))
    else if (typeof value === "number") return  value.toExponential(2)
    else return qv_decode(value)
}
function qv_tooltipTableRow(table, key, value) {
    if(Array.isArray(value)) {
        value.forEach((v) => qv_tooltipTableRow(table,key,v));
    }
    else if(value!==null && typeof(value)==="object") {
        var tr = table.append("tr");
        if(key!==null) tr.append("th").text(key);
        var table2 = tr.append("td").style("padding", "0px").append("table").attr("class","qvtooltip-inner").append("tbody");
        Object.keys(value).forEach((key) => qv_tooltipTableRow(table2,key,value[key]));
    }
    else {
        var tr = table.append("tr");
        if(key!==null) {
            var label = key;
            var el = "th";
            if (key === "parallel") {label= "\u2B25\u00A0" + key; el="td"}
            else if (key === "serial") {label= "\u25CF\u00A0" + key; el="td"}
            else if (key === "lmem" || key === "rmem") label= (key + " (kB)")
            else if (key === "ltime" || key === "rtime") label= (key + " (ms)")
            tr.append(el).text(label);
        }    
        tr.append("td").text(qv_tooltipValue(key, value));
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

        var table = parent.append("table").attr("class","qvtooltip-main").append("tbody");
        var display = (key) => {
            if (key != "costFunctionValues") {
            qv_tooltipTableRow(table,key,data[key]);
            empty = false;
            }
        }

        qv_tooltipPriority.filter(seenFilter).forEach(display);
        Object.keys(data).filter(seenFilter).forEach(display);
    }
    else if(data && (!Array.isArray(data) || data.length !== 0)) {
        qv_tooltipTableRow(parent.append("table").attr("class","qvtooltip-main").append("tbody"),null,data);
        empty = false;
    }
    return !empty;
}

function qv_tooltipShow(event, data, doFilter) {

    const pageWidth = document.body.scrollWidth;
    const pageHeight = document.body.scrollHeight;

    var x = Math.max(Math.min(event.pageX + 28, pageWidth-100),0)
    var y = Math.max(Math.min(event.pageY - 28, pageHeight-50),0)
    
    var tooltip = d3.select("#qvtooltip")
        .style("left", x + "px")
        .style("top", y + "px");
    tooltip.html("");
    
    if(qv_tooltipContents(tooltip,data,doFilter))
        tooltip.transition().duration(200).style("opacity", 1);
}

function qv_tooltipHide(event) {
    var tooltip = d3.select("#qvtooltip");
    tooltip.transition()
        .duration(500)		
        .style("opacity", 0);
}

////////////////////////////////////////////////////////////////////////////////
// Cost Display



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
    if(a===null) return b;
    if(b===null) return a;
    if(typeof a === "object") {
        var result = {};
        Object.keys(a).forEach((k) => {
            result[k] = qv_max(a[k],b[k]);
        });
        return result;
    }
    return Math.max(a,b);
}

function qv_min(a,b) {
    if(a===null) return b;
    if(b===null) return a;
    if(typeof a === "object") {
        var result = {};
        Object.keys(a).forEach((k) => {
            result[k] = qv_min(a[k],b[k]);
        });
        return result;
    }
    return Math.min(a,b);
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

function qv_displayCostAsBox (parent , rect, value) {
    const r = 2;
    parent.append("rect")
    .attr("x", rect.x)
    .attr("y", rect.y)
    .attr("rx",r)
    .attr("fill", qv_palettes.cost(value))
    .attr("width", rect.width - 1)
    .attr("height", qv_box.lineHeight)
}

function qv_displayCostAsDiamond (parent , rect, value) {
    const d = qv_box.lineHeight - 2
    parent.append("rect")
    .attr("x", rect.x + 2)
    .attr("y", rect.y )
    .attr("rx",1)
    .attr("fill", qv_palettes.cost(value))
    .attr("transform", "rotate(45," +  (rect.x + d /2) +"," + (rect.y +d/2) +")")
    .attr("width", d)
    .attr("height", d)
}

function qv_displayCostAsCircle (parent , rect, value) {
    const d = qv_box.lineHeight - 2
    parent.append("circle")
    .attr("cx", rect.x + d /2 +1)
    .attr("cy", rect.y + d /2 +1 )
    .attr("r",d/2 + 1)
    .attr("fill", qv_palettes.cost(value))
}

function qv_displayCost(metrics, cost, maxcost) {
    var parent = d3.create("svg:g").attr("width", qv_box.width )
    var i = 0;
    var padding = 5
    var width = (qv_box.width -(2 * padding )) / metrics.length;
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
                .attr("text-anchor",  "middle")
                .attr("x", tx )
                .attr("y", ty)
                .attr("width", width  )
                .attr("height", qv_box.lineHeight).text (v)
            if (v === "count")    {
                qv_displayCostAsBox(parent, {x:rx, y:ry, width:width},  value)
            }
            else if (typeof value === "number") {      
                qv_displayCostAsBox(parent, {x:rx, y:ry, width:width}, value) 
            } else  {
                qv_displayCostAsDiamond(parent, {x:rx, y:ry, width:width/2}, value.parallel)
                qv_displayCostAsCircle(parent, {x:tx, y:ry, width:width/2}, value.serial) 
            }
        }
    )
    qv_tooltipEvents(parent,cost,false);
    return parent.node()
}

////////////////////////////////////////////////////////////////////////////////
// Line graph

function qv_lineGraph (node) {
    console.log ("-----")
  
  var data  = node.data.data
  var paddingTop = qv_nodeTextHeight(data) + qv_nodeCostHeight(data) 
  var paddingSide = 10;
  var height = 100;
  
  var values = data.costFunctionValues
  
  var root = d3.create("svg:g")
  if (values) {
    
    var x = d3.scaleLinear()
        .domain([1, values.length])
        .range([ paddingSide, qv_box.width - paddingSide]);

    //    root.append("g")
    //    .attr("transform", "translate(0," + height + ")")
    //    .call(d3.axisBottom(x));

    var y = d3.scaleLinear()
        .domain([0, d3.max(values, function(d) { return +d; })])
        .range([ height , paddingTop ]);
    //    root.append("g")
    //    .call(d3.axisLeft(y));

    // Add the line
    root.append("path")
        .datum(values)
        .attr("fill", "none")
        .attr("stroke", "steelblue")
        .attr("stroke-width", 1)
        .attr("d", d3.line()
        .x(function(d,i) {  return x(i) })
        .y(function(d) { return y(d) })
        )
    
  }  
  return root.node()
}
////////////////////////////////////////////////////////////////////////////////
// Node display

function qv_dnodeLabel (dnode) {

    if (dnode != null) {    
        dnode.append("circle")
            .attr("cx",17)
            .attr("cy",17)
            .attr("r",13.5)
            .attr("stroke","#505050")
            .attr("stroke-width","3")
            .attr("fill", "white")
        dnode.append("path")
            .attr("d", "M12.4107 18.904C12.4107 18.296 12.4747 17.704 12.6027 17.128C12.7307 16.552 12.9387 16.04 13.2267 15.592C13.5147 15.144 13.8987 14.784 14.3787 14.512C14.8587 14.24 15.4427 14.104 16.1307 14.104C16.8347 14.104 17.4347 14.24 17.9307 14.512C18.4267 14.768 18.8267 15.112 19.1307 15.544C19.4507 15.976 19.6827 16.48 19.8267 17.056C19.9707 17.616 20.0427 18.2 20.0427 18.808C20.0427 19.384 19.9707 19.952 19.8267 20.512C19.6987 21.072 19.4827 21.576 19.1787 22.024C18.8747 22.456 18.4827 22.808 18.0027 23.08C17.5227 23.352 16.9387 23.488 16.2507 23.488C15.5947 23.488 15.0187 23.36 14.5227 23.104C14.0427 22.848 13.6427 22.504 13.3227 22.072C13.0187 21.64 12.7867 21.152 12.6267 20.608C12.4827 20.048 12.4107 19.48 12.4107 18.904ZM22.0107 25V7.864H19.9707V14.248H19.9227C19.6987 13.88 19.4187 13.576 19.0827 13.336C18.7627 13.08 18.4187 12.88 18.0507 12.736C17.6827 12.576 17.3147 12.464 16.9467 12.4C16.5787 12.336 16.2347 12.304 15.9147 12.304C14.9707 12.304 14.1387 12.48 13.4187 12.832C12.7147 13.168 12.1227 13.632 11.6427 14.224C11.1787 14.8 10.8267 15.48 10.5867 16.264C10.3627 17.048 10.2507 17.88 10.2507 18.76C10.2507 19.64 10.3707 20.472 10.6107 21.256C10.8507 22.04 11.2027 22.728 11.6667 23.32C12.1467 23.912 12.7387 24.384 13.4427 24.736C14.1627 25.088 15.0027 25.264 15.9627 25.264C16.8267 25.264 17.6187 25.112 18.3387 24.808C19.0587 24.504 19.5867 24.008 19.9227 23.32H19.9707V25H22.0107Z")
            .attr("fill", "#505050")
          
        
    }  
}
function qv_title(div, title, tooltip) {
    var para = div.append("xhtml:p")
        .attr("class", "node-title")
        .text(title);
    qv_tooltipEvents(para,tooltip,true);
    return para;
}

function qv_parseCardinalities(cardinalities) {
    if (cardinalities) {
        if (cardinalities.startsWith("(")) {
            var l=cardinalities.length;
            return cardinalities.substring(1,l-1).replaceAll("\),\(",";").split(";").map(x=>x.split(","))
        } else return cardinalities.split(",").map((x) => [x,x])
    } else return []
}   

function qv_nodeLines(value,insideArray) {
    var result = 0;
    if(!insideArray && Array.isArray(value)) {
        var max = value.length==qv_box.maxRowRepeats ? qv_box.maxRowRepeats :
            value.length > qv_box.maxRowRepeats ? qv_box.maxRowRepeats-1 :
            value.length;
        for(var i = 0; i<max; i++) result += qv_nodeLines(value[i],true);
        if(value.length>max) result += qv_nodeLines("…",true);
    }
    else {
        if(value===null) {
            result += 1;
        }
        else if(Array.isArray(value)) {
            if(value.length===0) {
                result += 1;
            } else {
                value.forEach(v => result += qv_nodeLines(v,true));
            }
        }
        else if(typeof(value)==="object") {
            Object.keys(value).forEach((key) => result += qv_nodeLines(value[key],false));
        } else {
            result += 1;
        }
    }
    return result;
}

function qv_innerRow(table, key, value, insideArray) {
    if(!insideArray && Array.isArray(value)) {
        var max = value.length==qv_box.maxRowRepeats ? qv_box.maxRowRepeats :
            value.length > qv_box.maxRowRepeats ? qv_box.maxRowRepeats-1 : value.length;
        for(var i = 0; i<max; i++) qv_innerRow(table,key,value[i],true);
        if(value.length>max) qv_innerRow(table,key,"…",true);
        return;
    }

    var tr = table.append("tr");
    if(key!==null) tr.append("th").text(key);
    if(value===null) {
        tr.append("td").append("span").style("font-style","italic").text("null");
    }
    else if(Array.isArray(value)) {
        if(value.length===0) {
            tr.append("td").append("span").style("font-style","italic").text("empty");
        } else {
            var inner = tr.append("td").append("table")
                .attr("class", "node-table node-inner-table");
            value.forEach(v => qv_innerRow(inner,null,v,true));
        }
    }
    else if(typeof(value)==="object") {
        var inner = tr.append("td").append("table")
            .attr("class", "node-table node-inner-table");
        Object.keys(value).forEach((key) => qv_innerRow(inner,key,value[key],false));
    }
    else {
        tr.append("td").text(qv_decode(value));
    }
}

function qv_nodeRow(table, key, value, tooltip, insideArray, cardinalities) {
    if(!insideArray && Array.isArray(value)) {
        var max = value.length==qv_box.maxRowRepeats ? qv_box.maxRowRepeats :
            value.length > qv_box.maxRowRepeats ? qv_box.maxRowRepeats-1 : value.length;
        for(var i = 0; i<max; i++) qv_nodeRow(table,key,value[i],value[i],true,cardinalities);
        if(value.length>max) {
            var newtooltip = {}; newtooltip[key] = value.slice(max,value.length);
            qv_nodeRow(table,key,"…",newtooltip,true);
        }
        return;
    }

    var magnitude = null;
    if(cardinalities && typeof(value)==="string") {
        var v = parseInt(value.split(' ')[0]) 
        if(v>=0 && cardinalities[v]) {
            const x = cardinalities[v][0]
            magnitude =  qv_palettes.magnitude(Math.round(Math.log10(parseFloat(x))));
            tooltip = { value : value, cardinality: cardinalities[v].join(",") };
        }
    }
    
    var tr = table.append("tr");
    var td0 = tr.append("td");
    if(magnitude!==null)  td0.append("span").style("color",magnitude).text("\u25AC");
    if(key!==null) tr.append("th").text(key);
    if(value===null) {
        tr.append("td").append("span").style("font-style","italic").text("null");
    }
    else if(Array.isArray(value)) {
        if(value.length===0) {
            tr.append("td").append("span").style("font-style","italic").text("empty");
        } else {
            var inner = tr.append("td").append("table")
                .attr("class", "node-table node-inner-table");
            value.forEach(v => qv_innerRow(inner,null,v,true));
        }
    }
    else if(typeof(value)==="object") {
        var inner = tr.append("td").append("table")
            .attr("class", "node-table node-inner-table");
        Object.keys(value).forEach((key) => qv_innerRow(inner,key,value[key],false));
    }
    else {
        tr.append("td").text(qv_decode(value));
    }

    qv_tooltipEvents(tr,tooltip,false);
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
    
    var table = div.append("table")
        .attr("class", "node-table node-outer-table");

    var cardinalities = qv_parseCardinalities(data.cardinalities)
   
    qv_cardInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => qv_nodeRow(table,key,data[key],data[key],false,cardinalities));
    qv_boxInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) =>  qv_nodeRow(table,key,data[key],data[key],false));
     
     
    return div.node()
}

function qv_nodeTextHeight(data) {
    var linesize = qv_box.lineHeight;
    var size = linesize * 3;
    
    qv_cardInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => { size += qv_nodeLines(data[key]) * linesize });
    qv_boxInfo
        .filter((key) => data.hasOwnProperty(key))
        .forEach((key) => { size += qv_nodeLines(data[key]) * linesize });
    return size
}

function qv_nodeCostHeight(data) {
    var size = 0;
    if(qv_costInfo.some((v) => data.hasOwnProperty(v)))
        size = size + 2 * qv_box.lineHeight
    if(qv_executionInfo.some((v) => data.hasOwnProperty(v)))
        size = size + 2 * qv_box.lineHeight
    return size
}

function qv_nodeGraphHeight(data) {
    size=0
    if (data.hasOwnProperty("costFunctionValues")) size=100
    return size
}   
function qv_nodeHeight(data) {
    return qv_nodeTextHeight(data) + qv_nodeCostHeight(data) + qv_nodeGraphHeight(data) + 2
}

////////////////////////////////////////////////////////////////////////////////
// Sub-Tree Visibility

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

////////////////////////////////////////////////////////////////////////////////
// Plan Display

function qv_hierarchy(json) {
    var data = d3.stratify()
        .id(function (d) { return d._id; })
        .parentId(function (d) { if (d._parent) return d._parent; else return "" })
        (json);
    return d3.hierarchy(data);
}

function qv_buildTree(nodes) {
    var treemap = d3.flextree()
        .nodeSize(node => [qv_box.width * 1.1, (qv_nodeHeight(node.data.data) * 1.1) + 20])
        .spacing((a, b) => qv_box.width * 0.25);
    // sorting so "left" are always before "right"   
    var nnodes = nodes.copy().sort((a, b) =>  d3.ascending(a.data.data._parentLabel,b.data.data._parentLabel))
    return treemap(nnodes)
}

function qv_showPlan(containerid, json) {
    qv_debug(json)
    var container = d3.select(containerid);
    var margin = { top: 20, right: 20, bottom: 20, left: 20 }
    var nodes = qv_hierarchy(json)

    var tabs = container.select(".qv-tabs").node();    
    const box = container.node().getBoundingClientRect();
    var width = box.width;
    var height = box.height - (tabs!==null ? tabs.getBoundingClientRect().height : 0)

    nodes = qv_buildTree(nodes)
    qv_debug(nodes);
    var svg = container.append("svg")
        .attr("width", width)
        .attr("height", height);

    if(!d3.select('#qvtooltip').node()) {
        d3.select("body").append('div')
            .attr('id', 'qvtooltip')
            .attr('class', 'qvtooltip');
    }

    // set up transform and zoom
    var g = svg.append("g")
    var zoom = d3.zoom()
        .scaleExtent([0.1, 10])
        .on('zoom', function (event) {
            g.attr('transform', event.transform);
        });

    // Center the diagram and scale it to fit
    var maxPos = null, minPos = null;
    nodes.descendants().forEach(n => {
        maxPos = qv_max({x: n.x + qv_box.width, y: n.y + qv_nodeHeight(n.data.data)},maxPos);
        minPos = qv_min({x: n.x, y: n.y},minPos);
    });

    var targetWidth = width - margin.left - margin.right;
    var targetHeight = height - margin.top - margin.bottom;
    var actualWidth = maxPos.x - minPos.x;
    var actualHeight = maxPos.y - minPos.y;

    var scaleX = targetWidth / actualWidth;
    var scaleY = targetHeight / actualHeight;
    var scale = Math.min(Math.min(scaleX,scaleY),3);

    svg.call(zoom.transform, d3.zoomIdentity
             .translate(
                 targetWidth/2 - actualWidth*scale/2  - minPos.x*scale + margin.left,
                 targetHeight/2 - actualHeight*scale/2 - minPos.y*scale + margin.top)
             .scale(scale)
            );
    svg.call(zoom);

    //links
    qv_debug(nodes.links())

    // A group for each link
    var links = g
        .selectAll("path")
        .data(nodes.links())
        .join("g");

    // Add the link path
    links.append("path")
        .attr("class", "link")
        .attr("id", function (d) { return "link_" +d.target.data.id })
        .attr("visibility", "visible")
        .attr("d", d3.linkVertical()
              // Start the link in the middle of the bottom of the node
              .source(d => [
                  d.source.x + (qv_box.width / 2),
                  d.source.y + qv_nodeHeight(d.source.data.data)
              ])
              // End the link in the middle of the top of the node
              .target(d => [
                  d.target.x + (qv_box.width / 2),
                  d.target.y
              ])
        );
    
    // container for node
    var node = g.selectAll(".node")
        .data(nodes.descendants())
        .enter().append("g")
        .attr("id", function (d) {  return "node_" + d.data.id })
        .attr("visibility", "visible")
        .attr("class", d => "node" +
              (d.children ? " node--internal" : " node--leaf") 
             )
        .attr("transform", function (d) {
            return "translate(" + (d.x) + "," + d.y + ")";
        });

    // rectangle around node


    node.append("rect")
        .attr("y", 0)
        .attr("rx",5)
        .attr("width", qv_box.width)
        .attr("height", d => qv_nodeHeight(d.data.data));
    
    dnode = node.filter((d) =>   d.data.data.dnode==="true" ).append("g")
            .attr( "transform", d => "translate(" + (qv_box.width - 15)
             + "," + (qv_nodeCostHeight(d.data.data) + 4)  + ") scale(.30)" )
    qv_dnodeLabel(dnode)         
    
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
    node.append("foreignObject")
        .attr("y", d => qv_nodeCostHeight(d.data.data))
        .attr("height", d => qv_nodeTextHeight(d.data.data))
        .attr("width", qv_box.width)
        .append(qv_node);

    node.append(qv_lineGraph);     
}

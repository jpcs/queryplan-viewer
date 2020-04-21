jQuery.fn.outerHTML = function() {
	return jQuery('<div />').append(this.eq(0).clone()).html();
};

var DirectedAcyclicGraphTooltip = function(gravity) {

    var tooltip = Tooltip(gravity).title(function(d) {
        var formatValue = function(val,node) {
	    var reserved = ["id","type","name","schema","view","column-index",
                            "op","permutation","descending","dedup",
                            "left","right",
                            "aggregate",
                            "order","num-sorted",
                            "count","local-time","remote-time","local-max-memory","remote-max-memory",
                            "cost","estimated-count","mem-cost","dmem-cost"];
	    var excluded = ["_id","_name","_parent","_parentLabel"];
            // The same list as in DirectedAcyclicGraph.js
            var gnProps = ["column","order-spec","subject","predicate","object","graph","row","value","fragment","content","expr","condition","join-filter","cross-product"];

            var rows = 0;

	    function appendRow(key, value, table) {
                if(jQuery.isArray(value)) {
                    var max = value.length;
                    if(max>5) max = 5;
                    for(var i=0; i<max; ++i) {
                        appendRow(key,value[i],table);
                    }
                    if(max<value.length) {
                        appendRow(key,(value.length - max) + " pruned rows...",table);
                    }
                }
                else {
                    var valcell = $("<td>");
                    if(formatValue(value,valcell)!=0) {
                        table.append($("<tr>").append($("<th>").text(key)).append(valcell));
                        ++rows;
                    }
                }
	    }

            if(jQuery.isPlainObject(val)) {
                var table = $("<table>").attr("width","100%").attr("style","font-size: 0.75em");

	        var seen = {};
	        for(var i = 0; i < excluded.length; i++) {
	            var key = excluded[i];
                    seen[key] = true;
                }
	        for(var i = 0; i < gnProps.length; i++) {
	            var key = gnProps[i];
	            if (val.hasOwnProperty(key) && val[key].length <= 100) {
                      seen[key] = true;
                    }
                }

	        // Do the reserved first
	        for (var i = 0; i < reserved.length; i++) {
	            var key = reserved[i];
	            if (val.hasOwnProperty(key)) {
		        seen[key] = true;
		        appendRow(key, val[key], table);
	            }
	        }

	        // Do the remainder
	        for (var key in val) {
	            if (!seen[key]) {
		        appendRow(key, val[key], table);
	            }
	        }

                if(rows!=0) {
                    node.append(table);
                }
                return rows;
            }
            // else if(jQuery.isArray(val)) {
            // }
            else {
                node.html(val);
                return 1;
            }
        }

	var tooltip = $("<div>").attr("class", "xtrace-tooltip");
        if(formatValue(d.report,tooltip) == 0) return false;
	return tooltip.outerHTML();
    });

    return tooltip;
}

var CompareTooltip = function() {

	var tooltip = Tooltip().title(function(d) {
		function appendRow(key, value, tooltip) {
			var keyrow = $("<div>").attr("class", "key").append(key);
			var valrow = $("<div>").attr("class", "value").append(value);
			var clearrow = $("<div>").attr("class", "clear");
			tooltip.append($("<div>").append(keyrow).append(valrow).append(clearrow));
		}

		var tooltip = $("<div>").attr("class", "xtrace-tooltip");

		appendRow("ID", d.get_id(), tooltip);
		appendRow("NumReports", d.get_node_ids().length, tooltip);
		appendRow("NumLabels", Object.keys(d.get_labels()).length, tooltip);

		return tooltip.outerHTML();
	});

	return tooltip;

}


var Tooltip = function(gravity) {
	if (gravity==null)
		gravity = $.fn.tipsy.autoWE;

	var tooltip = function(selection) {
	    selection.each(function(d) {
                var tooltip = title(d);
                if(tooltip != false) {
		    $(this).tipsy({
			gravity: gravity,
			html: true,
			title: function() { return tooltip; },
			opacity: 1
		    });
                }
	    });
	}

	var title = function(d) { return ""; };

	tooltip.hide = function() { $(".tipsy").remove(); }
	tooltip.title = function(_) { if (arguments.length==0) return title; title = _; return tooltip; }


	return tooltip;
}

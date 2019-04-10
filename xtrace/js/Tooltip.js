jQuery.fn.outerHTML = function() {
	return jQuery('<div />').append(this.eq(0).clone()).html();
};

var timestampToTimeString = function(timestamp) {
	timestamp = Math.floor(timestamp);
	var date = new Date(timestamp);
	var hours = date.getHours();
	var minutes = date.getMinutes();
	minutes = minutes < 10 ? '0'+minutes : minutes;
	var seconds = date.getSeconds();
	seconds = seconds < 10 ? '0'+seconds : seconds;
	var milliseconds = date.getMilliseconds();
	milliseconds = milliseconds < 10 ? '00'+milliseconds : milliseconds < 100 ? '0'+milliseconds : milliseconds;
	return hours + ":" + minutes + ":" + seconds + "." + milliseconds;
}

var DirectedAcyclicGraphTooltip = function(gravity) {

    var tooltip = Tooltip(gravity).title(function(d) {
        var formatValue = function(val,node) {
	    var reserved = ["type","name","schema","view","column","row","fragment","content","column-index",
                            "value","op","permutation","descending","dedup",
                            "subject","predicate","object","graph","left","right",
                            "order","num-sorted","cost","estimated-count",
                            "mem-cost","dmem-cost"];
	    var excluded = ["parent","id","graphName","condition","edgeLabel"];

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
                node.text(val);
                return 1;
            }
        }

	var tooltip = $("<div>").attr("class", "xtrace-tooltip");
        formatValue(d.report,tooltip);
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
			$(this).tipsy({
				gravity: gravity,
				html: true,
				title: function() { return title(d); },
				opacity: 1
			});
		});
	}

	var title = function(d) { return ""; };

	tooltip.hide = function() { $(".tipsy").remove(); }
	tooltip.title = function(_) { if (arguments.length==0) return title; title = _; return tooltip; }


	return tooltip;
}

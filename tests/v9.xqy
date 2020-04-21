xquery version "1.0-ml";

(:
 : Copyright (c) 2019 John Snelson
 :
 : Licensed under the Apache License, Version 2.0 (the "License");
 : you may not use this file except in compliance with the License.
 : You may obtain a copy of the License at
 :
 :     http://www.apache.org/licenses/LICENSE-2.0
 :
 : Unless required by applicable law or agreed to in writing, software
 : distributed under the License is distributed on an "AS IS" BASIS,
 : WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 : See the License for the specific language governing permissions and
 : limitations under the License.
 :)

module namespace t = "http://marklogic.com/optic/qputils/v9";
declare default function namespace "http://marklogic.com/optic/qputils/v9";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function marklogicv9()
{
map:entry("name","v9_1")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:limit>
    <plan:offset>
      <plan:graph-node type="literal">
	<plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#unsignedLong">0</plan:rdf-val>
      </plan:graph-node>
    </plan:offset>
    <plan:limit>
      <plan:graph-node type="literal">
	<plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#unsignedLong">10</plan:rdf-val>
      </plan:graph-node>
    </plan:limit>
    <plan:expr>
      <plan:order-by order="0[NULLS_LAST]" num-sorted="0">
	<plan:order-spec descending="false" nulls-first="false">
	  <plan:graph-node type="column-ref" name="energy.well_header.uwi" schema="energy" column="uwi" view="well_header" column-number="0" column-index="0" static-type="UNKNOWN"/>
	</plan:order-spec>
	<plan:project order="">
	  <plan:vars>
	    <plan:graph-node type="column-def" name="energy.well_header.uwi" schema="energy" column="uwi" view="well_header" column-number="0" column-index="0" static-type="STRING"/>
	    <plan:graph-node type="column-def" name="energy.well_header.region_name" schema="energy" column="region_name" view="well_header" column-number="1" column-index="1" static-type="STRING"/>
	    <plan:graph-node type="column-def" name="energy.well_header.country_name" schema="energy" column="country_name" view="well_header" column-number="2" column-index="2" static-type="STRING"/>
	    <plan:graph-node type="column-def" name="energy.well_header.date_spud" schema="energy" column="date_spud" view="well_header" column-number="3" column-index="3" static-type="DATE"/>
	  </plan:vars>
	  <plan:expr>
	    <plan:template-view permutation="PSO" iri="http://marklogic.com/view/energy/well_header" schemaID="7868022981147104943" viewID="7094679757533975619">
	      <plan:template-column nullable="true">
		<plan:rdf-val column="energy.well_header.country_name" columnID="3715874282937194753"/>
		<plan:graph-node type="column-def" name="energy.well_header.country_name" schema="energy" column="country_name" view="well_header" column-number="21" column-index="2" static-type="STRING"/>
	      </plan:template-column>
	      <plan:template-column nullable="true">
		<plan:rdf-val column="energy.well_header.date_spud" columnID="4387794058897714646"/>
		<plan:graph-node type="column-def" name="energy.well_header.date_spud" schema="energy" column="date_spud" view="well_header" column-number="37" column-index="3" static-type="DATE"/>
	      </plan:template-column>
	      <plan:template-column nullable="true">
		<plan:rdf-val column="energy.well_header.region_name" columnID="13431015227477955060"/>
		<plan:graph-node type="column-def" name="energy.well_header.region_name" schema="energy" column="region_name" view="well_header" column-number="116" column-index="1" static-type="STRING"/>
	      </plan:template-column>
	      <plan:template-column nullable="true">
		<plan:rdf-val column="energy.well_header.uwi" columnID="3301824238662576162"/>
		<plan:graph-node type="column-def" name="energy.well_header.uwi" schema="energy" column="uwi" view="well_header" column-number="140" column-index="0" static-type="STRING"/>
	      </plan:template-column>
	      <plan:row>
		<plan:graph-node type="column-def" name="energy.well_header.rowid" schema="energy" column="rowid" view="well_header" column-number="145" column-index="4" static-type="UNKNOWN" hidden="true"/>
	      </plan:row>
	    </plan:template-view>
	  </plan:expr>
	</plan:project>
      </plan:order-by>
    </plan:expr>
  </plan:limit>
</plan:plan>
)
=>map:with("expected",(
'{"offset":"xs:unsignedLong(\"0\")", "limit":"xs:unsignedLong(\"10\")", "_id":"N", "_name":"limit"}',
'{"order":"0[NULLS_LAST]", "_id":"N_1", "_parent":"N", "order-spec":"0 (energy.well_header.uwi)", "_name":"order-by", "num-sorted":"0"}',
'{"order":"", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (energy.well_header.uwi)", "1 (energy.well_header.region_name)", "2 (energy.well_header.country_name)", "3 (energy.well_header.date_spud)"]}',
'{"iri":"http://marklogic.com/view/energy/well_header", "_id":"N_1_1_1", "viewID":"7094679757533975619", "row":"4 (energy.well_header.rowid)", "schemaID":"7868022981147104943", "permutation":"PSO", "_parent":"N_1_1", "_name":"template-view", "column":["2 (energy.well_header.country_name) [nullable]", "3 (energy.well_header.date_spud) [nullable]", "1 (energy.well_header.region_name) [nullable]", "0 (energy.well_header.uwi) [nullable]"]}'
)),
map:entry("name","v9_2")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:exprs>
    <plan:select>
      <plan:project id="12937175494879959600" order="last(2),singletons(1)">
	<plan:column type="column-def" column="CustomerID" column-number="0" column-index="0" static-type="INT"/>
	<plan:column type="column-def" column="StockSymbol" column-number="1" column-index="1" static-type="STRING"/>
	<plan:column type="column-def" column="Shares" column-number="2" column-index="2" static-type="DOUBLE"/>
	<plan:order-by num-sorted="0" id="5998293141835717360" order="last(2),singletons(1)" cost="135448" estimated-count="46" io-cost="0/3869.15/0/14025.7/0" nw-cost="102/139/0/380/0" cpu-cost="0/1285.35/0/1285.35/0" dcpu-cost="0/13292.1/0/45247.9/0" mem-cost="184" dmem-cost="519" cardinalities="(46,46),(2,2),(46,46)">
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" column="Shares" column-number="2" column-index="2"/>
	  <plan:filter is-empty="false">
	    <plan:filters>
	      <plan:value-compare op="EQ">
		<plan:expr>
		  <plan:multiply op="%">
		    <plan:expr>
		      <plan:column-ref schema="" view="" column="Shares" column-index="2" column-number="2" in-match="false">
			<plan:qname name="Shares" uri="" prfx="" ltrl="Shares"/>
		      </plan:column-ref>
		    </plan:expr>
		    <plan:term>
		      <plan:literal>
			<plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">100</plan:value>
		      </plan:literal>
		    </plan:term>
		  </plan:multiply>
		</plan:expr>
		<plan:term>
		  <plan:literal>
		    <plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">0</plan:value>
		  </plan:literal>
		</plan:term>
	      </plan:value-compare>
	    </plan:filters>
	    <plan:group type="sort-group" num-sorted="0" id="5757433590050241723" order="last(0),singletons(1)" cost="133760" estimated-count="46" io-cost="0/3869.15/0/14025.7/0" nw-cost="102/1/138/104/276" cpu-cost="0/0/0.276/0/0.276" dcpu-cost="0/12793.6/498.557/44398/849.937" mem-cost="0" dmem-cost="519" cardinalities="(46,46),(2,2),(46,46)">
	      <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="CustomerID" column-number="1" column-index="0"/>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sum" distinct="false">
		  <plan:column-ref schema="" view="t" column="NumShares" column-index="2" column-number="3" in-match="false">
		    <plan:qname name="t.NumShares" uri="" prfx="" ltrl="t.NumShares"/>
		  </plan:column-ref>
		</plan:aggregate-function>
		<plan:column type="column-def" column="Shares" column-number="2" column-index="2"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:column-ref schema="" view="t" column="CustomerID" column-index="0" column-number="1" in-match="false">
		    <plan:qname name="t.CustomerID" uri="" prfx="" ltrl="t.CustomerID"/>
		  </plan:column-ref>
		</plan:aggregate-function>
		<plan:column type="column-def" column="CustomerID" column-number="0" column-index="0"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:column-ref schema="" view="t" column="StockSymbol" column-index="1" column-number="2" in-match="false">
		    <plan:qname name="t.StockSymbol" uri="" prfx="" ltrl="t.StockSymbol"/>
		  </plan:column-ref>
		</plan:aggregate-function>
		<plan:column type="column-def" column="StockSymbol" column-number="1" column-index="1"/>
	      </plan:aggregate-bind>
	      <plan:join type="scatter-join" id="14661632312769331199" order="last(3),singletons(1)" cost="129518" estimated-count="46" io-cost="0/3869.15/0/14025.7/0" nw-cost="2/1/0/4/0" cpu-cost="0/0/0/0/0" dcpu-cost="0/12120.9/353.637/43495.4/583.549" mem-cost="0" dmem-cost="399" cardinalities="(46,142),(2,758),(46,4798),(46,46)">
		<plan:hash left="3" right="3" op="="/>
		<plan:scatter left="3" right="3" op="="/>
		<plan:triple-index permutation="POS" is-column="true" id="7159118286401545497" order="3,singletons(1)" cost="13364.7" estimated-count="46" io-cost="0/27.3121/698.149/54.6243/1396.3" nw-cost="2/0/0/2/0" cpu-cost="0/0/0/0/0" dcpu-cost="0/0/1628.52/0/3211.04" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(2,758),(0,0),(46,6530)">
		  <plan:subject type="column-def" view="t" column="rowid" column-number="106" column-index="3" hidden="true"/>
		  <plan:predicate type="literal" column="trades.trade.StockSymbol" columnID="15275347313965385938"/>
		  <plan:object type="column-def" view="t" column="StockSymbol" column-number="2" column-index="1" static-type="STRING"/>
		  <plan:join-filter op="=">
		    <plan:left type="column-def" view="t" column="StockSymbol" column-number="2" column-index="1"/>
		    <plan:right-expr>
		      <plan:literal>
			<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">PFLT</plan:value>
		      </plan:literal>
		    </plan:right-expr>
		  </plan:join-filter>
		</plan:triple-index>
		<plan:join type="parallel-sort-merge-join" id="11241005280016078074" order="last(3)" cost="113903" estimated-count="46" io-cost="0/3143.69/0/12574.8/0" nw-cost="1/0/0/2/0" cpu-cost="0/0/0/0/0" dcpu-cost="0/10118.8/123.725/39537.2/123.725" mem-cost="0" dmem-cost="330" cardinalities="(46,142),(0,0),(46,4798),(46,46)" left-num-sorted="0" right-num-sorted="0">
		  <plan:hash left="3" right="3" op="="/>
		  <plan:triple-index permutation="POS" is-column="true" id="12575339637580448022" order="2,3" cost="62678.8" estimated-count="46" io-cost="0/641.835/2501.86/1283.67/5003.71" nw-cost="1/0/0/1/0" cpu-cost="0/0/0/0/0" dcpu-cost="0/0/9699.79/0/19399.6" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(0,0),(46,4798),(46,46)">
		    <plan:subject type="column-def" view="t" column="rowid" column-number="106" column-index="3" hidden="true"/>
		    <plan:predicate type="literal" column="trades.trade.NumShares" columnID="10212418283399709862"/>
		    <plan:object type="column-def" view="t" column="NumShares" column-number="3" column-index="2" static-type="INT"/>
		  </plan:triple-index>
		  <plan:triple-index permutation="POS" is-column="true" id="6524138543839088497" order="0,3" cost="62678.8" estimated-count="46" io-cost="0/641.835/2501.86/1283.67/5003.71" nw-cost="1/0/0/1/0" cpu-cost="0/0/0/0/0" dcpu-cost="0/0/9699.79/0/19399.6" mem-cost="0" dmem-cost="0" cardinalities="(46,142),(0,0),(0,0),(46,46)">
		    <plan:subject type="column-def" view="t" column="rowid" column-number="106" column-index="3" hidden="true"/>
		    <plan:predicate type="literal" column="trades.trade.CustomerID" columnID="10160157172553756042"/>
		    <plan:object type="column-def" view="t" column="CustomerID" column-number="1" column-index="0" static-type="INT"/>
		  </plan:triple-index>
		</plan:join>
	      </plan:join>
	    </plan:group>
	  </plan:filter>
	</plan:order-by>
      </plan:project>
    </plan:select>
  </plan:exprs>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"exprs"}',
'{"_id":"N_1", "_parent":"N", "_name":"select"}',
'{"order":"last(2),singletons(1)", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (CustomerID)", "1 (StockSymbol)", "2 (Shares)"], "id":"12937175494879959600"}',
'{"cost":"135448", "nw-cost":"102/139/0/380/0", "cpu-cost":"0/1285.35/0/1285.35/0", "order":"last(2),singletons(1)", "_name":"order-by", "num-sorted":"0", "dcpu-cost":"0/13292.1/0/45247.9/0", "id":"5998293141835717360", "_id":"N_1_1_1", "_parent":"N_1_1", "mem-cost":"184", "io-cost":"0/3869.15/0/14025.7/0", "estimated-count":"46", "dmem-cost":"519", "cardinalities":"(46,46),(2,2),(46,46)", "order-spec":"2 (Shares)"}',
'{"_id":"N_1_1_1_1", "_parent":"N_1_1_1", "condition":"Shares mod 100 eq 0", "_name":"filter", "is-empty":"false"}',
'{"cost":"133760", "nw-cost":"102/1/138/104/276", "cpu-cost":"0/0/0.276/0/0.276", "order":"last(0),singletons(1)", "_name":"group", "num-sorted":"0", "dcpu-cost":"0/12793.6/498.557/44398/849.937", "id":"5757433590050241723", "_id":"N_1_1_1_1_1", "type":"sort-group", "_parent":"N_1_1_1_1", "mem-cost":"0", "io-cost":"0/3869.15/0/14025.7/0", "estimated-count":"46", "dmem-cost":"519", "cardinalities":"(46,46),(2,2),(46,46)", "order-spec":"0 (t.CustomerID)", "aggregate":["sum(t.NumShares) as Shares", "sample(t.CustomerID) as CustomerID", "sample(t.StockSymbol) as StockSymbol"]}',
'{"cost":"129518", "nw-cost":"2/1/0/4/0", "cpu-cost":"0/0/0/0/0", "order":"last(3),singletons(1)", "condition":"3=3", "_name":"scatter-join", "dcpu-cost":"0/12120.9/353.637/43495.4/583.549", "id":"14661632312769331199", "_id":"N_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1", "mem-cost":"0", "io-cost":"0/3869.15/0/14025.7/0", "estimated-count":"46", "dmem-cost":"399", "cardinalities":"(46,142),(2,758),(46,4798),(46,46)"}',
'{"cost":"13364.7", "nw-cost":"2/0/0/2/0", "cpu-cost":"0/0/0/0/0", "order":"3,singletons(1)", "subject":"3 (t.rowid)", "dcpu-cost":"0/0/1628.52/0/3211.04", "_name":"triple-index", "is-column":"true", "id":"7159118286401545497", "_parentLabel":"left", "predicate":"trades.trade.StockSymbol (15275347313965385938)", "_id":"N_1_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1_1", "mem-cost":"0", "permutation":"POS", "estimated-count":"46", "io-cost":"0/27.3121/698.149/54.6243/1396.3", "dmem-cost":"0", "cardinalities":"(0,0),(2,758),(0,0),(46,6530)", "object":"1 (t.StockSymbol)"}',
'{"_id":"N_1_1_1_1_1_1_L_1", "_parent":"N_1_1_1_1_1_1_L", "condition":"t.StockSymbol=\"PFLT\"", "left":{"view":"t", "type":"column-def", "column-index":"1", "column":"StockSymbol"}, "_name":"join-filter", "op":"="}',
'{"cost":"113903", "nw-cost":"1/0/0/2/0", "cpu-cost":"0/0/0/0/0", "order":"last(3)", "right-num-sorted":"0", "condition":"3=3", "_name":"parallel-sort-merge-join", "dcpu-cost":"0/10118.8/123.725/39537.2/123.725", "left-num-sorted":"0", "id":"11241005280016078074", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_R", "_parent":"N_1_1_1_1_1_1", "mem-cost":"0", "io-cost":"0/3143.69/0/12574.8/0", "estimated-count":"46", "dmem-cost":"330", "cardinalities":"(46,142),(0,0),(46,4798),(46,46)"}',
'{"cost":"62678.8", "nw-cost":"1/0/0/1/0", "cpu-cost":"0/0/0/0/0", "order":"2,3", "subject":"3 (t.rowid)", "dcpu-cost":"0/0/9699.79/0/19399.6", "_name":"triple-index", "is-column":"true", "id":"12575339637580448022", "_parentLabel":"left", "predicate":"trades.trade.NumShares (10212418283399709862)", "_id":"N_1_1_1_1_1_1_R_L", "_parent":"N_1_1_1_1_1_1_R", "mem-cost":"0", "permutation":"POS", "estimated-count":"46", "io-cost":"0/641.835/2501.86/1283.67/5003.71", "dmem-cost":"0", "cardinalities":"(0,0),(0,0),(46,4798),(46,46)", "object":"2 (t.NumShares)"}',
'{"cost":"62678.8", "nw-cost":"1/0/0/1/0", "cpu-cost":"0/0/0/0/0", "order":"0,3", "subject":"3 (t.rowid)", "dcpu-cost":"0/0/9699.79/0/19399.6", "_name":"triple-index", "is-column":"true", "id":"6524138543839088497", "_parentLabel":"right", "predicate":"trades.trade.CustomerID (10160157172553756042)", "_id":"N_1_1_1_1_1_1_R_R", "_parent":"N_1_1_1_1_1_1_R", "mem-cost":"0", "permutation":"POS", "estimated-count":"46", "io-cost":"0/641.835/2501.86/1283.67/5003.71", "dmem-cost":"0", "cardinalities":"(46,142),(0,0),(0,0),(46,46)", "object":"0 (t.CustomerID)"}'
)),
map:entry("name","v9_3")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:exprs>
    <plan:select>
      <plan:project order="0[NULLS_LAST],1[NULLS_LAST],2[NULLS_LAST],3[NULLS_LAST],4[NULLS_LAST],5[NULLS_LAST],6[NULLS_LAST],7[NULLS_LAST]">
	<plan:vars>
	  <plan:graph-node type="column-def" name="PieceShippedDate" schema="" column="PieceShippedDate" view="" column-number="0" column-index="0" static-type="DATE"/>
	  <plan:graph-node type="column-def" name="PieceAppearance" schema="" column="PieceAppearance" view="" column-number="1" column-index="1" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="ShipperAccountIdentifier" schema="" column="ShipperAccountIdentifier" view="" column-number="2" column-index="2" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="ShipperCompanyName" schema="" column="ShipperCompanyName" view="" column-number="3" column-index="3" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="DeliveryAddressCountry" schema="" column="DeliveryAddressCountry" view="" column-number="4" column-index="4" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="ProductName" schema="" column="ProductName" view="" column-number="5" column-index="5" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="ProductExpressDelivery" schema="" column="ProductExpressDelivery" view="" column-number="6" column-index="6" static-type="INT"/>
	  <plan:graph-node type="column-def" name="ProductSaturdayDelivery" schema="" column="ProductSaturdayDelivery" view="" column-number="7" column-index="7" static-type="INT"/>
	  <plan:graph-node type="column-def" name="ProductFlow" schema="" column="ProductFlow" view="" column-number="8" column-index="8" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="PerformanceReportingClass" schema="" column="PerformanceReportingClass" view="" column-number="9" column-index="9" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="GeneratedBySoftwareRelease" schema="" column="GeneratedBySoftwareRelease" view="" column-number="10" column-index="10" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="PerformanceMainReasonOfDelay" schema="" column="PerformanceMainReasonOfDelay" view="" column-number="11" column-index="11" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="PerformanceServiceCompletionType" schema="" column="PerformanceServiceCompletionType" view="" column-number="12" column-index="12" static-type="STRING"/>
	  <plan:graph-node type="column-def" name="C1" schema="" column="C1" view="" column-number="13" column-index="13" static-type="UINT"/>
	  <plan:graph-node type="column-def" name="C2" schema="" column="C2" view="" column-number="14" column-index="14" static-type="DOUBLE"/>
	  <plan:graph-node type="column-def" name="C3" schema="" column="C3" view="" column-number="15" column-index="15" static-type="DOUBLE"/>
	</plan:vars>
	<plan:expr>
	  <plan:group type="sort-group" order="0[NULLS_LAST],1[NULLS_LAST],2[NULLS_LAST],3[NULLS_LAST],4[NULLS_LAST],5[NULLS_LAST],6[NULLS_LAST],7[NULLS_LAST]" num-sorted="1">
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.PieceShippedDate" schema="" column="PieceShippedDate" view="ITBL" column-number="1" column-index="1" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.PieceAppearance" schema="" column="PieceAppearance" view="ITBL" column-number="2" column-index="2" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ShipperAccountIdentifier" schema="" column="ShipperAccountIdentifier" view="ITBL" column-number="5" column-index="5" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ShipperCompanyName" schema="" column="ShipperCompanyName" view="ITBL" column-number="4" column-index="4" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.DeliveryAddressCountry" schema="" column="DeliveryAddressCountry" view="ITBL" column-number="3" column-index="3" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ProductName" schema="" column="ProductName" view="ITBL" column-number="6" column-index="6" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ProductExpressDelivery" schema="" column="ProductExpressDelivery" view="ITBL" column-number="8" column-index="8" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ProductSaturdayDelivery" schema="" column="ProductSaturdayDelivery" view="ITBL" column-number="9" column-index="9" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.ProductFlow" schema="" column="ProductFlow" view="ITBL" column-number="7" column-index="7" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.PerformanceReportingClass" schema="" column="PerformanceReportingClass" view="ITBL" column-number="13" column-index="13" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.GeneratedBySoftwareRelease" schema="" column="GeneratedBySoftwareRelease" view="ITBL" column-number="0" column-index="0" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.PerformanceMainReasonOfDelay" schema="" column="PerformanceMainReasonOfDelay" view="ITBL" column-number="14" column-index="14" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="column-ref" name="ITBL.PerformanceServiceCompletionType" schema="" column="PerformanceServiceCompletionType" view="ITBL" column-number="11" column-index="11" static-type="UNKNOWN"/>
	    </plan:order-spec>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="count" distinct="false"/>
	      <plan:var>
		<plan:graph-node type="column-def" name="C1" schema="" column="C1" view="" column-number="13" column-index="13" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sum" distinct="false">
		<plan:sparql-variable column-index="15">
		  <plan:qname name="ANON16609040288126497469" uri="" prfx="" ltrl="ANON16609040288126497469"/>
		</plan:sparql-variable>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="C2" schema="" column="C2" view="" column-number="14" column-index="14" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sum" distinct="false">
		<plan:sparql-variable column-index="16">
		  <plan:qname name="ANON5921023258456302510" uri="" prfx="" ltrl="ANON5921023258456302510"/>
		</plan:sparql-variable>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="C3" schema="" column="C3" view="" column-number="15" column-index="15" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="PieceShippedDate" column-index="1" column-number="1" in-match="false">
		  <plan:qname name="ITBL.PieceShippedDate" uri="" prfx="" ltrl="ITBL.PieceShippedDate"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="PieceShippedDate" schema="" column="PieceShippedDate" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="PieceAppearance" column-index="2" column-number="2" in-match="false">
		  <plan:qname name="ITBL.PieceAppearance" uri="" prfx="" ltrl="ITBL.PieceAppearance"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="PieceAppearance" schema="" column="PieceAppearance" view="" column-number="1" column-index="1" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ShipperAccountIdentifier" column-index="5" column-number="5" in-match="false">
		  <plan:qname name="ITBL.ShipperAccountIdentifier" uri="" prfx="" ltrl="ITBL.ShipperAccountIdentifier"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ShipperAccountIdentifier" schema="" column="ShipperAccountIdentifier" view="" column-number="2" column-index="2" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ShipperCompanyName" column-index="4" column-number="4" in-match="false">
		  <plan:qname name="ITBL.ShipperCompanyName" uri="" prfx="" ltrl="ITBL.ShipperCompanyName"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ShipperCompanyName" schema="" column="ShipperCompanyName" view="" column-number="3" column-index="3" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="DeliveryAddressCountry" column-index="3" column-number="3" in-match="false">
		  <plan:qname name="ITBL.DeliveryAddressCountry" uri="" prfx="" ltrl="ITBL.DeliveryAddressCountry"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="DeliveryAddressCountry" schema="" column="DeliveryAddressCountry" view="" column-number="4" column-index="4" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ProductName" column-index="6" column-number="6" in-match="false">
		  <plan:qname name="ITBL.ProductName" uri="" prfx="" ltrl="ITBL.ProductName"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ProductName" schema="" column="ProductName" view="" column-number="5" column-index="5" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ProductExpressDelivery" column-index="8" column-number="8" in-match="false">
		  <plan:qname name="ITBL.ProductExpressDelivery" uri="" prfx="" ltrl="ITBL.ProductExpressDelivery"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ProductExpressDelivery" schema="" column="ProductExpressDelivery" view="" column-number="6" column-index="6" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ProductSaturdayDelivery" column-index="9" column-number="9" in-match="false">
		  <plan:qname name="ITBL.ProductSaturdayDelivery" uri="" prfx="" ltrl="ITBL.ProductSaturdayDelivery"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ProductSaturdayDelivery" schema="" column="ProductSaturdayDelivery" view="" column-number="7" column-index="7" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="ProductFlow" column-index="7" column-number="7" in-match="false">
		  <plan:qname name="ITBL.ProductFlow" uri="" prfx="" ltrl="ITBL.ProductFlow"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="ProductFlow" schema="" column="ProductFlow" view="" column-number="8" column-index="8" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="PerformanceReportingClass" column-index="13" column-number="13" in-match="false">
		  <plan:qname name="ITBL.PerformanceReportingClass" uri="" prfx="" ltrl="ITBL.PerformanceReportingClass"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="PerformanceReportingClass" schema="" column="PerformanceReportingClass" view="" column-number="9" column-index="9" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="GeneratedBySoftwareRelease" column-index="0" column-number="0" in-match="false">
		  <plan:qname name="ITBL.GeneratedBySoftwareRelease" uri="" prfx="" ltrl="ITBL.GeneratedBySoftwareRelease"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="GeneratedBySoftwareRelease" schema="" column="GeneratedBySoftwareRelease" view="" column-number="10" column-index="10" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="PerformanceMainReasonOfDelay" column-index="14" column-number="14" in-match="false">
		  <plan:qname name="ITBL.PerformanceMainReasonOfDelay" uri="" prfx="" ltrl="ITBL.PerformanceMainReasonOfDelay"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="PerformanceMainReasonOfDelay" schema="" column="PerformanceMainReasonOfDelay" view="" column-number="11" column-index="11" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:aggregate-bind>
	      <plan:aggregate-function name="sample" distinct="false">
		<plan:column-ref schema="" view="ITBL" column="PerformanceServiceCompletionType" column-index="11" column-number="11" in-match="false">
		  <plan:qname name="ITBL.PerformanceServiceCompletionType" uri="" prfx="" ltrl="ITBL.PerformanceServiceCompletionType"/>
		</plan:column-ref>
	      </plan:aggregate-function>
	      <plan:var>
		<plan:graph-node type="column-def" name="PerformanceServiceCompletionType" schema="" column="PerformanceServiceCompletionType" view="" column-number="12" column-index="12" static-type="UNKNOWN"/>
	      </plan:var>
	    </plan:aggregate-bind>
	    <plan:bind>
	      <plan:var>
		<plan:graph-node type="var" name="ANON5921023258456302510" column-index="16" static-type="NONE" hidden="true"/>
	      </plan:var>
	      <plan:bind-expr>
		<plan:column-ref schema="" view="ITBL" column="PerformanceOnTimeServiceCompletion" column-index="12" column-number="12" in-match="false">
		  <plan:qname name="ITBL.PerformanceOnTimeServiceCompletion" uri="" prfx="" ltrl="ITBL.PerformanceOnTimeServiceCompletion"/>
		</plan:column-ref>
	      </plan:bind-expr>
	      <plan:expr>
		<plan:bind>
		  <plan:var>
		    <plan:graph-node type="var" name="ANON16609040288126497469" column-index="15" static-type="NONE" hidden="true"/>
		  </plan:var>
		  <plan:bind-expr>
		    <plan:column-ref schema="" view="ITBL" column="PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" column-index="10" column-number="10" in-match="false">
		      <plan:qname name="ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" uri="" prfx="" ltrl="ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion"/>
		    </plan:column-ref>
		  </plan:bind-expr>
		  <plan:expr>
		    <plan:project order="1[NULLS_IRRELEVANT]">
		      <plan:vars>
			<plan:graph-node type="column-def" name="ITBL.GeneratedBySoftwareRelease" schema="" column="GeneratedBySoftwareRelease" view="ITBL" column-number="0" column-index="0" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.PieceShippedDate" schema="" column="PieceShippedDate" view="ITBL" column-number="1" column-index="1" static-type="DATE"/>
			<plan:graph-node type="column-def" name="ITBL.PieceAppearance" schema="" column="PieceAppearance" view="ITBL" column-number="2" column-index="2" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.DeliveryAddressCountry" schema="" column="DeliveryAddressCountry" view="ITBL" column-number="3" column-index="3" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.ShipperCompanyName" schema="" column="ShipperCompanyName" view="ITBL" column-number="4" column-index="4" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.ShipperAccountIdentifier" schema="" column="ShipperAccountIdentifier" view="ITBL" column-number="5" column-index="5" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.ProductName" schema="" column="ProductName" view="ITBL" column-number="6" column-index="6" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.ProductFlow" schema="" column="ProductFlow" view="ITBL" column-number="7" column-index="7" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.ProductExpressDelivery" schema="" column="ProductExpressDelivery" view="ITBL" column-number="8" column-index="8" static-type="INT"/>
			<plan:graph-node type="column-def" name="ITBL.ProductSaturdayDelivery" schema="" column="ProductSaturdayDelivery" view="ITBL" column-number="9" column-index="9" static-type="INT"/>
			<plan:graph-node type="column-def" name="ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" schema="" column="PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" view="ITBL" column-number="10" column-index="10" static-type="INT"/>
			<plan:graph-node type="column-def" name="ITBL.PerformanceServiceCompletionType" schema="" column="PerformanceServiceCompletionType" view="ITBL" column-number="11" column-index="11" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.PerformanceOnTimeServiceCompletion" schema="" column="PerformanceOnTimeServiceCompletion" view="ITBL" column-number="12" column-index="12" static-type="INT"/>
			<plan:graph-node type="column-def" name="ITBL.PerformanceReportingClass" schema="" column="PerformanceReportingClass" view="ITBL" column-number="13" column-index="13" static-type="STRING"/>
			<plan:graph-node type="column-def" name="ITBL.PerformanceMainReasonOfDelay" schema="" column="PerformanceMainReasonOfDelay" view="ITBL" column-number="14" column-index="14" static-type="STRING"/>
		      </plan:vars>
		      <plan:expr>
			<plan:join join-type="hash-join" order="1[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="15" right="15" operator="="/>
			  </plan:join-info>
			  <plan:elems>
			    <plan:template-view permutation="PSO" iri="http://marklogic.com/view/dhlfinal/Piece" schemaID="3981866080684794753" viewID="15101086731936825705">
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.GeneratedBySoftwareRelease" columnID="10671596730514405826"/>
				<plan:graph-node type="column-def" name="ITBL.GeneratedBySoftwareRelease" schema="" column="GeneratedBySoftwareRelease" view="ITBL" column-number="1" column-index="0" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.PieceAppearance" columnID="11628477229120420839"/>
				<plan:graph-node type="column-def" name="ITBL.PieceAppearance" schema="" column="PieceAppearance" view="ITBL" column-number="10" column-index="2" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.DeliveryAddressCountry" columnID="16084373208428115205"/>
				<plan:graph-node type="column-def" name="ITBL.DeliveryAddressCountry" schema="" column="DeliveryAddressCountry" view="ITBL" column-number="36" column-index="3" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ShipperCompanyName" columnID="8339793554352889024"/>
				<plan:graph-node type="column-def" name="ITBL.ShipperCompanyName" schema="" column="ShipperCompanyName" view="ITBL" column-number="38" column-index="4" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ShipperAccountIdentifier" columnID="7806809336108802716"/>
				<plan:graph-node type="column-def" name="ITBL.ShipperAccountIdentifier" schema="" column="ShipperAccountIdentifier" view="ITBL" column-number="45" column-index="5" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ProductName" columnID="6157129137269957417"/>
				<plan:graph-node type="column-def" name="ITBL.ProductName" schema="" column="ProductName" view="ITBL" column-number="53" column-index="6" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ProductFlow" columnID="6647409176132590777"/>
				<plan:graph-node type="column-def" name="ITBL.ProductFlow" schema="" column="ProductFlow" view="ITBL" column-number="54" column-index="7" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ProductExpressDelivery" columnID="13792637639361380925"/>
				<plan:graph-node type="column-def" name="ITBL.ProductExpressDelivery" schema="" column="ProductExpressDelivery" view="ITBL" column-number="57" column-index="8" static-type="INT"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.ProductSaturdayDelivery" columnID="5440070196569726321"/>
				<plan:graph-node type="column-def" name="ITBL.ProductSaturdayDelivery" schema="" column="ProductSaturdayDelivery" view="ITBL" column-number="59" column-index="9" static-type="INT"/>
			      </plan:template-column>
			      <plan:template-column nullable="true">
				<plan:rdf-val column="dhlfinal.Piece.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" columnID="5451324204662466749"/>
				<plan:graph-node type="column-def" name="ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" schema="" column="PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion" view="ITBL" column-number="67" column-index="10" static-type="INT"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.PerformanceServiceCompletionType" columnID="8316772138544799872"/>
				<plan:graph-node type="column-def" name="ITBL.PerformanceServiceCompletionType" schema="" column="PerformanceServiceCompletionType" view="ITBL" column-number="77" column-index="11" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="true">
				<plan:rdf-val column="dhlfinal.Piece.PerformanceOnTimeServiceCompletion" columnID="5872808304689298081"/>
				<plan:graph-node type="column-def" name="ITBL.PerformanceOnTimeServiceCompletion" schema="" column="PerformanceOnTimeServiceCompletion" view="ITBL" column-number="78" column-index="12" static-type="INT"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.PerformanceReportingClass" columnID="7646013120115540820"/>
				<plan:graph-node type="column-def" name="ITBL.PerformanceReportingClass" schema="" column="PerformanceReportingClass" view="ITBL" column-number="79" column-index="13" static-type="STRING"/>
			      </plan:template-column>
			      <plan:template-column nullable="false">
				<plan:rdf-val column="dhlfinal.Piece.PerformanceMainReasonOfDelay" columnID="10644815897162105996"/>
				<plan:graph-node type="column-def" name="ITBL.PerformanceMainReasonOfDelay" schema="" column="PerformanceMainReasonOfDelay" view="ITBL" column-number="81" column-index="14" static-type="STRING"/>
			      </plan:template-column>
			      <plan:row>
				<plan:graph-node type="column-def" name="dhlfinal.Piece.rowid" schema="dhlfinal" column="rowid" view="Piece" column-number="161" column-index="15" static-type="UNKNOWN" hidden="true"/>
			      </plan:row>
			    </plan:template-view>
			    <plan:triple-index order="1[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]" permutation="POS" dedup="false" descending="false" is-column="true">
			      <plan:subject>
				<plan:graph-node type="column-def" name="dhlfinal.Piece.rowid" schema="dhlfinal" column="rowid" view="Piece" column-number="161" column-index="15" static-type="UNKNOWN" hidden="true"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="literal">
				  <plan:rdf-val column="dhlfinal.Piece.PieceShippedDate" columnID="13364940964188105577"/>
				</plan:graph-node>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="column-def" name="ITBL.PieceShippedDate" schema="" column="PieceShippedDate" view="ITBL" column-number="8" column-index="1" static-type="DATE"/>
			      </plan:object>
			      <plan:join-filter op="&lt;=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="ITBL.PieceShippedDate" schema="" column="PieceShippedDate" view="ITBL" column-number="1" column-index="1" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-expr>
				  <plan:literal>
				    <plan:value xsi:type="xs:date" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2020-02-01</plan:value>
				  </plan:literal>
				</plan:right-expr>
			      </plan:join-filter>
			      <plan:join-filter op="&gt;=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="ITBL.PieceShippedDate" schema="" column="PieceShippedDate" view="ITBL" column-number="1" column-index="1" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-expr>
				  <plan:literal>
				    <plan:value xsi:type="xs:date" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2019-01-01</plan:value>
				  </plan:literal>
				</plan:right-expr>
			      </plan:join-filter>
			    </plan:triple-index>
			  </plan:elems>
			</plan:join>
		      </plan:expr>
		    </plan:project>
		  </plan:expr>
		</plan:bind>
	      </plan:expr>
	    </plan:bind>
	  </plan:group>
	</plan:expr>
      </plan:project>
    </plan:select>
  </plan:exprs>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"exprs"}',
'{"_id":"N_1", "_parent":"N", "_name":"select"}',
'{"order":"0[NULLS_LAST],1[NULLS_LAST],2[NULLS_LAST],3[NULLS_LAST],4[NULLS_LAST],5[NULLS_LAST],6[NULLS_LAST],7[NULLS_LAST]", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (PieceShippedDate)", "1 (PieceAppearance)", "2 (ShipperAccountIdentifier)", "3 (ShipperCompanyName)", "4 (DeliveryAddressCountry)", "5 (ProductName)", "6 (ProductExpressDelivery)", "7 (ProductSaturdayDelivery)", "8 (ProductFlow)", "9 (PerformanceReportingClass)", "10 (GeneratedBySoftwareRelease)", "11 (PerformanceMainReasonOfDelay)", "12 (PerformanceServiceCompletionType)", "13 (C1)", "14 (C2)", "15 (C3)"]}',
'{"order":"0[NULLS_LAST],1[NULLS_LAST],2[NULLS_LAST],3[NULLS_LAST],4[NULLS_LAST],5[NULLS_LAST],6[NULLS_LAST],7[NULLS_LAST]", "_id":"N_1_1_1", "type":"sort-group", "_parent":"N_1_1", "order-spec":["1 (ITBL.PieceShippedDate)", "2 (ITBL.PieceAppearance)", "5 (ITBL.ShipperAccountIdentifier)", "4 (ITBL.ShipperCompanyName)", "3 (ITBL.DeliveryAddressCountry)", "6 (ITBL.ProductName)", "8 (ITBL.ProductExpressDelivery)", "9 (ITBL.ProductSaturdayDelivery)", "7 (ITBL.ProductFlow)", "13 (ITBL.PerformanceReportingClass)", "0 (ITBL.GeneratedBySoftwareRelease)", "14 (ITBL.PerformanceMainReasonOfDelay)", "11 (ITBL.PerformanceServiceCompletionType)"], "_name":"group", "num-sorted":"1", "aggregate":["count(*) as C1", "sum(?ANON16609040288126497469) as C2", "sum(?ANON5921023258456302510) as C3", "sample(ITBL.PieceShippedDate) as PieceShippedDate", "sample(ITBL.PieceAppearance) as PieceAppearance", "sample(ITBL.ShipperAccountIdentifier) as ShipperAccountIdentifier", "sample(ITBL.ShipperCompanyName) as ShipperCompanyName", "sample(ITBL.DeliveryAddressCountry) as DeliveryAddressCountry", "sample(ITBL.ProductName) as ProductName", "sample(ITBL.ProductExpressDelivery) as ProductExpressDelivery", "sample(ITBL.ProductSaturdayDelivery) as ProductSaturdayDelivery", "sample(ITBL.ProductFlow) as ProductFlow", "sample(ITBL.PerformanceReportingClass) as PerformanceReportingClass", "sample(ITBL.GeneratedBySoftwareRelease) as GeneratedBySoftwareRelease", "sample(ITBL.PerformanceMainReasonOfDelay) as PerformanceMainReasonOfDelay", "sample(ITBL.PerformanceServiceCompletionType) as PerformanceServiceCompletionType"]}',
'{"_id":"N_1_1_1_1", "expr":"ITBL.PerformanceOnTimeServiceCompletion as ?ANON5921023258456302510", "_parent":"N_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1", "expr":"ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion as ?ANON16609040288126497469", "_parent":"N_1_1_1_1", "_name":"bind"}',
'{"order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1", "_name":"project", "column":["0 (ITBL.GeneratedBySoftwareRelease)", "1 (ITBL.PieceShippedDate)", "2 (ITBL.PieceAppearance)", "3 (ITBL.DeliveryAddressCountry)", "4 (ITBL.ShipperCompanyName)", "5 (ITBL.ShipperAccountIdentifier)", "6 (ITBL.ProductName)", "7 (ITBL.ProductFlow)", "8 (ITBL.ProductExpressDelivery)", "9 (ITBL.ProductSaturdayDelivery)", "10 (ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion)", "11 (ITBL.PerformanceServiceCompletionType)", "12 (ITBL.PerformanceOnTimeServiceCompletion)", "13 (ITBL.PerformanceReportingClass)", "14 (ITBL.PerformanceMainReasonOfDelay)"]}',
'{"order":"1[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1", "condition":"15=15", "_name":"hash-join"}',
'{"iri":"http://marklogic.com/view/dhlfinal/Piece", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_L", "viewID":"15101086731936825705", "row":"15 (dhlfinal.Piece.rowid)", "schemaID":"3981866080684794753", "permutation":"PSO", "_parent":"N_1_1_1_1_1_1_1", "_name":"template-view", "column":["0 (ITBL.GeneratedBySoftwareRelease)", "2 (ITBL.PieceAppearance)", "3 (ITBL.DeliveryAddressCountry)", "4 (ITBL.ShipperCompanyName)", "5 (ITBL.ShipperAccountIdentifier)", "6 (ITBL.ProductName)", "7 (ITBL.ProductFlow)", "8 (ITBL.ProductExpressDelivery)", "9 (ITBL.ProductSaturdayDelivery)", "10 (ITBL.PerformanceMeasurabilityE2EActualTransitTimeToServiceCompletion) [nullable]", "11 (ITBL.PerformanceServiceCompletionType)", "12 (ITBL.PerformanceOnTimeServiceCompletion) [nullable]", "13 (ITBL.PerformanceReportingClass)", "14 (ITBL.PerformanceMainReasonOfDelay)"]}',
'{"dedup":"false", "_parentLabel":"right", "predicate":"dhlfinal.Piece.PieceShippedDate (13364940964188105577)", "order":"1[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1_1_R", "_parent":"N_1_1_1_1_1_1_1", "permutation":"POS", "subject":"15 (dhlfinal.Piece.rowid)", "_name":"triple-index", "is-column":"true", "descending":"false", "object":"1 (ITBL.PieceShippedDate)"}',
'{"left-graph-node":{"view":"ITBL", "type":"column-def", "column-index":"1", "schema":"", "column":"PieceShippedDate", "name":"ITBL.PieceShippedDate"}, "_id":"N_1_1_1_1_1_1_1_R_1", "_parent":"N_1_1_1_1_1_1_1_R", "condition":"ITBL.PieceShippedDate<=xs:date(\"2020-02-01\")", "_name":"join-filter", "op":"<="}',
'{"left-graph-node":{"view":"ITBL", "type":"column-def", "column-index":"1", "schema":"", "column":"PieceShippedDate", "name":"ITBL.PieceShippedDate"}, "_id":"N_1_1_1_1_1_1_1_R_2", "_parent":"N_1_1_1_1_1_1_1_R", "condition":"ITBL.PieceShippedDate>=xs:date(\"2019-01-01\")", "_name":"join-filter", "op":">="}'
))
};

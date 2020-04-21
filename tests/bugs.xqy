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

module namespace t = "http://marklogic.com/optic/qputils/bugs";
declare default function namespace "http://marklogic.com/optic/qputils/bugs";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function bugs()
{
map:entry("name","bug54503")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:exprs>
    <plan:select>
      <plan:project id="6143327891853250125" order="last(0),last(1),last(2),last(3),last(4)">
	<plan:column type="column-def" column="replacementvalue2" column-number="0" column-index="0" static-type="DATE_TIME"/>
	<plan:column type="column-def" column="PmryURI" column-number="1" column-index="1" static-type="STRING"/>
	<plan:column type="column-def" column="stocksymbol" column-number="2" column-index="2" static-type="STRING"/>
	<plan:column type="column-def" column="replacementvalue1" column-number="3" column-index="3" static-type="INT"/>
	<plan:column type="column-def" column="replacementvalue3" column-number="4" column-index="4" static-type="FLOAT"/>
	<plan:column type="column-def" column="c1" column-number="5" column-index="5" static-type="UINT"/>
	<plan:column type="column-def" column="c2" column-number="6" column-index="6" static-type="DOUBLE"/>
	<plan:column type="column-def" column="c3" column-number="7" column-index="7" static-type="DOUBLE"/>
	<plan:group type="sort-group" num-sorted="0" id="15529369139399732351" order="last(0),last(1),last(2),last(3),last(4)" cost="2.26567e+06" estimated-count="3265" io-cost="0/97984.7/0/195969/0" nw-cost="106/11427.5/0/22961/0" cpu-cost="0/182159/79929.4/182159/79929.4" dcpu-cost="0/108425/0/216850/0" mem-cost="29394" dmem-cost="0" cardinalities="(3235.5,3235.5),(3265,3265),(758,758),(3265,3265),(3265,3265),(3265,3265),(3265,3265),(3265,3265)">
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="ReplacementValue2" column-number="5" column-index="4"/>
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="PmryURI" column-number="0" column-index="0"/>
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="StockSymbol" column-number="2" column-index="1"/>
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="ReplacementValue1" column-number="4" column-index="3"/>
	  <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="t" column="ReplacementValue3" column-number="6" column-index="5"/>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="count" distinct="false"/>
	    <plan:column type="column-def" column="c1" column-number="5" column-index="5"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sum" distinct="false">
	      <plan:sparql-variable column-index="6">
		<plan:qname name="ANON4789414984774635030" uri="" prfx="" ltrl="ANON4789414984774635030"/>
	      </plan:sparql-variable>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="c2" column-number="6" column-index="6"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sum" distinct="false">
	      <plan:sparql-variable column-index="7">
		<plan:qname name="ANON12410791341368640395" uri="" prfx="" ltrl="ANON12410791341368640395"/>
	      </plan:sparql-variable>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="c3" column-number="7" column-index="7"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sample" distinct="false">
	      <plan:column-ref schema="" view="t" column="ReplacementValue2" column-index="4" column-number="5" in-match="false">
		<plan:qname name="t.ReplacementValue2" uri="" prfx="" ltrl="t.ReplacementValue2"/>
	      </plan:column-ref>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="replacementvalue2" column-number="0" column-index="0"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sample" distinct="false">
	      <plan:column-ref schema="" view="t" column="PmryURI" column-index="0" column-number="0" in-match="false">
		<plan:qname name="t.PmryURI" uri="" prfx="" ltrl="t.PmryURI"/>
	      </plan:column-ref>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="PmryURI" column-number="1" column-index="1"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sample" distinct="false">
	      <plan:column-ref schema="" view="t" column="StockSymbol" column-index="1" column-number="2" in-match="false">
		<plan:qname name="t.StockSymbol" uri="" prfx="" ltrl="t.StockSymbol"/>
	      </plan:column-ref>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="stocksymbol" column-number="2" column-index="2"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sample" distinct="false">
	      <plan:column-ref schema="" view="t" column="ReplacementValue1" column-index="3" column-number="4" in-match="false">
		<plan:qname name="t.ReplacementValue1" uri="" prfx="" ltrl="t.ReplacementValue1"/>
	      </plan:column-ref>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="replacementvalue1" column-number="3" column-index="3"/>
	  </plan:aggregate-bind>
	  <plan:aggregate-bind>
	    <plan:aggregate-function name="sample" distinct="false">
	      <plan:column-ref schema="" view="t" column="ReplacementValue3" column-index="5" column-number="6" in-match="false">
		<plan:qname name="t.ReplacementValue3" uri="" prfx="" ltrl="t.ReplacementValue3"/>
	      </plan:column-ref>
	    </plan:aggregate-function>
	    <plan:column type="column-def" column="replacementvalue3" column-number="4" column-index="4"/>
	  </plan:aggregate-bind>
	  <plan:bind>
	    <plan:column type="var" name="ANON12410791341368640395" column-index="7" hidden="true"/>
	    <plan:expr>
	      <plan:column-ref schema="" view="t" column="NumShares" column-index="2" column-number="3" in-match="false">
		<plan:qname name="t.NumShares" uri="" prfx="" ltrl="t.NumShares"/>
	      </plan:column-ref>
	    </plan:expr>
	    <plan:bind>
	      <plan:column type="var" name="ANON4789414984774635030" column-index="6" hidden="true"/>
	      <plan:expr>
		<plan:column-ref schema="" view="t" column="ReplacementValue1" column-index="3" column-number="4" in-match="false">
		  <plan:qname name="t.ReplacementValue1" uri="" prfx="" ltrl="t.ReplacementValue1"/>
		</plan:column-ref>
	      </plan:expr>
	      <plan:project id="13710647586718886835" order="">
		<plan:column type="column-def" view="t" column="PmryURI" column-number="0" column-index="0" static-type="STRING"/>
		<plan:column type="column-def" view="t" column="StockSymbol" column-number="2" column-index="1" static-type="STRING"/>
		<plan:column type="column-def" view="t" column="NumShares" column-number="3" column-index="2" static-type="INT"/>
		<plan:column type="column-def" view="t" column="ReplacementValue1" column-number="4" column-index="3" static-type="INT"/>
		<plan:column type="column-def" view="t" column="ReplacementValue2" column-number="5" column-index="4" static-type="DATE_TIME"/>
		<plan:column type="column-def" view="t" column="ReplacementValue3" column-number="6" column-index="5" static-type="FLOAT"/>
		<plan:template-view type="column" iri="http://marklogic.com/view/trades/trade" schemaID="9857411627549457592" viewID="3768965647449769796" id="7258423405197875665" order="6">
		  <plan:column nullable="false">
		    <plan:id column="trades.trade.PmryURI" columnID="9639348880761418361"/>
		    <plan:name type="column-def" view="t" column="PmryURI" column-number="0" column-index="0" static-type="STRING"/>
		  </plan:column>
		  <plan:column nullable="false">
		    <plan:id column="trades.trade.StockSymbol" columnID="15275347313965385938"/>
		    <plan:name type="column-def" view="t" column="StockSymbol" column-number="2" column-index="1" static-type="STRING"/>
		  </plan:column>
		  <plan:column nullable="false">
		    <plan:id column="trades.trade.NumShares" columnID="10212418283399709862"/>
		    <plan:name type="column-def" view="t" column="NumShares" column-number="3" column-index="2" static-type="INT"/>
		  </plan:column>
		  <plan:column nullable="true">
		    <plan:id column="trades.trade.ReplacementValue1" columnID="15860472285545143429"/>
		    <plan:name type="column-def" view="t" column="ReplacementValue1" column-number="4" column-index="3" static-type="INT"/>
		  </plan:column>
		  <plan:column nullable="true">
		    <plan:id column="trades.trade.ReplacementValue3" columnID="15861598175400249989"/>
		    <plan:name type="column-def" view="t" column="ReplacementValue3" column-number="6" column-index="5" static-type="FLOAT"/>
		  </plan:column>
		  <plan:column nullable="false">
		    <plan:id column="trades.trade.ReplacementValue2" columnID="15857939012442189445"/>
		    <plan:name type="column-def" view="t" column="ReplacementValue2" column-number="5" column-index="4" static-type="DATE_TIME"/>
		  </plan:column>
		  <plan:row type="column-def" schema="trades" view="trade" column="rowid" column-number="106" column-index="6" hidden="true"/>
		  <plan:join-filter op="&lt;=">
		    <plan:left type="column-def" view="t" column="ReplacementValue2" column-number="5" column-index="4"/>
		    <plan:right-expr>
		      <plan:literal>
			<plan:value xsi:type="xs:dateTime" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2016-12-06T16:44:26</plan:value>
		      </plan:literal>
		    </plan:right-expr>
		  </plan:join-filter>
		  <plan:join-filter op="&gt;=">
		    <plan:left type="column-def" view="t" column="ReplacementValue2" column-number="5" column-index="4"/>
		    <plan:right-expr>
		      <plan:literal>
			<plan:value xsi:type="xs:dateTime" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2016-12-06T15:28:32</plan:value>
		      </plan:literal>
		    </plan:right-expr>
		  </plan:join-filter>
		</plan:template-view>
	      </plan:project>
	    </plan:bind>
	  </plan:bind>
	</plan:group>
      </plan:project>
    </plan:select>
  </plan:exprs>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"exprs"}',
'{"_id":"N_1", "_parent":"N", "_name":"select"}',
'{"order":"last(0),last(1),last(2),last(3),last(4)", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (replacementvalue2)", "1 (PmryURI)", "2 (stocksymbol)", "3 (replacementvalue1)", "4 (replacementvalue3)", "5 (c1)", "6 (c2)", "7 (c3)"], "id":"6143327891853250125"}',
'{"cost":"2.26567e+06", "nw-cost":"106/11427.5/0/22961/0", "cpu-cost":"0/182159/79929.4/182159/79929.4", "order":"last(0),last(1),last(2),last(3),last(4)", "_name":"group", "num-sorted":"0", "dcpu-cost":"0/108425/0/216850/0", "id":"15529369139399732351", "_id":"N_1_1_1", "type":"sort-group", "_parent":"N_1_1", "mem-cost":"29394", "io-cost":"0/97984.7/0/195969/0", "estimated-count":"3265", "dmem-cost":"0", "cardinalities":"(3235.5,3235.5),(3265,3265),(758,758),(3265,3265),(3265,3265),(3265,3265),(3265,3265),(3265,3265)", "order-spec":["4 (t.ReplacementValue2)", "0 (t.PmryURI)", "1 (t.StockSymbol)", "3 (t.ReplacementValue1)", "5 (t.ReplacementValue3)"], "aggregate":["count(*) as c1", "sum(?ANON4789414984774635030) as c2", "sum(?ANON12410791341368640395) as c3", "sample(t.ReplacementValue2) as replacementvalue2", "sample(t.PmryURI) as PmryURI", "sample(t.StockSymbol) as stocksymbol", "sample(t.ReplacementValue1) as replacementvalue1", "sample(t.ReplacementValue3) as replacementvalue3"]}',
'{"_id":"N_1_1_1_1", "expr":"t.NumShares as ?ANON12410791341368640395", "_parent":"N_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1", "expr":"t.ReplacementValue1 as ?ANON4789414984774635030", "_parent":"N_1_1_1_1", "_name":"bind"}',
'{"order":"", "_id":"N_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1", "_name":"project", "column":["0 (t.PmryURI)", "1 (t.StockSymbol)", "2 (t.NumShares)", "3 (t.ReplacementValue1)", "4 (t.ReplacementValue2)", "5 (t.ReplacementValue3)"], "id":"13710647586718886835"}',
'{"iri":"http://marklogic.com/view/trades/trade", "order":"6", "_id":"N_1_1_1_1_1_1_1", "type":"column", "viewID":"3768965647449769796", "schemaID":"9857411627549457592", "row":"6 (trades.trade.rowid)", "_parent":"N_1_1_1_1_1_1", "_name":"template-view", "column":["0 (t.PmryURI)", "1 (t.StockSymbol)", "2 (t.NumShares)", "3 (t.ReplacementValue1) [nullable]", "5 (t.ReplacementValue3) [nullable]", "4 (t.ReplacementValue2)"], "id":"7258423405197875665"}',
'{"_id":"N_1_1_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1", "condition":"t.ReplacementValue2<=xs:dateTime(\"2016-12-06T16:44:26\")", "left":{"view":"t", "type":"column-def", "column-index":"4", "column":"ReplacementValue2"}, "_name":"join-filter", "op":"<="}',
'{"_id":"N_1_1_1_1_1_1_1_2", "_parent":"N_1_1_1_1_1_1_1", "condition":"t.ReplacementValue2>=xs:dateTime(\"2016-12-06T15:28:32\")", "left":{"view":"t", "type":"column-def", "column-index":"4", "column":"ReplacementValue2"}, "_name":"join-filter", "op":">="}'
)),
map:entry("name","sc27362")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:limit>
      <plan:limit>
	<plan:graph-node type="literal">
	  <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#integer">21</plan:rdf-val>
	</plan:graph-node>
      </plan:limit>
      <plan:expr>
	<plan:distinct>
	  <plan:project order="">
	    <plan:vars>
	      <plan:graph-node type="var" name="id" column-index="0" static-type="NONE"/>
	    </plan:vars>
	    <plan:expr>
	      <plan:filter>
		<plan:filters>
		  <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="not">
		    <plan:builtin uri="http://marklogic.com/semantics" name="isBlank">
		      <plan:sparql-variable column-index="0">
			<plan:qname name="id" uri="" prfx="" ltrl="id"/>
		      </plan:sparql-variable>
		    </plan:builtin>
		  </plan:builtin>
		</plan:filters>
		<plan:sparql-negation-join type="left-hash-negation-join" order="">
		  <plan:join-info>
		    <plan:hash left="0" right="0" operator="="/>
		  </plan:join-info>
		  <plan:expr>
		    <plan:sparql-negation-join type="left-hash-negation-join" order="">
		      <plan:join-info>
			<plan:hash left="0" right="0" operator="="/>
		      </plan:join-info>
		      <plan:expr>
			<plan:join join-type="hash-join" order="">
			  <plan:join-info>
			    <plan:hash left="1" right="1" operator="="/>
			  </plan:join-info>
			  <plan:elems>
			    <plan:join join-type="scatter-join" order="0,1">
			      <plan:join-info>
				<plan:hash left="0" right="0" operator="="/>
				<plan:filters>
				  <plan:join-filter op="=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="id" schema="" column="id" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-graph-node>
				      <plan:graph-node type="column-def" name="id" schema="" column="id" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
				    </plan:right-graph-node>
				  </plan:join-filter>
				</plan:filters>
			      </plan:join-info>
			      <plan:elems>
				<plan:values>
				  <plan:graph-node type="var" name="id" column-index="0" static-type="NONE"/>
				  <plan:bindings>
				    <plan:rdf-val>urn:pearson:distributable:66dc8ff1-e0bc-4623-b0b3-e35b537714c1</plan:rdf-val>
				  </plan:bindings>
				</plan:values>
				<plan:triple-index order="0,1" permutation="PSO" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="id" column-index="0" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
				      <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="type" column-index="1" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			    <plan:values>
			      <plan:graph-node type="var" name="type" column-index="1" static-type="NONE"/>
			      <plan:bindings><plan:rdf-val>https://schema.pearson.com/ns/system/Connections</plan:rdf-val>
                                                                  ... about 100 values here ...
                                                              <plan:rdf-val>http://schema.org/Book</plan:rdf-val></plan:bindings>
			    </plan:values>
			  </plan:elems>
			</plan:join>
		      </plan:expr>
		      <plan:negation-expr>
			<plan:triple-index order="2,0,3" permutation="PSO" dedup="true" descending="false" is-column="false">
			  <plan:subject>
			    <plan:graph-node type="var" name="id" column-index="0" static-type="NONE"/>
			  </plan:subject>
			  <plan:predicate>
			    <plan:graph-node type="var" name="p" column-index="2" static-type="NONE"/>
			  </plan:predicate>
			  <plan:object>
			    <plan:graph-node type="var" name="o" column-index="3" static-type="NONE"/>
			  </plan:object>
			  <plan:graph>
			    <plan:graph-node type="iri" name="https://data.pearson.com/graph/ontology/1" static-type="NONE">
			      <plan:rdf-val>https://data.pearson.com/graph/ontology/1</plan:rdf-val>
			    </plan:graph-node>
			  </plan:graph>
			</plan:triple-index>
		      </plan:negation-expr>
		      <plan:filters/>
		      <plan:ljfilters/>
		    </plan:sparql-negation-join>
		  </plan:expr>
		  <plan:negation-expr>
		    <plan:triple-index order="2,0,3" permutation="PSO" dedup="true" descending="false" is-column="false">
		      <plan:subject>
			<plan:graph-node type="var" name="id" column-index="0" static-type="NONE"/>
		      </plan:subject>
		      <plan:predicate>
			<plan:graph-node type="var" name="p" column-index="2" static-type="NONE"/>
		      </plan:predicate>
		      <plan:object>
			<plan:graph-node type="var" name="o" column-index="3" static-type="NONE"/>
		      </plan:object>
		      <plan:graph>
			<plan:graph-node type="iri" name="https://data.pearson.com/graph/systemconfiguration/1" static-type="NONE">
			  <plan:rdf-val>https://data.pearson.com/graph/systemconfiguration/1</plan:rdf-val>
			</plan:graph-node>
		      </plan:graph>
		    </plan:triple-index>
		  </plan:negation-expr>
		  <plan:filters/>
		  <plan:ljfilters/>
		</plan:sparql-negation-join>
	      </plan:filter>
	    </plan:expr>
	  </plan:project>
	</plan:distinct>
      </plan:expr>
    </plan:limit>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"limit":"21", "_id":"N_1", "_parent":"N", "_name":"limit"}',
'{"_id":"N_1_1", "_parent":"N_1", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1", "_parent":"N_1_1", "_name":"project", "column":"0 (?id)"}',
'{"_id":"N_1_1_1_1", "_parent":"N_1_1_1", "condition":"fn:not(sem:isBlank(?id))", "_name":"filter"}',
'{"order":"", "_id":"N_1_1_1_1_1", "_parent":"N_1_1_1_1", "condition":"0=0", "_name":"left-hash-negation-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1", "condition":"0=0", "_name":"left-hash-negation-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_1_1_L_L", "_parent":"N_1_1_1_1_1_L", "condition":"1=1", "_name":"hash-join"}',
'{"_parentLabel":"left", "order":"0,1", "_id":"N_1_1_1_1_1_L_L_L", "_parent":"N_1_1_1_1_1_L_L", "condition":"0=0", "_name":"scatter-join"}',
'{"_parentLabel":"left", "_id":"N_1_1_1_1_1_L_L_L_L", "_parent":"N_1_1_1_1_1_L_L_L", "bindings":"<urn:pearson:distributable:66dc8ff1-e0bc-4623-b0b3-e35b537714c1>", "_name":"values", "column":"0 (?id)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>", "order":"0,1", "_id":"N_1_1_1_1_1_L_L_L_R", "_parent":"N_1_1_1_1_1_L_L_L", "permutation":"PSO", "subject":"0 (?id)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?type)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_L_L_R", "_parent":"N_1_1_1_1_1_L_L", "bindings":["<https://schema.pearson.com/ns/system/Connections>", "<http://schema.org/Book>"], "_name":"values", "column":"1 (?type)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_L_L_R", "_parent":"N_1_1_1_1_1_L_L", "bindings":["<https://schema.pearson.com/ns/system/Connections>", "<http://schema.org/Book>"], "_name":"values", "column":"1 (?type)"}',
'{"dedup":"true", "order":"2,0,3", "subject":"0 (?id)", "_name":"triple-index", "is-column":"false", "descending":"false", "_parentLabel":"right", "predicate":"2 (?p)", "_id":"N_1_1_1_1_1_L_R", "_parent":"N_1_1_1_1_1_L", "permutation":"PSO", "object":"3 (?o)", "graph":"<https://data.pearson.com/graph/ontology/1>"}',
'{"dedup":"true", "order":"2,0,3", "subject":"0 (?id)", "_name":"triple-index", "is-column":"false", "descending":"false", "_parentLabel":"right", "predicate":"2 (?p)", "_id":"N_1_1_1_1_1_R", "_parent":"N_1_1_1_1_1", "permutation":"PSO", "object":"3 (?o)", "graph":"<https://data.pearson.com/graph/systemconfiguration/1>"}'
))
};

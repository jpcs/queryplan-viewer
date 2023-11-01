xquery version "1.0-ml";

(:
 : Copyright (c) 2021 MarkLogic Corporation
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
'{"_id":"N_1", "_name":"select", "_parent":"N"}',
'{"_id":"N_1_1", "_name":"project", "_parent":"N_1", "column":["0 (replacementvalue2)", "1 (PmryURI)", "2 (stocksymbol)", "3 (replacementvalue1)", "4 (replacementvalue3)", "5 (c1)", "6 (c2)", "7 (c3)"], "id":"6143327891853250125", "order":"last(0),last(1),last(2),last(3),last(4)"}',
'{"_id":"N_1_1_1", "_name":"group", "_parent":"N_1_1", "aggregate":["count(*) as c1", "sum(?ANON4789414984774635030) as c2", "sum(?ANON12410791341368640395) as c3", "sample(t.ReplacementValue2) as replacementvalue2", "sample(t.PmryURI) as PmryURI", "sample(t.StockSymbol) as stocksymbol", "sample(t.ReplacementValue1) as replacementvalue1", "sample(t.ReplacementValue3) as replacementvalue3"], "cardinalities":"(3235.5,3235.5),(3265,3265),(758,758),(3265,3265),(3265,3265),(3265,3265),(3265,3265),(3265,3265)", "cost":"2.26567e+06", "cpu-cost":"0/182159/79929.4/182159/79929.4", "dcpu-cost":"0/108425/0/216850/0", "dmem-cost":"0", "estimated-count":"3265", "id":"15529369139399732351", "io-cost":"0/97984.7/0/195969/0", "mem-cost":"29394", "num-sorted":"0", "nw-cost":"106/11427.5/0/22961/0", "order":"last(0),last(1),last(2),last(3),last(4)", "order-spec":["4 (t.ReplacementValue2)", "0 (t.PmryURI)", "1 (t.StockSymbol)", "3 (t.ReplacementValue1)", "5 (t.ReplacementValue3)"], "type":"sort-group"}',
'{"_id":"N_1_1_1_1", "_name":"bind", "_parent":"N_1_1_1", "expr":["t.NumShares as ?ANON12410791341368640395", "t.ReplacementValue1 as ?ANON4789414984774635030"]}',
'{"_id":"N_1_1_1_1_1", "_name":"project", "_parent":"N_1_1_1_1", "column":["0 (t.PmryURI)", "1 (t.StockSymbol)", "2 (t.NumShares)", "3 (t.ReplacementValue1)", "4 (t.ReplacementValue2)", "5 (t.ReplacementValue3)"], "id":"13710647586718886835", "order":""}',
'{"_id":"N_1_1_1_1_1_1", "_name":"template-view", "_parent":"N_1_1_1_1_1", "column":["0 (t.PmryURI)", "1 (t.StockSymbol)", "2 (t.NumShares)", "3 (t.ReplacementValue1) [nullable]", "5 (t.ReplacementValue3) [nullable]", "4 (t.ReplacementValue2)"], "id":"7258423405197875665", "iri":"http://marklogic.com/view/trades/trade", "order":"6", "row":"6 (trades.trade.rowid)", "schemaID":"9857411627549457592", "type":"column", "viewID":"3768965647449769796"}',
'{"_id":"N_1_1_1_1_1_1_1", "_name":"join-filter", "_parent":"N_1_1_1_1_1_1", "condition":"t.ReplacementValue2<=xs:dateTime(\"2016-12-06T16:44:26\")", "left":{"column":"ReplacementValue2", "column-index":"4", "type":"column-def", "view":"t"}, "op":"<="}',
'{"_id":"N_1_1_1_1_1_1_2", "_name":"join-filter", "_parent":"N_1_1_1_1_1_1", "condition":"t.ReplacementValue2>=xs:dateTime(\"2016-12-06T15:28:32\")", "left":{"column":"ReplacementValue2", "column-index":"4", "type":"column-def", "view":"t"}, "op":">="}'
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
				    <plan:rdf-val>urn:p:distributable:66dc8ff1-e0bc-4623-b0b3-e35b537714c1</plan:rdf-val>
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
			      <plan:bindings>
                                <plan:rdf-val>https://schema.p.com/ns/system/Connections</plan:rdf-val>
                                <plan:rdf-val>http://schema.org/Book</plan:rdf-val>
                              </plan:bindings>
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
			    <plan:graph-node type="iri" name="https://data.p.com/graph/ontology/1" static-type="NONE">
			      <plan:rdf-val>https://data.p.com/graph/ontology/1</plan:rdf-val>
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
			<plan:graph-node type="iri" name="https://data.p.com/graph/systemconfiguration/1" static-type="NONE">
			  <plan:rdf-val>https://data.p.com/graph/systemconfiguration/1</plan:rdf-val>
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
'{"_id":"N_1", "_name":"limit", "_parent":"N", "limit":"21"}',
'{"_id":"N_1_1", "_name":"distinct", "_parent":"N_1"}',
'{"_id":"N_1_1_1", "_name":"project", "_parent":"N_1_1", "column":"0 (?id)", "order":""}',
'{"_id":"N_1_1_1_1", "_name":"filter", "_parent":"N_1_1_1", "condition":"fn:not(sem:isBlank(?id))"}',
'{"_id":"N_1_1_1_1_1", "_name":"left-hash-negation-join", "_parent":"N_1_1_1_1", "condition":"0=0", "lang":"sparql", "order":""}',
'{"_id":"N_1_1_1_1_1_L", "_name":"left-hash-negation-join", "_parent":"N_1_1_1_1_1", "_parentLabel":"left", "condition":"0=0", "lang":"sparql", "order":""}',
'{"_id":"N_1_1_1_1_1_L_L", "_name":"hash-join", "_parent":"N_1_1_1_1_1_L", "_parentLabel":"left", "condition":"1=1", "order":""}',
'{"_id":"N_1_1_1_1_1_L_L_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_L_L", "_parentLabel":"left", "condition":"0=0", "order":"0,1"}',
'{"_id":"N_1_1_1_1_1_L_L_L_L", "_name":"values", "_parent":"N_1_1_1_1_1_L_L_L", "_parentLabel":"left", "bindings":"<urn:p:distributable:66dc8ff1-e0bc-4623-b0b3-e35b537714c1>", "column":"0 (?id)"}',
'{"_id":"N_1_1_1_1_1_L_L_L_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_L_L_L", "_parentLabel":"right", "dedup":"true", "descending":"false", "is-column":"false", "object":"1 (?type)", "order":"0,1", "permutation":"PSO", "predicate":"rdf:type", "subject":"0 (?id)"}',
'{"_id":"N_1_1_1_1_1_L_L_R", "_name":"values", "_parent":"N_1_1_1_1_1_L_L", "_parentLabel":"right", "bindings":["<https://schema.p.com/ns/system/Connections>", "<http://schema.org/Book>"], "column":"1 (?type)"}',
'{"_id":"N_1_1_1_1_1_L_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_L", "_parentLabel":"right", "dedup":"true", "descending":"false", "graph":"<https://data.p.com/graph/ontology/1>", "is-column":"false", "object":"3 (?o)", "order":"2,0,3", "permutation":"PSO", "predicate":"2 (?p)", "subject":"0 (?id)"}',
'{"_id":"N_1_1_1_1_1_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1", "_parentLabel":"right", "dedup":"true", "descending":"false", "graph":"<https://data.p.com/graph/systemconfiguration/1>", "is-column":"false", "object":"3 (?o)", "order":"2,0,3", "permutation":"PSO", "predicate":"2 (?p)", "subject":"0 (?id)"}'
))
,
map:entry("name","one-or-more")
=>map:with("plan",
<plan:plan xmlns:plan='http://marklogic.com/plan'>
  <plan:select>
    <plan:from>
      <plan:default-graph>
        <plan:value>http://marklogic.com/semantics#default-graph</plan:value>
        <plan:value>https://content.com/collection/ontology</plan:value>
        <plan:value>https://content.com/collection/content/ImageObject/en-US</plan:value>
        <plan:value>https://content.com/collection/content/ImageObject/subclassed/en-US</plan:value>
        <plan:value>https://content.com/collection/content/Thing/subclassed</plan:value>
        <plan:value>https://content.com/collection/gin/Thing/subclassed</plan:value>
        <plan:value>https://content.com/collection/gin/Classification/subclassed</plan:value>
        <plan:value>https://content.com/collection/gin/AssetType</plan:value>
        <plan:value>https://content.com/collection/gin/AssetType/subclassed</plan:value>
      </plan:default-graph>
    </plan:from>
    <plan:distinct>
      <plan:project order=''>
        <plan:column column-index='0' name='subject' type='var' />
        <plan:order-by num-sorted='0' order='last(5),desc(last(4))'>
          <plan:order-spec column-index='5' descending='false' hidden='true' name='ANON2266679090434743153' nulls-first='false' type='var' />
          <plan:order-spec column-index='4' descending='true' name='4' nulls-first='false' type='var' />
          <plan:bind>
            <plan:column column-index='5' hidden='true' name='ANON2266679090434743153' type='var' />
            <plan:expr>
              <plan:builtin name='not' uri='http://www.w3.org/2005/xpath-functions'>
                <plan:builtin name='exists' uri='http://www.w3.org/2005/xpath-functions'>
                  <plan:sparql-variable column-index='4'>
                    <plan:qname ltrl='4' name='4' prfx='' uri='' />
                  </plan:sparql-variable>
                </plan:builtin>
              </plan:builtin>
            </plan:expr>
            <plan:left-join order='' type='left-scatter-join'>
              <plan:hash left='0' op='=' right='0' />
              <plan:scatter left='0' op='=' right='0' />
              <plan:join order='' type='scatter-join'>
                <plan:hash left='0' op='=' right='0' />
                <plan:scatter left='0' op='=' right='0' />
                <plan:join order='' type='scatter-join'>
                  <plan:hash left='0' op='=' right='0' />
                  <plan:scatter left='0' op='=' right='0' />
                  <plan:join order='0' type='scatter-join'>
                    <plan:hash left='0' op='=' right='0' />
                    <plan:scatter left='0' op='=' right='0' />
                    <plan:join order='1,0' type='scatter-join'>
                      <plan:hash left='1' op='=' right='1' />
                      <plan:scatter left='1' op='=' right='1' />
                      <plan:triple-index dedup='true' order='1' permutation='OPS'>
                        <plan:subject column-index='1' hidden='true' name='ANON3064792102711755591' type='blank' />
                        <plan:predicate type='iri'>https://content.com/id</plan:predicate>
                        <plan:object name='0' type='global-variable' />
                      </plan:triple-index>
                      <plan:triple-index dedup='true' order='1,0' permutation='POS'>
                        <plan:subject column-index='0' name='subject' type='var' />
                        <plan:predicate type='iri'>https://content.com/mainEntity</plan:predicate>
                        <plan:object column-index='1' hidden='true' name='ANON3064792102711755591' type='blank' />
                      </plan:triple-index>
                    </plan:join>
                    <plan:triple-index dedup='true' order='0' permutation='OPS'>
                      <plan:subject column-index='0' name='subject' type='var' />
                      <plan:predicate type='iri'>https://content.com/locale</plan:predicate>
                      <plan:object name='3' type='global-variable' />
                    </plan:triple-index>
                  </plan:join>
                  <plan:sparql-union order='' type='concat-union'>
                    <plan:triple-index dedup='true' order='0,2' permutation='PSO'>
                      <plan:subject column-index='0' name='subject' type='var' />
                      <plan:predicate type='iri'>https://content.com/assetType</plan:predicate>
                      <plan:object column-index='2' name='1' type='var' />
                      <plan:join-filter op='='>
                        <plan:left column-index='2' name='1' type='var' />
                        <plan:right-expr>
                          <plan:literal>
                            <plan:value xmlns:sem='http://marklogic.com/semantics' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:type='sem:iri'>https://content.com/data/AssetType/t-screenshot</plan:value>
                            <plan:value xmlns:sem='http://marklogic.com/semantics' xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xsi:type='sem:iri'>https://content.com/data/AssetType/ig-screenshot</plan:value>
                          </plan:literal>
                        </plan:right-expr>
                      </plan:join-filter>
                    </plan:triple-index>
                    <plan:sparql-exists-join order='' type='right-hash'>
                      <plan:hash left='0' op='=' right='0' />
                      <plan:expr>
                        <plan:join order='' type='scatter-join'>
                          <plan:hash left='0' op='=' right='0' />
                          <plan:scatter left='0' op='=' right='0' />
                          <plan:join order='0' type='scatter-join'>
                            <plan:hash left='0' op='=' right='0' />
                            <plan:scatter left='0' op='=' right='0' />
                            <plan:join order='3,0' type='scatter-join'>
                              <plan:hash left='3' op='=' right='3' />
                              <plan:scatter left='3' op='=' right='3' />
                              <plan:triple-index dedup='true' order='3' permutation='OPS'>
                                <plan:subject column-index='3' hidden='true' name='ANON16715473614359753352' type='blank' />
                                <plan:predicate type='iri'>https://content.com/id</plan:predicate>
                                <plan:object name='0' type='global-variable' />
                              </plan:triple-index>
                              <plan:triple-index dedup='true' order='3,0' permutation='POS'>
                                <plan:subject column-index='0' name='subject' type='var' />
                                <plan:predicate type='iri'>https://content.com/mainEntity</plan:predicate>
                                <plan:object column-index='3' hidden='true' name='ANON16715473614359753352' type='blank' />
                              </plan:triple-index>
                            </plan:join>
                            <plan:triple-index dedup='true' order='0' permutation='OPS'>
                              <plan:subject column-index='0' name='subject' type='var' />
                              <plan:predicate type='iri'>https://content.com/locale</plan:predicate>
                              <plan:object name='3' type='global-variable' />
                            </plan:triple-index>
                          </plan:join>
                          <plan:distinct>
                            <plan:project order=''>
                              <plan:column column-index='0' name='subject' type='var' />
                              <plan:sparql-union order='' type='concat-union'>
                                <plan:triple-index dedup='true' order='0' permutation='OPS'>
                                  <plan:subject column-index='0' name='subject' type='var' />
                                  <plan:predicate type='iri'>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                                  <plan:object type='iri'>https://content.com/ImageObject</plan:object>
                                </plan:triple-index>
                                <plan:join order='3,0' type='scatter-join'>
                                  <plan:hash left='3' op='=' right='3' />
                                  <plan:scatter left='3' op='=' right='3' />
                                  <plan:one-or-more order='' type='SCATTER'>
                                    <plan:graph-node column-index='3' hidden='true' name='ANON9473490927005035661' type='blank' />
                                    <plan:graph-node column-index='0' hidden='true' name='ANON14681692922891278890' type='var' />
                                    <plan:graph-node column-index='1' hidden='true' name='ANON10602977668939359507' type='var' />
                                    <plan:graph-node type='iri'>https://content.com/ImageObject</plan:graph-node>
                                    <plan:triple-index dedup='true' order='0,1' permutation='PSO'>
                                      <plan:subject column-index='0' hidden='true' name='ANON14681692922891278890' type='var' />
                                      <plan:predicate type='iri'>http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:predicate>
                                      <plan:object column-index='1' hidden='true' name='ANON10602977668939359507' type='var' />
                                    </plan:triple-index>
                                  </plan:one-or-more>
                                  <plan:triple-index dedup='true' order='3,0' permutation='POS'>
                                    <plan:subject column-index='0' name='subject' type='var' />
                                    <plan:predicate type='iri'>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                                    <plan:object column-index='3' hidden='true' name='ANON9473490927005035661' type='blank' />
                                  </plan:triple-index>
                                </plan:join>
                              </plan:sparql-union>
                            </plan:project>
                          </plan:distinct>
                        </plan:join>
                      </plan:expr>
                      <plan:exists>
                        <plan:join order='4,0' type='scatter-join'>
                          <plan:hash left='4' op='=' right='4' />
                          <plan:scatter left='4' op='=' right='4' />
                          <plan:triple-index dedup='true' order='4' permutation='OPS'>
                            <plan:subject column-index='4' hidden='true' name='ANON3088863675916099189' type='blank' />
                            <plan:predicate type='iri'>https://content.com/id</plan:predicate>
                            <plan:object name='2' type='global-variable' />
                          </plan:triple-index>
                          <plan:triple-index dedup='true' order='4,0' permutation='POS'>
                            <plan:subject column-index='0' name='subject' type='var' />
                            <plan:predicate type='iri'>https://content.com/classification</plan:predicate>
                            <plan:object column-index='4' hidden='true' name='ANON3088863675916099189' type='blank' />
                          </plan:triple-index>
                        </plan:join>
                      </plan:exists>
                      <plan:filters />
                      <plan:ljfilters />
                    </plan:sparql-exists-join>
                  </plan:sparql-union>
                </plan:join>
                <plan:distinct>
                  <plan:project order=''>
                    <plan:column column-index='0' name='subject' type='var' />
                    <plan:sparql-union order='' type='concat-union'>
                      <plan:triple-index dedup='true' order='0' permutation='OPS'>
                        <plan:subject column-index='0' name='subject' type='var' />
                        <plan:predicate type='iri'>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                        <plan:object type='iri'>https://content.com/ImageObject</plan:object>
                      </plan:triple-index>
                      <plan:join order='1,0' type='scatter-join'>
                        <plan:hash left='1' op='=' right='1' />
                        <plan:scatter left='1' op='=' right='1' />
                        <plan:one-or-more order='' type='SCATTER'>
                          <plan:graph-node column-index='1' hidden='true' name='ANON18246697083136543884' type='blank' />
                          <plan:graph-node column-index='0' hidden='true' name='ANON16421309367134413032' type='var' />
                          <plan:graph-node column-index='1' hidden='true' name='ANON16852300872775477243' type='var' />
                          <plan:graph-node type='iri'>https://content.com/ImageObject</plan:graph-node>
                          <plan:triple-index dedup='true' order='0,1' permutation='PSO'>
                            <plan:subject column-index='0' hidden='true' name='ANON16421309367134413032' type='var' />
                            <plan:predicate type='iri'>http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:predicate>
                            <plan:object column-index='1' hidden='true' name='ANON16852300872775477243' type='var' />
                          </plan:triple-index>
                        </plan:one-or-more>
                        <plan:triple-index dedup='true' order='1,0' permutation='POS'>
                          <plan:subject column-index='0' name='subject' type='var' />
                          <plan:predicate type='iri'>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                          <plan:object column-index='1' hidden='true' name='ANON18246697083136543884' type='blank' />
                        </plan:triple-index>
                      </plan:join>
                    </plan:sparql-union>
                  </plan:project>
                </plan:distinct>
              </plan:join>
              <plan:triple-index dedup='true' order='0,4' permutation='PSO'>
                <plan:subject column-index='0' name='subject' type='var' />
                <plan:predicate type='iri'>https://content.com/dateCreated</plan:predicate>
                <plan:object column-index='4' name='4' type='var' />
              </plan:triple-index>
              <plan:filters />
              <plan:ljfilters />
            </plan:left-join>
          </plan:bind>
        </plan:order-by>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"from", "_parent":"N", "default-graph":["http://marklogic.com/semantics#default-graph", "https://content.com/collection/ontology", "https://content.com/collection/content/ImageObject/en-US", "https://content.com/collection/content/ImageObject/subclassed/en-US", "https://content.com/collection/content/Thing/subclassed", "https://content.com/collection/gin/Thing/subclassed", "https://content.com/collection/gin/Classification/subclassed", "https://content.com/collection/gin/AssetType", "https://content.com/collection/gin/AssetType/subclassed"]}',
'{"_id":"N_2", "_name":"distinct", "_parent":"N"}',
'{"_id":"N_2_1", "_name":"project", "_parent":"N_2", "column":"0 (?subject)", "order":""}',
'{"_id":"N_2_1_1", "_name":"order-by", "_parent":"N_2_1", "num-sorted":"0", "order":"last(5),desc(last(4))", "order-spec":["5 (?ANON2266679090434743153)", "4 (?4) [desc]"]}',
'{"_id":"N_2_1_1_1", "_name":"bind", "_parent":"N_2_1_1", "expr":"fn:not(fn:exists(?4)) as ?ANON2266679090434743153"}',
'{"_id":"N_2_1_1_1_1", "_name":"left-scatter-join", "_parent":"N_2_1_1_1", "condition":"0=0", "order":""}',
'{"_id":"N_2_1_1_1_1_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1", "_parentLabel":"left", "condition":"0=0", "order":""}',
'{"_id":"N_2_1_1_1_1_L_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L", "_parentLabel":"left", "condition":"0=0", "order":""}',
'{"_id":"N_2_1_1_1_1_L_L_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L", "_parentLabel":"left", "condition":"0=0", "order":"0"}',
'{"_id":"N_2_1_1_1_1_L_L_L_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_L", "_parentLabel":"left", "condition":"1=1", "order":"1,0"}',
'{"_id":"N_2_1_1_1_1_L_L_L_L_L", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_L_L", "_parentLabel":"left", "dedup":"true", "object":"$0", "order":"1", "permutation":"OPS", "predicate":"<https://content.com/id>", "subject":"1 (_:ANON3064792102711755591)"}',
'{"_id":"N_2_1_1_1_1_L_L_L_L_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_L_L", "_parentLabel":"right", "dedup":"true", "object":"1 (_:ANON3064792102711755591)", "order":"1,0", "permutation":"POS", "predicate":"<https://content.com/mainEntity>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_L_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_L", "_parentLabel":"right", "dedup":"true", "object":"$3", "order":"0", "permutation":"OPS", "predicate":"<https://content.com/locale>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R", "_name":"sparql-union", "_parent":"N_2_1_1_1_1_L_L", "_parentLabel":"right", "order":"", "type":"concat-union"}',
'{"_id":"N_2_1_1_1_1_L_L_R_1", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R", "dedup":"true", "object":"2 (?1)", "order":"0,2", "permutation":"PSO", "predicate":"<https://content.com/assetType>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_1_1", "_name":"join-filter", "_parent":"N_2_1_1_1_1_L_L_R_1", "condition":"?1=(<https://content.com/data/AssetType/t-screenshot>, <https://content.com/data/AssetType/ig-screenshot>)", "left":{"column-index":"2", "name":"1", "type":"var"}, "op":"="}',
'{"_id":"N_2_1_1_1_1_L_L_R_2", "_name":"right-hash-exists-join", "_parent":"N_2_1_1_1_1_L_L_R", "condition":"0=0", "lang":"sparql", "order":""}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_R_2", "_parentLabel":"left", "condition":"4=4", "order":"4,0"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_L_L", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_L", "_parentLabel":"left", "dedup":"true", "object":"$2", "order":"4", "permutation":"OPS", "predicate":"<https://content.com/id>", "subject":"4 (_:ANON3088863675916099189)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_L_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_L", "_parentLabel":"right", "dedup":"true", "object":"4 (_:ANON3088863675916099189)", "order":"4,0", "permutation":"POS", "predicate":"<https://content.com/classification>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_R_2", "_parentLabel":"right", "condition":"0=0", "order":""}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_R_2_R", "_parentLabel":"left", "condition":"0=0", "order":"0"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_L_L", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_R_2_R_L", "_parentLabel":"left", "condition":"3=3", "order":"3,0"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_L_L_L", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_L_L", "_parentLabel":"left", "dedup":"true", "object":"$0", "order":"3", "permutation":"OPS", "predicate":"<https://content.com/id>", "subject":"3 (_:ANON16715473614359753352)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_L_L_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_L_L", "_parentLabel":"right", "dedup":"true", "object":"3 (_:ANON16715473614359753352)", "order":"3,0", "permutation":"POS", "predicate":"<https://content.com/mainEntity>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_L_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_L", "_parentLabel":"right", "dedup":"true", "object":"$3", "order":"0", "permutation":"OPS", "predicate":"<https://content.com/locale>", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R", "_name":"distinct", "_parent":"N_2_1_1_1_1_L_L_R_2_R", "_parentLabel":"right"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1", "_name":"project", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R", "column":"0 (?subject)", "order":""}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1", "_name":"sparql-union", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1", "order":"", "type":"concat-union"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_1", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1_1", "dedup":"true", "object":"<https://content.com/ImageObject>", "order":"0", "permutation":"OPS", "predicate":"rdf:type", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1_1", "condition":"3=3", "order":"3,0"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2_L", "_name":"one-or-more", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2", "_parentLabel":"left", "object":"<https://content.com/ImageObject>", "order":"", "subject":"3 (_:ANON9473490927005035661)", "type":"SCATTER", "varIn":"0 (?ANON14681692922891278890)", "varOut":"1 (?ANON10602977668939359507)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2_L_1", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2_L", "dedup":"true", "object":"1 (?ANON10602977668939359507)", "order":"0,1", "permutation":"PSO", "predicate":"rdfs:subClassOf", "subject":"0 (?ANON14681692922891278890)"}',
'{"_id":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_L_R_2_R_R_1_1_2", "_parentLabel":"right", "dedup":"true", "object":"3 (_:ANON9473490927005035661)", "order":"3,0", "permutation":"POS", "predicate":"rdf:type", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_R", "_name":"distinct", "_parent":"N_2_1_1_1_1_L", "_parentLabel":"right"}',
'{"_id":"N_2_1_1_1_1_L_R_1", "_name":"project", "_parent":"N_2_1_1_1_1_L_R", "column":"0 (?subject)", "order":""}',
'{"_id":"N_2_1_1_1_1_L_R_1_1", "_name":"sparql-union", "_parent":"N_2_1_1_1_1_L_R_1", "order":"", "type":"concat-union"}',
'{"_id":"N_2_1_1_1_1_L_R_1_1_1", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_R_1_1", "dedup":"true", "object":"<https://content.com/ImageObject>", "order":"0", "permutation":"OPS", "predicate":"rdf:type", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_L_R_1_1_2", "_name":"scatter-join", "_parent":"N_2_1_1_1_1_L_R_1_1", "condition":"1=1", "order":"1,0"}',
'{"_id":"N_2_1_1_1_1_L_R_1_1_2_L", "_name":"one-or-more", "_parent":"N_2_1_1_1_1_L_R_1_1_2", "_parentLabel":"left", "object":"<https://content.com/ImageObject>", "order":"", "subject":"1 (_:ANON18246697083136543884)", "type":"SCATTER", "varIn":"0 (?ANON16421309367134413032)", "varOut":"1 (?ANON16852300872775477243)"}',
'{"_id":"N_2_1_1_1_1_L_R_1_1_2_L_1", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_R_1_1_2_L", "dedup":"true", "object":"1 (?ANON16852300872775477243)", "order":"0,1", "permutation":"PSO", "predicate":"rdfs:subClassOf", "subject":"0 (?ANON16421309367134413032)"}',
'{"_id":"N_2_1_1_1_1_L_R_1_1_2_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1_L_R_1_1_2", "_parentLabel":"right", "dedup":"true", "object":"1 (_:ANON18246697083136543884)", "order":"1,0", "permutation":"POS", "predicate":"rdf:type", "subject":"0 (?subject)"}',
'{"_id":"N_2_1_1_1_1_R", "_name":"triple-index", "_parent":"N_2_1_1_1_1", "_parentLabel":"right", "dedup":"true", "object":"4 (?4)", "order":"0,4", "permutation":"PSO", "predicate":"<https://content.com/dateCreated>", "subject":"0 (?subject)"}'
))
,
map:entry("name","v9_zero_or_one")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="0[NULLS_LAST],4[NULLS_LAST],3[NULLS_LAST],5[NULLS_LAST],1[NULLS_LAST]">
	<plan:vars>
	  <plan:graph-node type="var" name="event" column-index="0" static-type="NONE"/>
	  <plan:graph-node type="var" name="rep" column-index="1" static-type="NONE"/>
	  <plan:graph-node type="var" name="lang" column-index="2" static-type="NONE"/>
	  <plan:graph-node type="var" name="offdoc" column-index="3" static-type="NONE"/>
	  <plan:graph-node type="var" name="type" column-index="4" static-type="NONE"/>
	  <plan:graph-node type="var" name="lv" column-index="5" static-type="NONE"/>
	  <plan:graph-node type="var" name="ext" column-index="6" static-type="STRING"/>
	  <plan:graph-node type="var" name="date" column-index="7" static-type="NONE"/>
	  <plan:graph-node type="var" name="latest_date" column-index="8" static-type="NONE"/>
	</plan:vars>
	<plan:expr>
	  <plan:order-by order="0[NULLS_LAST],4[NULLS_LAST],3[NULLS_LAST],5[NULLS_LAST],1[NULLS_LAST]" num-sorted="2">
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="var" name="event" column-index="0" static-type="NONE"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="var" name="type" column-index="4" static-type="NONE"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="var" name="offdoc" column-index="3" static-type="NONE"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="var" name="lv" column-index="5" static-type="NONE"/>
	    </plan:order-spec>
	    <plan:order-spec descending="false" nulls-first="false">
	      <plan:graph-node type="var" name="rep" column-index="1" static-type="NONE"/>
	    </plan:order-spec>
	    <plan:filter is-empty="false">
	      <plan:filters>
		<plan:value-compare op="EQ">
		  <plan:expr>
		    <plan:sparql-variable column-index="7">
		      <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		    </plan:sparql-variable>
		  </plan:expr>
		  <plan:term>
		    <plan:sparql-variable column-index="8">
		      <plan:qname name="latest_date" uri="" prfx="" ltrl="latest_date"/>
		    </plan:sparql-variable>
		  </plan:term>
		</plan:value-compare>
	      </plan:filters>
	      <plan:group type="sort-group" order="0[NULLS_LAST],4[NULLS_LAST],2[NULLS_LAST],6[NULLS_LAST]" num-sorted="0">
		<plan:order-spec descending="false" nulls-first="false">
		  <plan:graph-node type="var" name="event" column-index="1" static-type="NONE"/>
		</plan:order-spec>
		<plan:order-spec descending="false" nulls-first="false">
		  <plan:graph-node type="var" name="type" column-index="2" static-type="NONE"/>
		</plan:order-spec>
		<plan:order-spec descending="false" nulls-first="false">
		  <plan:graph-node type="var" name="lang" column-index="15" static-type="NONE"/>
		</plan:order-spec>
		<plan:order-spec descending="false" nulls-first="false">
		  <plan:graph-node type="var" name="ext" column-index="17" static-type="NONE"/>
		</plan:order-spec>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="max" distinct="false">
		    <plan:sparql-variable column-index="14">
		      <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="latest_date" column-index="8" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="1">
		      <plan:qname name="event" uri="" prfx="" ltrl="event"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="event" column-index="0" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="16">
		      <plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="rep" column-index="1" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="15">
		      <plan:qname name="lang" uri="" prfx="" ltrl="lang"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="lang" column-index="2" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="8">
		      <plan:qname name="offdoc" uri="" prfx="" ltrl="offdoc"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="offdoc" column-index="3" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="2">
		      <plan:qname name="type" uri="" prfx="" ltrl="type"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="type" column-index="4" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="13">
		      <plan:qname name="lv" uri="" prfx="" ltrl="lv"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="lv" column-index="5" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="17">
		      <plan:qname name="ext" uri="" prfx="" ltrl="ext"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="ext" column-index="6" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:aggregate-bind>
		  <plan:aggregate-function name="sample" distinct="false">
		    <plan:sparql-variable column-index="14">
		      <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		    </plan:sparql-variable>
		  </plan:aggregate-function>
		  <plan:var>
		    <plan:graph-node type="var" name="date" column-index="7" static-type="NONE"/>
		  </plan:var>
		</plan:aggregate-bind>
		<plan:bind>
		  <plan:var>
		    <plan:graph-node type="var" name="ext" column-index="17" static-type="NONE"/>
		  </plan:var>
		  <plan:bind-expr>
		    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="substring">
		      <plan:sparql-variable column-index="16">
			<plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
		      </plan:sparql-variable>
		      <plan:add op="MINUS">
			<plan:expr>
			  <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="string-length">
			    <plan:sparql-variable column-index="16">
			      <plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
			    </plan:sparql-variable>
			  </plan:builtin>
			</plan:expr>
			<plan:term>
			  <plan:literal>
			    <plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
			  </plan:literal>
			</plan:term>
		      </plan:add>
		    </plan:builtin>
		  </plan:bind-expr>
		  <plan:expr>
		    <plan:join join-type="scatter-join" order="13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]">
		      <plan:join-info>
			<plan:hash left="13" right="13" operator="="/>
			<plan:filters>
			  <plan:join-filter op="=">
			    <plan:left-graph-node>
			      <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="13" static-type="UNKNOWN"/>
			    </plan:left-graph-node>
			    <plan:right-graph-node>
			      <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="13" static-type="UNKNOWN"/>
			    </plan:right-graph-node>
			  </plan:join-filter>
			</plan:filters>
		      </plan:join-info>
		      <plan:elems>
			<plan:join join-type="scatter-join" order="8[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="8" right="8" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="offdoc" schema="" column="offdoc" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="offdoc" schema="" column="offdoc" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:join join-type="scatter-join" order="">
			      <plan:join-info>
				<plan:hash left="3" right="3" operator="="/>
				<plan:filters>
				  <plan:join-filter op="=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="version" schema="" column="version" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-graph-node>
				      <plan:graph-node type="column-def" name="version" schema="" column="version" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
				    </plan:right-graph-node>
				  </plan:join-filter>
				</plan:filters>
			      </plan:join-info>
			      <plan:elems>
				<plan:join join-type="scatter-join" order="0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]">
				  <plan:join-info>
				    <plan:hash left="0" right="0" operator="="/>
				    <plan:filters>
				      <plan:join-filter op="=">
					<plan:left-graph-node>
					  <plan:graph-node type="column-def" name="doc" schema="" column="doc" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
					</plan:left-graph-node>
					<plan:right-graph-node>
					  <plan:graph-node type="column-def" name="doc" schema="" column="doc" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
					</plan:right-graph-node>
				      </plan:join-filter>
				    </plan:filters>
				  </plan:join-info>
				  <plan:elems>
				    <plan:triple-index order="0[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://example.com/model#agendaOf" static-type="NONE">
					  <plan:rdf-val>http://example.com/model#agendaOf</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="global-variable" name="entityIri" static-type="NONE"/>
				      </plan:object>
				    </plan:triple-index>
				    <plan:join join-type="parallel-hash-join" order="0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]">
				      <plan:join-info>
					<plan:hash left="0" right="0" operator="="/>
				      </plan:join-info>
				      <plan:elems>
					<plan:zero-or-one>
					  <plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
					  <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
					  <plan:triple-index order="0[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					    <plan:subject>
					      <plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
					    </plan:subject>
					    <plan:predicate>
					      <plan:graph-node type="iri" name="http://example.com/model#hasOfficialDocument" static-type="NONE">
						<plan:rdf-val>http://example.com/model#hasOfficialDocument</plan:rdf-val>
					      </plan:graph-node>
					    </plan:predicate>
					    <plan:object>
					      <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
					    </plan:object>
					  </plan:triple-index>
					  <plan:bind>
					    <plan:var>
					      <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
					    </plan:var>
					    <plan:bind-expr>
					      <plan:sparql-variable column-index="0">
						<plan:qname name="doc" uri="" prfx="" ltrl="doc"/>
					      </plan:sparql-variable>
					    </plan:bind-expr>
					    <plan:expr>
					      <plan:distinct>
						<plan:sparql-union type="parallel-concat-union" order="">
						  <plan:triple-index order="0[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
						    <plan:subject>
						      <plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
						    </plan:subject>
						    <plan:predicate>
						      <plan:graph-node type="blank" name="ANON4586998086527943041" column-index="4" static-type="NONE" hidden="true"/>
						    </plan:predicate>
						    <plan:object>
						      <plan:graph-node type="blank" name="ANON8124668958112498059" column-index="5" static-type="NONE" hidden="true"/>
						    </plan:object>
						  </plan:triple-index>
						  <plan:triple-index order="0[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
						    <plan:subject>
						      <plan:graph-node type="blank" name="ANON14216057194239603383" column-index="6" static-type="NONE" hidden="true"/>
						    </plan:subject>
						    <plan:predicate>
						      <plan:graph-node type="blank" name="ANON9666564757688152699" column-index="7" static-type="NONE" hidden="true"/>
						    </plan:predicate>
						    <plan:object>
						      <plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
						    </plan:object>
						  </plan:triple-index>
						</plan:sparql-union>
					      </plan:distinct>
					    </plan:expr>
					  </plan:bind>
					</plan:zero-or-one>
					<plan:join join-type="parallel-hash-join" order="0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]">
					  <plan:join-info>
					    <plan:hash left="0" right="0" operator="="/>
					  </plan:join-info>
					  <plan:elems>
					    <plan:triple-index order="0[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
						  <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
						</plan:graph-node>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="var" name="type" column-index="2" static-type="NONE"/>
					      </plan:object>
					    </plan:triple-index>
					    <plan:triple-index order="0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="doc" column-index="0" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="iri" name="http://example.com/model#agendaOf" static-type="NONE">
						  <plan:rdf-val>http://example.com/model#agendaOf</plan:rdf-val>
						</plan:graph-node>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="var" name="event" column-index="1" static-type="NONE"/>
					      </plan:object>
					    </plan:triple-index>
					  </plan:elems>
					</plan:join>
				      </plan:elems>
				    </plan:join>
				  </plan:elems>
				</plan:join>
				<plan:zero-or-one>
				  <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
				  <plan:graph-node type="var" name="offdoc" column-index="8" static-type="NONE"/>
				  <plan:sparql-union type="parallel-concat-union" order="">
				    <plan:triple-index order="3[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="offdoc" column-index="8" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://example.com/model#versionOf" static-type="NONE">
					  <plan:rdf-val>http://example.com/model#versionOf</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
				      </plan:object>
				    </plan:triple-index>
				    <plan:triple-index order="3[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://example.com/model#versionOf" static-type="NONE">
					  <plan:rdf-val>http://example.com/model#versionOf</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="var" name="offdoc" column-index="8" static-type="NONE"/>
				      </plan:object>
				    </plan:triple-index>
				  </plan:sparql-union>
				  <plan:bind>
				    <plan:var>
				      <plan:graph-node type="var" name="offdoc" column-index="8" static-type="NONE"/>
				    </plan:var>
				    <plan:bind-expr>
				      <plan:sparql-variable column-index="3">
					<plan:qname name="version" uri="" prfx="" ltrl="version"/>
				      </plan:sparql-variable>
				    </plan:bind-expr>
				    <plan:expr>
				      <plan:distinct>
					<plan:sparql-union type="parallel-concat-union" order="">
					  <plan:triple-index order="3[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					    <plan:subject>
					      <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
					    </plan:subject>
					    <plan:predicate>
					      <plan:graph-node type="blank" name="ANON6051813340628678873" column-index="9" static-type="NONE" hidden="true"/>
					    </plan:predicate>
					    <plan:object>
					      <plan:graph-node type="blank" name="ANON11518181487489165980" column-index="10" static-type="NONE" hidden="true"/>
					    </plan:object>
					  </plan:triple-index>
					  <plan:triple-index order="3[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
					    <plan:subject>
					      <plan:graph-node type="blank" name="ANON2724888158786734552" column-index="11" static-type="NONE" hidden="true"/>
					    </plan:subject>
					    <plan:predicate>
					      <plan:graph-node type="blank" name="ANON5974523226806816139" column-index="12" static-type="NONE" hidden="true"/>
					    </plan:predicate>
					    <plan:object>
					      <plan:graph-node type="var" name="version" column-index="3" static-type="NONE"/>
					    </plan:object>
					  </plan:triple-index>
					</plan:sparql-union>
				      </plan:distinct>
				    </plan:expr>
				  </plan:bind>
				</plan:zero-or-one>
			      </plan:elems>
			    </plan:join>
			    <plan:triple-index order="8[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="lv" column-index="13" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="iri" name="http://example.com/model#languageVersionOf" static-type="NONE">
				  <plan:rdf-val>http://example.com/model#languageVersionOf</plan:rdf-val>
				</plan:graph-node>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="offdoc" column-index="8" static-type="NONE"/>
			      </plan:object>
			    </plan:triple-index>
			  </plan:elems>
			</plan:join>
			<plan:join join-type="parallel-hash-join" order="13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="13" right="13" operator="="/>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="13[NULLS_IRRELEVANT],16[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="rep" column-index="16" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="iri" name="http://example.com/model#representationOf" static-type="NONE">
				  <plan:rdf-val>http://example.com/model#representationOf</plan:rdf-val>
				</plan:graph-node>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="lv" column-index="13" static-type="NONE"/>
			      </plan:object>
			    </plan:triple-index>
			    <plan:join join-type="parallel-hash-join" order="13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="13" right="13" operator="="/>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="13[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="lv" column-index="13" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://example.com/model#hasLanguage" static-type="NONE">
				      <plan:rdf-val>http://example.com/model#hasLanguage</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="lang" column-index="15" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
				<plan:triple-index order="13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="lv" column-index="13" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://example.com/model#lastModifiedDate" static-type="NONE">
				      <plan:rdf-val>http://example.com/model#lastModifiedDate</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="date" column-index="14" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
		      </plan:elems>
		    </plan:join>
		  </plan:expr>
		</plan:bind>
	      </plan:group>
	    </plan:filter>
	  </plan:order-by>
	</plan:expr>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"distinct", "_parent":"N"}',
'{"_id":"N_1_1", "_name":"project", "_parent":"N_1", "column":["0 (?event)", "1 (?rep)", "2 (?lang)", "3 (?offdoc)", "4 (?type)", "5 (?lv)", "6 (?ext)", "7 (?date)", "8 (?latest_date)"], "order":"0[NULLS_LAST],4[NULLS_LAST],3[NULLS_LAST],5[NULLS_LAST],1[NULLS_LAST]"}',
'{"_id":"N_1_1_1", "_name":"order-by", "_parent":"N_1_1", "num-sorted":"2", "order":"0[NULLS_LAST],4[NULLS_LAST],3[NULLS_LAST],5[NULLS_LAST],1[NULLS_LAST]", "order-spec":["0 (?event)", "4 (?type)", "3 (?offdoc)", "5 (?lv)", "1 (?rep)"]}',
'{"_id":"N_1_1_1_1", "_name":"filter", "_parent":"N_1_1_1", "condition":"?date eq ?latest_date", "is-empty":"false"}',
'{"_id":"N_1_1_1_1_1", "_name":"group", "_parent":"N_1_1_1_1", "aggregate":["max(?date) as ?latest_date", "sample(?event) as ?event", "sample(?rep) as ?rep", "sample(?lang) as ?lang", "sample(?offdoc) as ?offdoc", "sample(?type) as ?type", "sample(?lv) as ?lv", "sample(?ext) as ?ext", "sample(?date) as ?date"], "num-sorted":"0", "order":"0[NULLS_LAST],4[NULLS_LAST],2[NULLS_LAST],6[NULLS_LAST]", "order-spec":["1 (?event)", "2 (?type)", "15 (?lang)", "17 (?ext)"], "type":"sort-group"}',
'{"_id":"N_1_1_1_1_1_1", "_name":"bind", "_parent":"N_1_1_1_1_1", "expr":"fn:substring(?rep, fn:string-length(?rep) - 2) as ?ext"}',
'{"_id":"N_1_1_1_1_1_1_1", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_1", "condition":"13=13", "order":"13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_1_1", "_parentLabel":"left", "condition":"8=8", "order":"8[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_1_1_L", "_parentLabel":"left", "condition":"3=3", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_1_1_L_L", "_parentLabel":"left", "condition":"0=0", "order":"0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_L", "_parentLabel":"left", "dedup":"true", "descending":"false", "is-column":"false", "object":"$entityIri", "order":"0[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"<http://example.com/model#agendaOf>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1_L_L_L", "_parentLabel":"right", "condition":"0=0", "order":"0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R_L", "_name":"zero-or-one", "_parent":"N_1_1_1_1_1_1_1_L_L_L_R", "_parentLabel":"left", "object":"3 (?version)", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R_L_1", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_L_R_L", "dedup":"true", "descending":"false", "is-column":"false", "object":"3 (?version)", "order":"0[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"<http://example.com/model#hasOfficialDocument>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1_L_L_L_R", "_parentLabel":"right", "condition":"0=0", "order":"0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_L_R_R", "_parentLabel":"left", "dedup":"true", "descending":"false", "is-column":"false", "object":"2 (?type)", "order":"0[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"rdf:type", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_L_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_L_R_R", "_parentLabel":"right", "dedup":"true", "descending":"false", "is-column":"false", "object":"1 (?event)", "order":"0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"<http://example.com/model#agendaOf>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_R", "_name":"zero-or-one", "_parent":"N_1_1_1_1_1_1_1_L_L", "_parentLabel":"right", "object":"8 (?offdoc)", "subject":"3 (?version)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_R_1", "_name":"sparql-union", "_parent":"N_1_1_1_1_1_1_1_L_L_R", "order":"", "type":"parallel-concat-union"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_R_1_1", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_R_1", "dedup":"true", "descending":"false", "is-column":"false", "object":"3 (?version)", "order":"3[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"<http://example.com/model#versionOf>", "subject":"8 (?offdoc)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_L_R_1_2", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L_L_R_1", "dedup":"true", "descending":"false", "is-column":"false", "object":"8 (?offdoc)", "order":"3[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"<http://example.com/model#versionOf>", "subject":"3 (?version)"}',
'{"_id":"N_1_1_1_1_1_1_1_L_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_L", "_parentLabel":"right", "dedup":"true", "descending":"false", "is-column":"false", "object":"8 (?offdoc)", "order":"8[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"<http://example.com/model#languageVersionOf>", "subject":"13 (?lv)"}',
'{"_id":"N_1_1_1_1_1_1_1_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1", "_parentLabel":"right", "condition":"13=13", "order":"13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_R", "_parentLabel":"left", "dedup":"true", "descending":"false", "is-column":"false", "object":"13 (?lv)", "order":"13[NULLS_IRRELEVANT],16[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"<http://example.com/model#representationOf>", "subject":"16 (?rep)"}',
'{"_id":"N_1_1_1_1_1_1_1_R_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1_R", "_parentLabel":"right", "condition":"13=13", "order":"13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_1_1_1_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_R_R", "_parentLabel":"left", "dedup":"true", "descending":"false", "is-column":"false", "object":"15 (?lang)", "order":"13[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"<http://example.com/model#hasLanguage>", "subject":"13 (?lv)"}',
'{"_id":"N_1_1_1_1_1_1_1_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_R_R", "_parentLabel":"right", "dedup":"true", "descending":"false", "is-column":"false", "object":"14 (?date)", "order":"13[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]", "permutation":"SOP", "predicate":"<http://example.com/model#lastModifiedDate>", "subject":"13 (?lv)"}'
)),
map:entry("name","v11_zero_or_one")
=>map:with("plan",
<plan:plan label="optimize=1 final plan" session-key="16258867929393433514" generated-at="2023-10-31T07:03:16.041534Z" xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project id="4829368362682332634" cost="-nan" estimated-count="7.46611e-06" io-cost="0/3.78176e+07/0/3.4036e+08/0" nw-cost="101/6.66842e+08/0/6.00157e+09/0" cpu-cost="0/inf/-nan/inf/-nan" dcpu-cost="0/1.83566e+08/0/1.6521e+09/0" min-mem-cost="1.04557e+07" max-mem-cost="8.89316e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)" order="0,4,3,5,1">
	<plan:column type="var" name="event" column-index="0" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="rep" column-index="1" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="lang" column-index="2" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="offdoc" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="type" column-index="4" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="lv" column-index="5" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="ext" column-index="6" static-type="STRING"/>
	<plan:column type="var" name="date" column-index="7" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:column type="var" name="latest_date" column-index="8" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	<plan:order-by num-sorted="2" allow-disk-based-algorithm="true" memory-fraction="0.01" memory-budget-bytes="314436354" total-memory-bytes="0" id="5513871949623171810" cost="-nan" estimated-count="7.46611e-06" io-cost="0/3.78176e+07/0/3.4036e+08/0" nw-cost="101/6.66842e+08/0/6.00157e+09/0" cpu-cost="0/inf/-nan/inf/-nan" dcpu-cost="0/1.83566e+08/0/1.6521e+09/0" min-mem-cost="1.04557e+07" max-mem-cost="8.89316e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)" order="0,4,3,5,1">
	  <plan:order-spec descending="false" nulls-first="false" type="var" name="event" column-index="0" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	  <plan:order-spec descending="false" nulls-first="false" type="var" name="type" column-index="4" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	  <plan:order-spec descending="false" nulls-first="false" type="var" name="offdoc" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	  <plan:order-spec descending="false" nulls-first="false" type="var" name="lv" column-index="5" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	  <plan:order-spec descending="false" nulls-first="false" type="var" name="rep" column-index="1" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
	  <plan:filter is-empty="false" id="17242677487444134174" cost="2.35586e+10" estimated-count="7.46611e-06" io-cost="0/3.78176e+07/0/3.4036e+08/0" nw-cost="101/6.66842e+08/0/6.00157e+09/0" cpu-cost="0/8.38484e+09/7.19822/8.38484e+09/7.19822" dcpu-cost="0/1.83566e+08/0/1.6521e+09/0" min-mem-cost="9.1623e+06" max-mem-cost="8.38106e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)" order="0,4,2,6">
	    <plan:filters>
	      <plan:value-compare op="EQ">
		<plan:expr>
		  <plan:sparql-variable column-index="7">
		    <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		  </plan:sparql-variable>
		</plan:expr>
		<plan:term>
		  <plan:sparql-variable column-index="8">
		    <plan:qname name="latest_date" uri="" prfx="" ltrl="latest_date"/>
		  </plan:sparql-variable>
		</plan:term>
	      </plan:value-compare>
	    </plan:filters>
	    <plan:group type="sort-group" allow-disk-based-algorithm="true" id="17467539245668624944" cost="2.35586e+10" estimated-count="7.46611e-06" io-cost="0/3.78176e+07/0/3.4036e+08/0" nw-cost="101/6.66842e+08/0/6.00157e+09/0" cpu-cost="0/8.38484e+09/7.19806/8.38484e+09/7.19806" dcpu-cost="0/1.83566e+08/0/1.6521e+09/0" min-mem-cost="9.1623e+06" max-mem-cost="8.38106e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)" order="0,4,2,6">
	      <plan:sort id="17467539245668624945" cost="2.35586e+10" estimated-count="0.0524596" io-cost="0/3.78176e+07/0/3.4036e+08/0" nw-cost="101/6.66842e+08/0/6.00157e+09/0" cpu-cost="0/8.38484e+09/0/8.38484e+09/0" dcpu-cost="0/1.83566e+08/0/1.6521e+09/0" min-mem-cost="9.0288e+06" max-mem-cost="8.24755e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174),(0.0524596,0.0524596)" memory-fraction="0.01" memory-budget-bytes="314436354" total-memory-bytes="127" num-sorted="0">
		<plan:order-spec descending="false" nulls-first="false" type="var" name="event" column-index="1"/>
		<plan:order-spec descending="false" nulls-first="false" type="var" name="type" column-index="2"/>
		<plan:order-spec descending="false" nulls-first="false" type="var" name="lang" column-index="15"/>
		<plan:order-spec descending="false" nulls-first="false" type="var" name="ext" column-index="17"/>
	      </plan:sort>
	      <plan:order-spec descending="false" nulls-first="false" type="var" name="event" column-index="1"/>
	      <plan:order-spec descending="false" nulls-first="false" type="var" name="type" column-index="2"/>
	      <plan:order-spec descending="false" nulls-first="false" type="var" name="lang" column-index="15"/>
	      <plan:order-spec descending="false" nulls-first="false" type="var" name="ext" column-index="17"/>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="max" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="14">
		      <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="latest_date" column-index="8"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="1">
		      <plan:qname name="event" uri="" prfx="" ltrl="event"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="event" column-index="0"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="16">
		      <plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="rep" column-index="1"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="15">
		      <plan:qname name="lang" uri="" prfx="" ltrl="lang"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="lang" column-index="2"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="8">
		      <plan:qname name="offdoc" uri="" prfx="" ltrl="offdoc"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="offdoc" column-index="3"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="2">
		      <plan:qname name="type" uri="" prfx="" ltrl="type"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="type" column-index="4"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="13">
		      <plan:qname name="lv" uri="" prfx="" ltrl="lv"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="lv" column-index="5"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="17">
		      <plan:qname name="ext" uri="" prfx="" ltrl="ext"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="ext" column-index="6"/>
	      </plan:aggregate-bind>
	      <plan:aggregate-bind>
		<plan:aggregate-function name="sample" distinct="false">
		  <plan:expr>
		    <plan:sparql-variable column-index="14">
		      <plan:qname name="date" uri="" prfx="" ltrl="date"/>
		    </plan:sparql-variable>
		  </plan:expr>
		</plan:aggregate-function>
		<plan:column type="var" name="date" column-index="7"/>
	      </plan:aggregate-bind>
	      <plan:bind id="17426030252647911313" cost="2.14358e+10" estimated-count="0.0524596" io-cost="0/376244/3.74414e+07/3.3879e+06/3.36972e+08" nw-cost="101/7.07987e+06/6.59762e+08/6.37193e+07/5.93786e+09" cpu-cost="0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09" dcpu-cost="0/1.50888e+06/1.82058e+08/1.3582e+07/1.63852e+09" min-mem-cost="8.24241e+06" max-mem-cost="8.24241e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174),(0.0524596,0.0524596)" order="" allow-disk-based-algorithm="true">
		<plan:column type="var" name="ext" column-index="17" static-type="STRING"/>
		<plan:expr>
		  <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="substring">
		    <plan:sparql-variable column-index="16">
		      <plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
		    </plan:sparql-variable>
		    <plan:add op="MINUS">
		      <plan:expr>
			<plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="string-length">
			  <plan:sparql-variable column-index="16">
			    <plan:qname name="rep" uri="" prfx="" ltrl="rep"/>
			  </plan:sparql-variable>
			</plan:builtin>
		      </plan:expr>
		      <plan:term>
			<plan:literal>
			  <plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
			</plan:literal>
		      </plan:term>
		    </plan:add>
		  </plan:builtin>
		</plan:expr>
		<plan:join type="scatter-join" id="4468365744515936111" cost="2.14358e+10" estimated-count="0.0524596" io-cost="0/376244/3.74414e+07/3.3879e+06/3.36972e+08" nw-cost="101/7.07987e+06/6.59762e+08/6.37193e+07/5.93786e+09" cpu-cost="0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09" dcpu-cost="0/1.50888e+06/1.82058e+08/1.3582e+07/1.63852e+09" min-mem-cost="8.24241e+06" max-mem-cost="8.24241e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)" order="">
		  <plan:hash left="0" right="0" op="="/>
		  <plan:scatter left="0" right="0" op="="/>
		  <plan:triple-index permutation="OPS" dedup="true" id="8342052435353403038" cost="761.028" estimated-count="1.1468" io-cost="0/24.8518/2.40724/223.666/21.6652" nw-cost="101/0/1.1468/101/10.3212" cpu-cost="0/0/0.0103212/0/0.0103212" dcpu-cost="0/0/40.997/0/368.973" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0" max-dmem-cost="0" cardinalities="(1.1468,1.1468)" dnode="true" order="0">
		    <plan:subject type="var" name="doc" column-index="0"/>
		    <plan:predicate type="iri">http://example.com/model#agendaOf</plan:predicate>
		    <plan:object type="global-variable" name="entityIri"/>
		  </plan:triple-index>
		  <plan:join type="parallel-hash-join" id="11516902948520793729" cost="2.14358e+10" estimated-count="0.0524596" io-cost="0/376217/3.74414e+07/3.38765e+06/3.36972e+08" nw-cost="103/7.07976e+06/6.59762e+08/6.37192e+07/5.93786e+09" cpu-cost="0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09" dcpu-cost="0/1.50884e+06/1.82058e+08/1.35817e+07/1.63852e+09" min-mem-cost="8.24241e+06" max-mem-cost="8.24241e+06" min-dmem-cost="0.666667" max-dmem-cost="0.666667" cardinalities="(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)" order="">
		    <plan:hash left="0" right="0" op="="/>
		    <plan:triple-index permutation="PSO" dedup="true" id="3291027627808537115" cost="851.81" estimated-count="1.15502" io-cost="0/37.2777/2.81203/335.499/25.3083" nw-cost="103/0/2.31004/103/20.7904" cpu-cost="0/0/0.0207904/0/0.0207904" dcpu-cost="0/0/47.2021/0/424.819" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(1.15502,1.15502)" dnode="true" order="0,1">
		      <plan:subject type="var" name="doc" column-index="0"/>
		      <plan:predicate type="iri">http://example.com/model#agendaOf</plan:predicate>
		      <plan:object type="var" name="event" column-index="1" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
		    </plan:triple-index>
		    <plan:join type="parallel-hash-join" id="13904633426812659401" cost="2.14358e+10" estimated-count="0.0520861" io-cost="0/376217/3.74414e+07/3.38729e+06/3.36972e+08" nw-cost="103/7.07976e+06/6.59762e+08/6.37191e+07/5.93786e+09" cpu-cost="0/1.34586e+07/8.37138e+09/1.34589e+07/8.37138e+09" dcpu-cost="0/1.50884e+06/1.82058e+08/1.35812e+07/1.63852e+09" min-mem-cost="8.2423e+06" max-mem-cost="8.2423e+06" min-dmem-cost="0.444444" max-dmem-cost="0.444444" cardinalities="(0.0520861,1.1468),(0,0),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)" order="">
		      <plan:hash left="8" right="8" op="="/>
		      <plan:join type="hash-join" id="2242614504466619398" cost="2.0383e+08" estimated-count="381101" io-cost="0/336644/39573.2/3.02979e+06/356159" nw-cost="103/6.33669e+06/743074/5.70306e+07/6.68767e+06" cpu-cost="0/8.76254e+06/2.07816e+06/8.76254e+06/2.07816e+06" dcpu-cost="0/1.34888e+06/159955/1.21399e+07/1.4396e+06" min-mem-cost="6.33669e+06" max-mem-cost="6.33669e+06" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(350274,350274),(93152,93152),(241,241),(381101,665174)" order="13,8">
			<plan:hash left="13" right="13" op="="/>
			<plan:triple-index permutation="PSO" dedup="true" id="1661195092213334520" cost="1.80326e+07" estimated-count="350802" io-cost="0/12.4259/37751.8/111.833/339766" nw-cost="103/0/701604/103/6.31444e+06" cpu-cost="0/0/6314.44/0/6314.44" dcpu-cost="0/0/157753/0/1.41978e+06" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(350274,350274),(93152,93152)" dnode="true" order="13,14">
			  <plan:subject type="var" name="lv" column-index="13"/>
			  <plan:predicate type="iri">http://example.com/model#lastModifiedDate</plan:predicate>
			  <plan:object type="var" name="date" column-index="14" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			</plan:triple-index>
			<plan:join type="hash-join" id="14815776600263248100" cost="1.83101e+08" estimated-count="403626" io-cost="0/298879/39573.2/2.68991e+06/356159" nw-cost="103/5.63509e+06/743074/5.07161e+07/6.68767e+06" cpu-cost="0/7.79234e+06/1.35178e+06/7.79234e+06/1.35178e+06" dcpu-cost="0/1.19113e+06/159955/1.07201e+07/1.4396e+06" min-mem-cost="5.63509e+06" max-mem-cost="5.63509e+06" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537),(0,0),(241,241),(403626,665174)" order="13,8">
			  <plan:hash left="13" right="13" op="="/>
			  <plan:triple-index permutation="PSO" dedup="true" id="9797935278401773863" cost="3.41536e+07" estimated-count="665174" io-cost="0/12.4259/70745.3/111.833/636708" nw-cost="103/0/1.33035e+06/103/1.19731e+07" cpu-cost="0/0/11973.1/0/11973.1" dcpu-cost="0/0/284571/0/2.56114e+06" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(619472,619472),(0,0),(0,0),(665174,665174)" dnode="true" order="16,13">
			    <plan:subject type="var" name="rep" column-index="16"/>
			    <plan:predicate type="iri">http://example.com/model#representationOf</plan:predicate>
			    <plan:object type="var" name="lv" column-index="13" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			  </plan:triple-index>
			  <plan:join type="hash-join" id="13509020847821968444" cost="1.44189e+08" estimated-count="375894" io-cost="0/228122/39573.2/2.05309e+06/356159" nw-cost="103/4.30474e+06/743074/3.87428e+07/6.68767e+06" cpu-cost="0/5.9527e+06/675313/5.9527e+06/675313" dcpu-cost="0/906556/159955/8.159e+06/1.4396e+06" min-mem-cost="4.30474e+06" max-mem-cost="4.30474e+06" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537),(0,0),(241,241)" order="13,8">
			    <plan:hash left="13" right="13" op="="/>
			    <plan:triple-index permutation="PSO" dedup="true" id="6090765313925739986" cost="1.10475e+08" estimated-count="2.15237e+06" io-cost="0/12.4259/228097/111.833/2.05287e+06" nw-cost="103/0/4.30474e+06/103/3.87426e+07" cpu-cost="0/0/38742.6/0/38742.6" dcpu-cost="0/0/906556/0/8.159e+06" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(2.12742e+06,2.12742e+06),(0,0),(241,241)" dnode="true" order="13,15">
			      <plan:subject type="var" name="lv" column-index="13"/>
			      <plan:predicate type="iri">http://example.com/model#hasLanguage</plan:predicate>
			      <plan:object type="var" name="lang" column-index="15" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			    </plan:triple-index>
			    <plan:triple-index permutation="PSO" dedup="true" id="10666940904566393153" cost="1.90796e+07" estimated-count="371537" io-cost="0/12.4259/39573.2/111.833/356159" nw-cost="103/0/743074/103/6.68767e+06" cpu-cost="0/0/6687.67/0/6687.67" dcpu-cost="0/0/159955/0/1.4396e+06" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537)" dnode="true" order="13,8">
			      <plan:subject type="var" name="lv" column-index="13"/>
			      <plan:predicate type="iri">http://example.com/model#languageVersionOf</plan:predicate>
			      <plan:object type="var" name="offdoc" column-index="8" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			    </plan:triple-index>
			  </plan:join>
			</plan:join>
		      </plan:join>
		      <plan:join type="hash-join" id="18444554812488464622" cost="2.12285e+10" estimated-count="9.63051" io-cost="0/148.935/3.74414e+07/1340.41/3.36972e+08" nw-cost="103/28.6282/6.59762e+08/770.654/5.93786e+09" cpu-cost="0/328.984/8.37138e+09/328.984/8.37138e+09" dcpu-cost="0/192.45/1.82058e+08/1732.05/1.63852e+09" min-mem-cost="11.4541" max-mem-cost="11.4541" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(1.1468,1.1468),(3.05349,3.44039),(3.05349,4.71662),(3.05349,4.71662),(0,0),(0,0),(9.63051,7.04639e+07),(9.63051,830),(9.63051,3.74407e+07)" order="">
			<plan:hash left="3" right="3" op="="/>
			<plan:join type="hash-join" id="10937299615633635854" cost="3093.09" estimated-count="3.05349" io-cost="0/77.3666/59.1424/696.299/532.282" nw-cost="103/2.29359/26.3346/226.642/441.011" cpu-cost="0/3.17164/313.228/3.17164/313.228" dcpu-cost="0/47.199/145.251/424.791/1307.26" min-mem-cost="2.29359" max-mem-cost="2.29359" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(1.1468,1.1468),(3.05349,3.44039),(3.05349,4.71662),(3.05349,4.71662)" order="">
			  <plan:hash left="0" right="0" op="="/>
			  <plan:triple-index permutation="PSO" dedup="true" id="12296383376849141725" cost="851.389" estimated-count="1.1468" io-cost="0/37.2777/2.81118/335.499/25.3006" nw-cost="103/0/2.29359/103/20.6423" cpu-cost="0/0/0.0206423/0/0.0206423" dcpu-cost="0/0/47.199/0/424.791" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(1.1468,1.1468)" dnode="true" order="0,2">
			    <plan:subject type="var" name="doc" column-index="0"/>
			    <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
			    <plan:object type="var" name="type" column-index="2" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			  </plan:triple-index>
			  <plan:zero-or-one id="11982131355882096123" cost="2496.73" estimated-count="9.16046" io-cost="0/37.2777/59.1424/335.499/532.282" nw-cost="103/0/26.3346/103/441.011" cpu-cost="0/0/296.742/0/296.742" dcpu-cost="0/0/145.251/0/1307.26" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(3.44039,3.44039),(0,0),(0,0),(3.44039,3.44039),(4.71662,4.71662),(4.71662,4.71662)" order="">
			    <plan:subject type="var" name="doc" column-index="0"/>
			    <plan:object type="var" name="version" column-index="3"/>
			    <plan:path>
			      <plan:triple-index permutation="PSO" dedup="true" id="7486106076243461871" cost="851.389" estimated-count="1.1468" io-cost="0/37.2777/2.81118/335.499/25.3006" nw-cost="103/0/2.29359/103/20.6423" cpu-cost="0/0/0.0206423/0/0.0206423" dcpu-cost="0/0/47.199/0/424.791" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(0,0),(1.1468,1.1468)" dnode="true" order="0,3">
				<plan:subject type="var" name="doc" column-index="0"/>
				<plan:predicate type="iri">http://example.com/model#hasOfficialDocument</plan:predicate>
				<plan:object type="var" name="version" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			      </plan:triple-index>
			    </plan:path>
			    <plan:all-nodes>
			      <plan:bind id="12682713840579545500" cost="1957.56" estimated-count="8.01366" io-cost="0/24.8518/31.4795/223.666/283.315" nw-cost="102/0/24.041/102/318.369" cpu-cost="0/0/296.722/0/296.722" dcpu-cost="0/0/98.0519/0/882.467" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(2.29359,2.29359),(0,0),(0,0),(2.29359,2.29359),(4.71662,4.71662),(4.71662,4.71662)" order="" allow-disk-based-algorithm="true">
				<plan:column type="var" name="version" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
				<plan:expr>
				  <plan:sparql-variable column-index="0">
				    <plan:qname name="doc" uri="" prfx="" ltrl="doc"/>
				  </plan:sparql-variable>
				</plan:expr>
				<plan:distinct>
				  <plan:sparql-union type="concat-union" id="6804523728194787617" cost="1809.3" estimated-count="8.01366" io-cost="0/24.8518/31.4795/223.666/283.315" nw-cost="102/0/24.041/102/318.369" cpu-cost="0/0/0.216369/0/0.216369" dcpu-cost="0/0/98.0519/0/882.467" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(2.29359,2.29359),(0,0),(0,0),(0,0),(4.71662,4.71662),(4.71662,4.71662)" order="">
				    <plan:triple-index permutation="SOP" dedup="true" id="9172139369210944703" cost="1115.28" estimated-count="4.71662" io-cost="0/24.8518/3.42387/223.666/30.8148" nw-cost="102/0/14.1499/102/127.349" cpu-cost="0/0/0.127349/0/0.127349" dcpu-cost="0/0/49.4259/0/444.833" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(0,0),(0,0),(4.71662,4.71662),(4.71662,4.71662)" dnode="true" order="0,5,4">
				      <plan:subject type="var" name="doc" column-index="0"/>
				      <plan:predicate type="blank" name="ANON10203058995374663882" column-index="4" hidden="true"/>
				      <plan:object type="blank" name="ANON5133475407332152043" column-index="5" static-type="TRIPLEINDEX_SCALAR_TYPE" hidden="true"/>
				    </plan:triple-index>
				    <plan:triple-index permutation="OPS" dedup="true" id="8526704247153592607" cost="1006.24" estimated-count="3.29704" io-cost="0/24.8518/3.20379/223.666/28.8341" nw-cost="102/0/9.89112/102/89.0201" cpu-cost="0/0/0.0890201/0/0.0890201" dcpu-cost="0/0/48.626/0/437.634" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(1.1468,1.1468),(0,0),(0,0),(0,0),(0,0),(0,0),(3.29704,3.29704),(3.29704,3.29704)" dnode="true" order="0,7,6">
				      <plan:subject type="blank" name="ANON1573785990181055679" column-index="6" hidden="true"/>
				      <plan:predicate type="blank" name="ANON4773646830931818906" column-index="7" hidden="true"/>
				      <plan:object type="var" name="doc" column-index="0" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
				    </plan:triple-index>
				  </plan:sparql-union>
				</plan:distinct>
			      </plan:bind>
			    </plan:all-nodes>
			  </plan:zero-or-one>
			</plan:join>
			<plan:zero-or-one id="12112345431103335789" cost="2.10285e+10" estimated-count="2.22239e+08" io-cost="0/12.4259/3.74414e+07/111.833/3.36972e+08" nw-cost="103/0/6.59762e+08/103/5.93786e+09" cpu-cost="0/0/7.97144e+09/0/7.97144e+09" dcpu-cost="0/0/1.82058e+08/0/1.63852e+09" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(7.04639e+07,7.04639e+07),(0,0),(0,0),(0,0),(0,0),(7.04639e+07,7.04639e+07),(830,830),(3.74407e+07,3.74407e+07)" order="">
			  <plan:subject type="var" name="version" column-index="3"/>
			  <plan:object type="var" name="offdoc" column-index="8"/>
			  <plan:path>
			    <plan:sparql-union type="concat-union" id="4099319548870819745" cost="3.57067e+08" estimated-count="6.95524e+06" io-cost="0/12.4259/738730/111.833/6.64857e+06" nw-cost="103/0/1.39105e+07/103/1.25194e+08" cpu-cost="0/0/125194/0/125194" dcpu-cost="0/0/2.95793e+06/0/2.66213e+07" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(6.85125e+06,6.85125e+06),(0,0),(0,0),(0,0),(0,0),(6.85125e+06,6.85125e+06)" order="">
			      <plan:triple-index permutation="PSO" dedup="true" id="1623141149072088214" cost="1.78534e+08" estimated-count="3.47762e+06" io-cost="0/12.4259/369359/111.833/3.32423e+06" nw-cost="103/0/6.95524e+06/103/6.25971e+07" cpu-cost="0/0/62597.1/0/62597.1" dcpu-cost="0/0/1.47896e+06/0/1.33107e+07" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(3.37364e+06,3.37364e+06),(0,0),(0,0),(0,0),(0,0),(3.47761e+06,3.47761e+06)" dnode="true" order="8,3">
				<plan:subject type="var" name="offdoc" column-index="8" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
				<plan:predicate type="iri">http://example.com/model#versionOf</plan:predicate>
				<plan:object type="var" name="version" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			      </plan:triple-index>
			      <plan:triple-index permutation="PSO" dedup="true" id="8472383069706485900" cost="1.78534e+08" estimated-count="3.47762e+06" io-cost="0/12.4259/369359/111.833/3.32423e+06" nw-cost="103/0/6.95524e+06/103/6.25971e+07" cpu-cost="0/0/62597.1/0/62597.1" dcpu-cost="0/0/1.47896e+06/0/1.33107e+07" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(3.47761e+06,3.47761e+06),(0,0),(0,0),(0,0),(0,0),(3.37364e+06,3.37364e+06)" dnode="true" order="3,8">
				<plan:subject type="var" name="version" column-index="3"/>
				<plan:predicate type="iri">http://example.com/model#versionOf</plan:predicate>
				<plan:object type="var" name="offdoc" column-index="8" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			      </plan:triple-index>
			    </plan:sparql-union>
			  </plan:path>
			  <plan:all-nodes>
			    <plan:bind id="5843173169828224951" cost="2.06714e+10" estimated-count="2.15284e+08" io-cost="0/0/3.67026e+07/0/3.30324e+08" nw-cost="102/0/6.45851e+08/102/5.81266e+09" cpu-cost="0/0/7.97131e+09/0/7.97131e+09" dcpu-cost="0/0/1.791e+08/0/1.6119e+09" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(6.36127e+07,6.36127e+07),(0,0),(0,0),(0,0),(0,0),(6.36127e+07,6.36127e+07),(830,830),(3.74407e+07,3.74407e+07)" order="" allow-disk-based-algorithm="true">
			      <plan:column type="var" name="offdoc" column-index="8" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
			      <plan:expr>
				<plan:sparql-variable column-index="3">
				  <plan:qname name="version" uri="" prfx="" ltrl="version"/>
				</plan:sparql-variable>
			      </plan:expr>
			      <plan:distinct>
				<plan:sparql-union type="concat-union" id="4833177953240693967" cost="1.66887e+10" estimated-count="2.15284e+08" io-cost="0/0/3.67026e+07/0/3.30324e+08" nw-cost="102/0/6.45851e+08/102/5.81266e+09" cpu-cost="0/0/5.81266e+06/0/5.81266e+06" dcpu-cost="0/0/1.791e+08/0/1.6119e+09" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(6.36127e+07,6.36127e+07),(0,0),(0,0),(0,0),(0,0),(0,0),(830,830),(3.74407e+07,3.74407e+07)" order="">
				  <plan:triple-index permutation="SOP" dedup="true" id="17722777398064325568" cost="8.34435e+09" estimated-count="1.07642e+08" io-cost="0/0/1.83513e+07/0/1.65162e+08" nw-cost="102/0/3.22926e+08/102/2.90633e+09" cpu-cost="0/0/2.90633e+06/0/2.90633e+06" dcpu-cost="0/0/8.95498e+07/0/8.05948e+08" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(2.6172e+07,2.6172e+07),(0,0),(0,0),(0,0),(0,0),(0,0),(830,830),(3.74407e+07,3.74407e+07)" dnode="true" order="3,10,9">
				    <plan:subject type="var" name="version" column-index="3"/>
				    <plan:predicate type="blank" name="ANON8463931900953575864" column-index="9" hidden="true"/>
				    <plan:object type="blank" name="ANON10296741369900852548" column-index="10" static-type="TRIPLEINDEX_SCALAR_TYPE" hidden="true"/>
				  </plan:triple-index>
				  <plan:triple-index permutation="OPS" dedup="true" id="11716247748121455127" cost="8.34435e+09" estimated-count="1.07642e+08" io-cost="0/0/1.83513e+07/0/1.65162e+08" nw-cost="102/0/3.22926e+08/102/2.90633e+09" cpu-cost="0/0/2.90633e+06/0/2.90633e+06" dcpu-cost="0/0/8.95498e+07/0/8.05948e+08" min-mem-cost="0" max-mem-cost="0" min-dmem-cost="0.222222" max-dmem-cost="0.222222" cardinalities="(0,0),(0,0),(0,0),(3.74407e+07,3.74407e+07),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(2.6172e+07,2.6172e+07),(830,830)" dnode="true" order="3,12,11">
				    <plan:subject type="blank" name="ANON952470988599034950" column-index="11" hidden="true"/>
				    <plan:predicate type="blank" name="ANON3861584042882918350" column-index="12" hidden="true"/>
				    <plan:object type="var" name="version" column-index="3" static-type="TRIPLEINDEX_SCALAR_TYPE"/>
				  </plan:triple-index>
				</plan:sparql-union>
			      </plan:distinct>
			    </plan:bind>
			  </plan:all-nodes>
			</plan:zero-or-one>
		      </plan:join>
		    </plan:join>
		  </plan:join>
		</plan:join>
	      </plan:bind>
	    </plan:group>
	  </plan:filter>
	</plan:order-by>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"distinct", "_parent":"N"}',
'{"_id":"N_1_1", "_name":"project", "_parent":"N_1", "cardinalities":"(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)", "column":["0 (?event)", "1 (?rep)", "2 (?lang)", "3 (?offdoc)", "4 (?type)", "5 (?lv)", "6 (?ext)", "7 (?date)", "8 (?latest_date)"], "cost":"-nan", "cpu-cost":"0/inf/-nan/inf/-nan", "dcpu-cost":"0/1.83566e+08/0/1.6521e+09/0", "estimated-count":"7.46611e-06", "id":"4829368362682332634", "io-cost":"0/3.78176e+07/0/3.4036e+08/0", "max-dmem-cost":"0.666667", "max-mem-cost":"8.89316e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"1.04557e+07", "nw-cost":"101/6.66842e+08/0/6.00157e+09/0", "order":"0,4,3,5,1"}',
'{"_id":"N_1_1_1", "_name":"order-by", "_parent":"N_1_1", "allow-disk-based-algorithm":"true", "cardinalities":"(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)", "cost":"-nan", "cpu-cost":"0/inf/-nan/inf/-nan", "dcpu-cost":"0/1.83566e+08/0/1.6521e+09/0", "estimated-count":"7.46611e-06", "id":"5513871949623171810", "io-cost":"0/3.78176e+07/0/3.4036e+08/0", "max-dmem-cost":"0.666667", "max-mem-cost":"8.89316e+06", "memory-budget-bytes":"314436354", "memory-fraction":"0.01", "min-dmem-cost":"0.666667", "min-mem-cost":"1.04557e+07", "num-sorted":"2", "nw-cost":"101/6.66842e+08/0/6.00157e+09/0", "order":"0,4,3,5,1", "order-spec":["0 (?event)", "4 (?type)", "3 (?offdoc)", "5 (?lv)", "1 (?rep)"], "total-memory-bytes":"0"}',
'{"_id":"N_1_1_1_1", "_name":"filter", "_parent":"N_1_1_1", "cardinalities":"(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)", "condition":"?date eq ?latest_date", "cost":"2.35586e+10", "cpu-cost":"0/8.38484e+09/7.19822/8.38484e+09/7.19822", "dcpu-cost":"0/1.83566e+08/0/1.6521e+09/0", "estimated-count":"7.46611e-06", "id":"17242677487444134174", "io-cost":"0/3.78176e+07/0/3.4036e+08/0", "is-empty":"false", "max-dmem-cost":"0.666667", "max-mem-cost":"8.38106e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"9.1623e+06", "nw-cost":"101/6.66842e+08/0/6.00157e+09/0", "order":"0,4,2,6"}',
'{"_id":"N_1_1_1_1_1", "_name":"group", "_parent":"N_1_1_1_1", "aggregate":["max(?date) as ?latest_date", "sample(?event) as ?event", "sample(?rep) as ?rep", "sample(?lang) as ?lang", "sample(?offdoc) as ?offdoc", "sample(?type) as ?type", "sample(?lv) as ?lv", "sample(?ext) as ?ext", "sample(?date) as ?date"], "allow-disk-based-algorithm":"true", "cardinalities":"(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06),(7.46611e-06,7.46611e-06)", "cost":"2.35586e+10", "cpu-cost":"0/8.38484e+09/7.19806/8.38484e+09/7.19806", "dcpu-cost":"0/1.83566e+08/0/1.6521e+09/0", "estimated-count":"7.46611e-06", "id":"17467539245668624944", "io-cost":"0/3.78176e+07/0/3.4036e+08/0", "max-dmem-cost":"0.666667", "max-mem-cost":"8.38106e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"9.1623e+06", "nw-cost":"101/6.66842e+08/0/6.00157e+09/0", "order":"0,4,2,6", "order-spec":["1 (?event)", "2 (?type)", "15 (?lang)", "17 (?ext)"], "type":"sort-group"}',
'{"_id":"N_1_1_1_1_1_1", "_name":"sort", "_parent":"N_1_1_1_1_1", "cardinalities":"(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174),(0.0524596,0.0524596)", "cost":"2.35586e+10", "cpu-cost":"0/8.38484e+09/0/8.38484e+09/0", "dcpu-cost":"0/1.83566e+08/0/1.6521e+09/0", "estimated-count":"0.0524596", "id":"17467539245668624945", "io-cost":"0/3.78176e+07/0/3.4036e+08/0", "max-dmem-cost":"0.666667", "max-mem-cost":"8.24755e+06", "memory-budget-bytes":"314436354", "memory-fraction":"0.01", "min-dmem-cost":"0.666667", "min-mem-cost":"9.0288e+06", "num-sorted":"0", "nw-cost":"101/6.66842e+08/0/6.00157e+09/0", "order-spec":["1 (?event)", "2 (?type)", "15 (?lang)", "17 (?ext)"], "total-memory-bytes":"127"}',
'{"_id":"N_1_1_1_1_1_1_1", "_name":"bind", "_parent":"N_1_1_1_1_1_1", "allow-disk-based-algorithm":"true", "cardinalities":"(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174),(0.0524596,0.0524596)", "cost":"2.14358e+10", "cpu-cost":"0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09", "dcpu-cost":"0/1.50888e+06/1.82058e+08/1.3582e+07/1.63852e+09", "estimated-count":"0.0524596", "expr":"fn:substring(?rep, fn:string-length(?rep) - 2) as ?ext", "id":"17426030252647911313", "io-cost":"0/376244/3.74414e+07/3.3879e+06/3.36972e+08", "max-dmem-cost":"0.666667", "max-mem-cost":"8.24241e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"8.24241e+06", "nw-cost":"101/7.07987e+06/6.59762e+08/6.37193e+07/5.93786e+09", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1", "_name":"scatter-join", "_parent":"N_1_1_1_1_1_1_1", "cardinalities":"(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)", "condition":"0=0", "cost":"2.14358e+10", "cpu-cost":"0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09", "dcpu-cost":"0/1.50888e+06/1.82058e+08/1.3582e+07/1.63852e+09", "estimated-count":"0.0524596", "id":"4468365744515936111", "io-cost":"0/376244/3.74414e+07/3.3879e+06/3.36972e+08", "max-dmem-cost":"0.666667", "max-mem-cost":"8.24241e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"8.24241e+06", "nw-cost":"101/7.07987e+06/6.59762e+08/6.37193e+07/5.93786e+09", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1", "_parentLabel":"left", "cardinalities":"(1.1468,1.1468)", "cost":"761.028", "cpu-cost":"0/0/0.0103212/0/0.0103212", "dcpu-cost":"0/0/40.997/0/368.973", "dedup":"true", "dnode":"true", "estimated-count":"1.1468", "id":"8342052435353403038", "io-cost":"0/24.8518/2.40724/223.666/21.6652", "max-dmem-cost":"0", "max-mem-cost":"0", "min-dmem-cost":"0", "min-mem-cost":"0", "nw-cost":"101/0/1.1468/101/10.3212", "object":"$entityIri", "order":"0", "permutation":"OPS", "predicate":"<http://example.com/model#agendaOf>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1_1", "_parentLabel":"right", "cardinalities":"(0.0520861,1.1468),(0.0524596,1.15502),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)", "condition":"0=0", "cost":"2.14358e+10", "cpu-cost":"0/1.34587e+07/8.37138e+09/1.34591e+07/8.37138e+09", "dcpu-cost":"0/1.50884e+06/1.82058e+08/1.35817e+07/1.63852e+09", "estimated-count":"0.0524596", "id":"11516902948520793729", "io-cost":"0/376217/3.74414e+07/3.38765e+06/3.36972e+08", "max-dmem-cost":"0.666667", "max-mem-cost":"8.24241e+06", "min-dmem-cost":"0.666667", "min-mem-cost":"8.24241e+06", "nw-cost":"103/7.07976e+06/6.59762e+08/6.37192e+07/5.93786e+09", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R", "_parentLabel":"left", "cardinalities":"(1.1468,1.1468),(1.15502,1.15502)", "cost":"851.81", "cpu-cost":"0/0/0.0207904/0/0.0207904", "dcpu-cost":"0/0/47.2021/0/424.819", "dedup":"true", "dnode":"true", "estimated-count":"1.15502", "id":"3291027627808537115", "io-cost":"0/37.2777/2.81203/335.499/25.3083", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/2.31004/103/20.7904", "object":"1 (?event)", "order":"0,1", "permutation":"PSO", "predicate":"<http://example.com/model#agendaOf>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R", "_parentLabel":"right", "cardinalities":"(0.0520861,1.1468),(0,0),(0.0520861,1.1468),(0.0520861,3.44039),(0.0520861,4.71662),(0.0520861,4.71662),(0,0),(0,0),(0.0520861,354532),(0.0520861,830),(0.0520861,3.74407e+07),(0,0),(0,0),(0.0520861,350274),(0.0520861,93152),(0.0520861,241),(0.0520861,665174)", "condition":"8=8", "cost":"2.14358e+10", "cpu-cost":"0/1.34586e+07/8.37138e+09/1.34589e+07/8.37138e+09", "dcpu-cost":"0/1.50884e+06/1.82058e+08/1.35812e+07/1.63852e+09", "estimated-count":"0.0520861", "id":"13904633426812659401", "io-cost":"0/376217/3.74414e+07/3.38729e+06/3.36972e+08", "max-dmem-cost":"0.444444", "max-mem-cost":"8.2423e+06", "min-dmem-cost":"0.444444", "min-mem-cost":"8.2423e+06", "nw-cost":"103/7.07976e+06/6.59762e+08/6.37191e+07/5.93786e+09", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L", "_name":"hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(350274,350274),(93152,93152),(241,241),(381101,665174)", "condition":"13=13", "cost":"2.0383e+08", "cpu-cost":"0/8.76254e+06/2.07816e+06/8.76254e+06/2.07816e+06", "dcpu-cost":"0/1.34888e+06/159955/1.21399e+07/1.4396e+06", "estimated-count":"381101", "id":"2242614504466619398", "io-cost":"0/336644/39573.2/3.02979e+06/356159", "max-dmem-cost":"0.222222", "max-mem-cost":"6.33669e+06", "min-dmem-cost":"0.222222", "min-mem-cost":"6.33669e+06", "nw-cost":"103/6.33669e+06/743074/5.70306e+07/6.68767e+06", "order":"13,8"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(350274,350274),(93152,93152)", "cost":"1.80326e+07", "cpu-cost":"0/0/6314.44/0/6314.44", "dcpu-cost":"0/0/157753/0/1.41978e+06", "dedup":"true", "dnode":"true", "estimated-count":"350802", "id":"1661195092213334520", "io-cost":"0/12.4259/37751.8/111.833/339766", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/701604/103/6.31444e+06", "object":"14 (?date)", "order":"13,14", "permutation":"PSO", "predicate":"<http://example.com/model#lastModifiedDate>", "subject":"13 (?lv)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_R", "_name":"hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537),(0,0),(241,241),(403626,665174)", "condition":"13=13", "cost":"1.83101e+08", "cpu-cost":"0/7.79234e+06/1.35178e+06/7.79234e+06/1.35178e+06", "dcpu-cost":"0/1.19113e+06/159955/1.07201e+07/1.4396e+06", "estimated-count":"403626", "id":"14815776600263248100", "io-cost":"0/298879/39573.2/2.68991e+06/356159", "max-dmem-cost":"0.222222", "max-mem-cost":"5.63509e+06", "min-dmem-cost":"0.222222", "min-mem-cost":"5.63509e+06", "nw-cost":"103/5.63509e+06/743074/5.07161e+07/6.68767e+06", "order":"13,8"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(619472,619472),(0,0),(0,0),(665174,665174)", "cost":"3.41536e+07", "cpu-cost":"0/0/11973.1/0/11973.1", "dcpu-cost":"0/0/284571/0/2.56114e+06", "dedup":"true", "dnode":"true", "estimated-count":"665174", "id":"9797935278401773863", "io-cost":"0/12.4259/70745.3/111.833/636708", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/1.33035e+06/103/1.19731e+07", "object":"13 (?lv)", "order":"16,13", "permutation":"PSO", "predicate":"<http://example.com/model#representationOf>", "subject":"16 (?rep)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_R_R", "_name":"hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537),(0,0),(241,241)", "condition":"13=13", "cost":"1.44189e+08", "cpu-cost":"0/5.9527e+06/675313/5.9527e+06/675313", "dcpu-cost":"0/906556/159955/8.159e+06/1.4396e+06", "estimated-count":"375894", "id":"13509020847821968444", "io-cost":"0/228122/39573.2/2.05309e+06/356159", "max-dmem-cost":"0.222222", "max-mem-cost":"4.30474e+06", "min-dmem-cost":"0.222222", "min-mem-cost":"4.30474e+06", "nw-cost":"103/4.30474e+06/743074/3.87428e+07/6.68767e+06", "order":"13,8"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(2.12742e+06,2.12742e+06),(0,0),(241,241)", "cost":"1.10475e+08", "cpu-cost":"0/0/38742.6/0/38742.6", "dcpu-cost":"0/0/906556/0/8.159e+06", "dedup":"true", "dnode":"true", "estimated-count":"2.15237e+06", "id":"6090765313925739986", "io-cost":"0/12.4259/228097/111.833/2.05287e+06", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/4.30474e+06/103/3.87426e+07", "object":"15 (?lang)", "order":"13,15", "permutation":"PSO", "predicate":"<http://example.com/model#hasLanguage>", "subject":"13 (?lv)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_L_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_L_R_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(354532,354532),(0,0),(0,0),(0,0),(0,0),(371537,371537)", "cost":"1.90796e+07", "cpu-cost":"0/0/6687.67/0/6687.67", "dcpu-cost":"0/0/159955/0/1.4396e+06", "dedup":"true", "dnode":"true", "estimated-count":"371537", "id":"10666940904566393153", "io-cost":"0/12.4259/39573.2/111.833/356159", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/743074/103/6.68767e+06", "object":"8 (?offdoc)", "order":"13,8", "permutation":"PSO", "predicate":"<http://example.com/model#languageVersionOf>", "subject":"13 (?lv)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R", "_name":"hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R_R", "_parentLabel":"right", "cardinalities":"(1.1468,1.1468),(0,0),(1.1468,1.1468),(3.05349,3.44039),(3.05349,4.71662),(3.05349,4.71662),(0,0),(0,0),(9.63051,7.04639e+07),(9.63051,830),(9.63051,3.74407e+07)", "condition":"3=3", "cost":"2.12285e+10", "cpu-cost":"0/328.984/8.37138e+09/328.984/8.37138e+09", "dcpu-cost":"0/192.45/1.82058e+08/1732.05/1.63852e+09", "estimated-count":"9.63051", "id":"18444554812488464622", "io-cost":"0/148.935/3.74414e+07/1340.41/3.36972e+08", "max-dmem-cost":"0.222222", "max-mem-cost":"11.4541", "min-dmem-cost":"0.222222", "min-mem-cost":"11.4541", "nw-cost":"103/28.6282/6.59762e+08/770.654/5.93786e+09", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_L", "_name":"hash-join", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R", "_parentLabel":"left", "cardinalities":"(1.1468,1.1468),(0,0),(1.1468,1.1468),(3.05349,3.44039),(3.05349,4.71662),(3.05349,4.71662)", "condition":"0=0", "cost":"3093.09", "cpu-cost":"0/3.17164/313.228/3.17164/313.228", "dcpu-cost":"0/47.199/145.251/424.791/1307.26", "estimated-count":"3.05349", "id":"10937299615633635854", "io-cost":"0/77.3666/59.1424/696.299/532.282", "max-dmem-cost":"0.222222", "max-mem-cost":"2.29359", "min-dmem-cost":"0.222222", "min-mem-cost":"2.29359", "nw-cost":"103/2.29359/26.3346/226.642/441.011", "order":""}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_L", "_parentLabel":"left", "cardinalities":"(1.1468,1.1468),(0,0),(1.1468,1.1468)", "cost":"851.389", "cpu-cost":"0/0/0.0206423/0/0.0206423", "dcpu-cost":"0/0/47.199/0/424.791", "dedup":"true", "dnode":"true", "estimated-count":"1.1468", "id":"12296383376849141725", "io-cost":"0/37.2777/2.81118/335.499/25.3006", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/2.29359/103/20.6423", "object":"2 (?type)", "order":"0,2", "permutation":"PSO", "predicate":"rdf:type", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_L_R", "_name":"zero-or-one", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_L", "_parentLabel":"right", "cardinalities":"(3.44039,3.44039),(0,0),(0,0),(3.44039,3.44039),(4.71662,4.71662),(4.71662,4.71662)", "cost":"2496.73", "cpu-cost":"0/0/296.742/0/296.742", "dcpu-cost":"0/0/145.251/0/1307.26", "estimated-count":"9.16046", "id":"11982131355882096123", "io-cost":"0/37.2777/59.1424/335.499/532.282", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/26.3346/103/441.011", "object":"3 (?version)", "order":"", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_L_R_1", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_L_R", "cardinalities":"(1.1468,1.1468),(0,0),(0,0),(1.1468,1.1468)", "cost":"851.389", "cpu-cost":"0/0/0.0206423/0/0.0206423", "dcpu-cost":"0/0/47.199/0/424.791", "dedup":"true", "dnode":"true", "estimated-count":"1.1468", "id":"7486106076243461871", "io-cost":"0/37.2777/2.81118/335.499/25.3006", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/2.29359/103/20.6423", "object":"3 (?version)", "order":"0,3", "permutation":"PSO", "predicate":"<http://example.com/model#hasOfficialDocument>", "subject":"0 (?doc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_R", "_name":"zero-or-one", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(7.04639e+07,7.04639e+07),(0,0),(0,0),(0,0),(0,0),(7.04639e+07,7.04639e+07),(830,830),(3.74407e+07,3.74407e+07)", "cost":"2.10285e+10", "cpu-cost":"0/0/7.97144e+09/0/7.97144e+09", "dcpu-cost":"0/0/1.82058e+08/0/1.63852e+09", "estimated-count":"2.22239e+08", "id":"12112345431103335789", "io-cost":"0/12.4259/3.74414e+07/111.833/3.36972e+08", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/6.59762e+08/103/5.93786e+09", "object":"8 (?offdoc)", "order":"", "subject":"3 (?version)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_R_1", "_name":"sparql-union", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_R", "cardinalities":"(0,0),(0,0),(0,0),(6.85125e+06,6.85125e+06),(0,0),(0,0),(0,0),(0,0),(6.85125e+06,6.85125e+06)", "cost":"3.57067e+08", "cpu-cost":"0/0/125194/0/125194", "dcpu-cost":"0/0/2.95793e+06/0/2.66213e+07", "estimated-count":"6.95524e+06", "id":"4099319548870819745", "io-cost":"0/12.4259/738730/111.833/6.64857e+06", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/1.39105e+07/103/1.25194e+08", "order":"", "type":"concat-union"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_R_1_1", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_R_1", "cardinalities":"(0,0),(0,0),(0,0),(3.37364e+06,3.37364e+06),(0,0),(0,0),(0,0),(0,0),(3.47761e+06,3.47761e+06)", "cost":"1.78534e+08", "cpu-cost":"0/0/62597.1/0/62597.1", "dcpu-cost":"0/0/1.47896e+06/0/1.33107e+07", "dedup":"true", "dnode":"true", "estimated-count":"3.47762e+06", "id":"1623141149072088214", "io-cost":"0/12.4259/369359/111.833/3.32423e+06", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/6.95524e+06/103/6.25971e+07", "object":"3 (?version)", "order":"8,3", "permutation":"PSO", "predicate":"<http://example.com/model#versionOf>", "subject":"8 (?offdoc)"}',
'{"_id":"N_1_1_1_1_1_1_1_1_R_R_R_R_1_2", "_name":"triple-index", "_parent":"N_1_1_1_1_1_1_1_1_R_R_R_R_1", "cardinalities":"(0,0),(0,0),(0,0),(3.47761e+06,3.47761e+06),(0,0),(0,0),(0,0),(0,0),(3.37364e+06,3.37364e+06)", "cost":"1.78534e+08", "cpu-cost":"0/0/62597.1/0/62597.1", "dcpu-cost":"0/0/1.47896e+06/0/1.33107e+07", "dedup":"true", "dnode":"true", "estimated-count":"3.47762e+06", "id":"8472383069706485900", "io-cost":"0/12.4259/369359/111.833/3.32423e+06", "max-dmem-cost":"0.222222", "max-mem-cost":"0", "min-dmem-cost":"0.222222", "min-mem-cost":"0", "nw-cost":"103/0/6.95524e+06/103/6.25971e+07", "object":"8 (?offdoc)", "order":"3,8", "permutation":"PSO", "predicate":"<http://example.com/model#versionOf>", "subject":"3 (?version)"}'
))
};

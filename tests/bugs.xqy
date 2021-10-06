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
};

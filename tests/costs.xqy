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

module namespace t = "http://marklogic.com/optic/qputils/costs";
declare default function namespace "http://marklogic.com/optic/qputils/costs";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function costs()
{
map:entry("name","costs1")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="desc(last(5))">
	<plan:column type="var" name="s" column-index="0"/>
	<plan:column type="var" name="obfLabel1" column-index="1"/>
	<plan:column type="var" name="obfLabel2" column-index="2"/>
	<plan:column type="var" name="obfLabel3" column-index="3"/>
	<plan:column type="var" name="orderByItem0" column-index="4"/>
	<plan:column type="var" name="orderByItem1" column-index="5"/>
	<plan:order-by num-sorted="0" order="desc(last(5)),singletons(6)" cost="4.85082e+07" estimated-count="1821.56" io-cost="0/144221/0/3.46129e+06/0" nw-cost="102/30394.3/0/531593/0" cpu-cost="0/167606/0/167606/0" dcpu-cost="0/259879/0/6.2371e+06/0" mem-cost="50176" dmem-cost="273.273" cardinalities="1185,36,36,36,1820.26,1185.85,1,1185,1820.26,1185.85">
	  <plan:order-spec descending="true" nulls-first="false" type="var" name="orderByItem1" column-index="5"/>
	  <plan:left-join type="left-scatter-join" order=",singletons(6)" cost="4.55241e+07" estimated-count="1821.56" io-cost="0/129926/14294.7/3.11822e+06/343072" nw-cost="102/28022.3/2372/474665/56928" cpu-cost="0/109864/3064.34/109864/3064.34" dcpu-cost="0/196811/63068.7/4.72345e+06/1.51365e+06" mem-cost="30138.8" dmem-cost="273.273" cardinalities="1185,36,36,36,1820.26,1185.85,1,1185,1820.26,1185.85">
	    <plan:hash left="0" right="0" op="="/>
	    <plan:scatter left="0" right="0" op="="/>
	    <plan:left-join type="left-scatter-join" order=",singletons(6)" cost="2.67806e+07" estimated-count="1820.26" io-cost="0/70625.8/20486.1/1.69502e+06/491666" nw-cost="102/17064.8/3642/290601/87408" cpu-cost="0/67057.5/3727.92/67057.5/3727.92" dcpu-cost="0/70568.7/90271.9/1.69365e+06/2.16653e+06" mem-cost="14391.8" dmem-cost="273.273" cardinalities="1185,36,36,0,1820.26,0,1,1185,1820.26">
	      <plan:hash left="0" right="0" op="="/>
	      <plan:scatter left="0" right="0" op="="/>
	      <plan:join type="scatter-join" order="7,1,singletons(6)" cost="7.81913e+06" estimated-count="1185" io-cost="0/15742.9/14282.6/377829/342783" nw-cost="102/4841/2370/89484/56880" cpu-cost="0/23865/1241.88/23865/1241.88" dcpu-cost="0/835.772/63015.5/20058.5/1.51237e+06" mem-cost="4740" dmem-cost="107.727" cardinalities="1185,36,0,0,0,0,1,1185">
		<plan:hash left="7" right="7" op="="/>
		<plan:scatter left="7" right="7" op="="/>
		<plan:triple-index permutation="POS" dedup="true" order="0,7,singletons(6)" cost="523957" estimated-count="1185" io-cost="0/38.5961/433.086/926.307/10394.1" nw-cost="102/0/3555/306/85320" cpu-cost="0/0/1270.32/0/1270.32" dcpu-cost="0/0/835.772/0/20058.5" mem-cost="0" dmem-cost="0" cardinalities="1185,0,0,0,0,0,1,1185">
		  <plan:subject type="var" name="s" column-index="0"/>
		  <plan:predicate type="iri">http://ml.com/obf/b#obfStatus</plan:predicate>
		  <plan:object type="var" name="opStatus" column-index="6"/>
		  <plan:graph type="var" name="obfStatus1sContainer" column-index="7"/>
		  <plan:join-filter op="=">
		    <plan:left type="var" name="opStatus" column-index="6"/>
		    <plan:right-expr>
		      <plan:literal>
			<plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://ml.com/obf/b#obfStatus1</plan:value>
		      </plan:literal>
		    </plan:right-expr>
		  </plan:join-filter>
		</plan:triple-index>
		<plan:triple-index permutation="PSO" dedup="true" order="7,1" cost="6.73857e+06" estimated-count="1185" io-cost="0/15271.2/14282.6/366509/342783" nw-cost="1286/0/2370/3858/56880" cpu-cost="0/0/56.88/0/56.88" dcpu-cost="0/0/63015.5/0/1.51237e+06" mem-cost="0" dmem-cost="107.727" cardinalities="0,36,0,0,0,0,0,1185">
		  <plan:subject type="var" name="obfStatus1sContainer" column-index="7"/>
		  <plan:predicate type="iri">http://ml.com/obf/d#obfLabel4</plan:predicate>
		  <plan:object type="var" name="obfLabel1" column-index="1"/>
		</plan:triple-index>
	      </plan:join>
	      <plan:join type="scatter-join" order="8,2" cost="1.60749e+07" estimated-count="1820.26" io-cost="0/40600.3/20486.1/974407/491666" nw-cost="1286/8567.77/3642/144237/87408" cpu-cost="0/34840.6/1907.66/34840.6/1907.66" dcpu-cost="0/6717.39/90271.9/161217/2.16653e+06" mem-cost="7281.77" dmem-cost="273.273" cardinalities="1185,0,36,0,1820.26,0,0,0,1820.26">
		<plan:hash left="8" right="8" op="="/>
		<plan:scatter left="8" right="8" op="="/>
		<plan:triple-index permutation="PSO" dedup="true" order="0,4,8" cost="4.87037e+06" estimated-count="1820.26" io-cost="0/15271.2/1875.5/366509/45011.9" nw-cost="1286/0/5460.77/3858/131058" cpu-cost="0/0/131.058/0/131.058" dcpu-cost="0/0/6717.39/0/161217" mem-cost="0" dmem-cost="107.727" cardinalities="1185,0,0,0,1820.26,0,0,0,1820.26">
		  <plan:subject type="var" name="s" column-index="0"/>
		  <plan:predicate type="iri">http://ml.com/obf/b#width</plan:predicate>
		  <plan:object type="var" name="orderByItem0" column-index="4"/>
		  <plan:graph type="var" name="orderBy0sContainer" column-index="8"/>
		</plan:triple-index>
		<plan:triple-index permutation="PSO" dedup="true" order="8,2" cost="1.01322e+07" estimated-count="1821" io-cost="0/23453.6/20486.1/562886/491666" nw-cost="3107/0/3642/9321/87408" cpu-cost="0/0/87.408/0/87.408" dcpu-cost="0/0/90271.9/0/2.16653e+06" mem-cost="0" dmem-cost="273.273" cardinalities="0,0,36,0,0,0,0,0,1821">
		  <plan:subject type="var" name="orderBy0sContainer" column-index="8"/>
		  <plan:predicate type="iri">http://ml.com/obf/d#obfLabel4</plan:predicate>
		  <plan:object type="var" name="obfLabel2" column-index="2"/>
		</plan:triple-index>
	      </plan:join>
	      <plan:filters/>
	      <plan:ljfilters/>
	    </plan:left-join>
	    <plan:join type="scatter-join" order="9,3" cost="1.45608e+07" estimated-count="1185.85" io-cost="0/38814.1/14294.7/931538/343072" nw-cost="1286/6029.55/2372/96655.2/56928" cpu-cost="0/22696.7/1242.78/22696.7/1242.78" dcpu-cost="0/35970/63068.7/863279/1.51365e+06" mem-cost="4743.55" dmem-cost="215.545" cardinalities="1185,0,0,36,0,1185.85,0,0,0,1185.85">
	      <plan:hash left="9" right="9" op="="/>
	      <plan:scatter left="9" right="9" op="="/>
	      <plan:triple-index permutation="PSO" dedup="true" order="0,5,9" cost="5.796e+06" estimated-count="1185.85" io-cost="0/15271.2/8258.84/366509/198212" nw-cost="1286/0/3557.55/3858/85381.2" cpu-cost="0/0/85.3812/0/85.3812" dcpu-cost="0/0/35970/0/863279" mem-cost="0" dmem-cost="107.727" cardinalities="1185,0,0,0,0,1185.85,0,0,0,1185.85">
		<plan:subject type="var" name="s" column-index="0"/>
		<plan:predicate type="iri">http://ml.com/obf/a#name</plan:predicate>
		<plan:object type="var" name="orderByItem1" column-index="5"/>
		<plan:graph type="var" name="orderBy1sContainer" column-index="9"/>
	      </plan:triple-index>
	      <plan:triple-index permutation="PSO" dedup="true" order="9,3" cost="6.79164e+06" estimated-count="1186" io-cost="0/15284.1/14294.7/366818/343072" nw-cost="2472/0/2372/7416/56928" cpu-cost="0/0/56.928/0/56.928" dcpu-cost="0/0/63068.7/0/1.51365e+06" mem-cost="0" dmem-cost="215.545" cardinalities="0,0,0,36,0,0,0,0,0,1186">
		<plan:subject type="var" name="orderBy1sContainer" column-index="9"/>
		<plan:predicate type="iri">http://ml.com/obf/d#obfLabel4</plan:predicate>
		<plan:object type="var" name="obfLabel3" column-index="3"/>
	      </plan:triple-index>
	    </plan:join>
	    <plan:filters/>
	    <plan:ljfilters/>
	  </plan:left-join>
	</plan:order-by>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_parent":"N", "_name":"distinct"}',
'{"order":"desc(last(5))", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (?s)", "1 (?obfLabel1)", "2 (?obfLabel2)", "3 (?obfLabel3)", "4 (?orderByItem0)", "5 (?orderByItem1)"]}',
'{"cost":"4.85082e+07", "nw-cost":"102/30394.3/0/531593/0", "cpu-cost":"0/167606/0/167606/0", "order":"desc(last(5)),singletons(6)", "_name":"order-by", "num-sorted":"0", "dcpu-cost":"0/259879/0/6.2371e+06/0", "_id":"N_1_1_1", "_parent":"N_1_1", "mem-cost":"50176", "io-cost":"0/144221/0/3.46129e+06/0", "estimated-count":"1821.56", "dmem-cost":"273.273", "cardinalities":"1185,36,36,36,1820.26,1185.85,1,1185,1820.26,1185.85", "order-spec":"5 (?orderByItem1) [desc]"}',
'{"cost":"4.55241e+07", "nw-cost":"102/28022.3/2372/474665/56928", "cpu-cost":"0/109864/3064.34/109864/3064.34", "order":",singletons(6)", "condition":"0=0", "_name":"left-scatter-join", "dcpu-cost":"0/196811/63068.7/4.72345e+06/1.51365e+06", "_id":"N_1_1_1_1", "_parent":"N_1_1_1", "mem-cost":"30138.8", "io-cost":"0/129926/14294.7/3.11822e+06/343072", "estimated-count":"1821.56", "dmem-cost":"273.273", "cardinalities":"1185,36,36,36,1820.26,1185.85,1,1185,1820.26,1185.85"}',
'{"cost":"2.67806e+07", "nw-cost":"102/17064.8/3642/290601/87408", "cpu-cost":"0/67057.5/3727.92/67057.5/3727.92", "order":",singletons(6)", "condition":"0=0", "_name":"left-scatter-join", "dcpu-cost":"0/70568.7/90271.9/1.69365e+06/2.16653e+06", "_parentLabel":"left", "_id":"N_1_1_1_1_L", "_parent":"N_1_1_1_1", "mem-cost":"14391.8", "io-cost":"0/70625.8/20486.1/1.69502e+06/491666", "estimated-count":"1820.26", "dmem-cost":"273.273", "cardinalities":"1185,36,36,0,1820.26,0,1,1185,1820.26"}',
'{"cost":"7.81913e+06", "nw-cost":"102/4841/2370/89484/56880", "cpu-cost":"0/23865/1241.88/23865/1241.88", "order":"7,1,singletons(6)", "condition":"7=7", "_name":"scatter-join", "dcpu-cost":"0/835.772/63015.5/20058.5/1.51237e+06", "_parentLabel":"left", "_id":"N_1_1_1_1_L_L", "_parent":"N_1_1_1_1_L", "mem-cost":"4740", "io-cost":"0/15742.9/14282.6/377829/342783", "estimated-count":"1185", "dmem-cost":"107.727", "cardinalities":"1185,36,0,0,0,0,1,1185"}',
'{"dedup":"true", "cost":"523957", "nw-cost":"102/0/3555/306/85320", "cpu-cost":"0/0/1270.32/0/1270.32", "order":"0,7,singletons(6)", "graph":"7 (?obfStatus1sContainer)", "subject":"0 (?s)", "_name":"triple-index", "dcpu-cost":"0/0/835.772/0/20058.5", "_parentLabel":"left", "predicate":"<http://ml.com/obf/b#obfStatus>", "_id":"N_1_1_1_1_L_L_L", "_parent":"N_1_1_1_1_L_L", "mem-cost":"0", "permutation":"POS", "estimated-count":"1185", "io-cost":"0/38.5961/433.086/926.307/10394.1", "dmem-cost":"0", "cardinalities":"1185,0,0,0,0,0,1,1185", "object":"6 (?opStatus)"}',
'{"_id":"N_1_1_1_1_L_L_L_1", "_parent":"N_1_1_1_1_L_L_L", "condition":"?opStatus=<http://ml.com/obf/b#obfStatus1>", "left":{"type":"var", "column-index":"6", "name":"opStatus"}, "_name":"join-filter", "op":"="}',
'{"dedup":"true", "cost":"6.73857e+06", "nw-cost":"1286/0/2370/3858/56880", "cpu-cost":"0/0/56.88/0/56.88", "order":"7,1", "subject":"7 (?obfStatus1sContainer)", "_name":"triple-index", "dcpu-cost":"0/0/63015.5/0/1.51237e+06", "_parentLabel":"right", "predicate":"<http://ml.com/obf/d#obfLabel4>", "_id":"N_1_1_1_1_L_L_R", "_parent":"N_1_1_1_1_L_L", "mem-cost":"0", "permutation":"PSO", "estimated-count":"1185", "io-cost":"0/15271.2/14282.6/366509/342783", "dmem-cost":"107.727", "cardinalities":"0,36,0,0,0,0,0,1185", "object":"1 (?obfLabel1)"}',
'{"cost":"1.60749e+07", "nw-cost":"1286/8567.77/3642/144237/87408", "cpu-cost":"0/34840.6/1907.66/34840.6/1907.66", "order":"8,2", "condition":"8=8", "_name":"scatter-join", "dcpu-cost":"0/6717.39/90271.9/161217/2.16653e+06", "_parentLabel":"right", "_id":"N_1_1_1_1_L_R", "_parent":"N_1_1_1_1_L", "mem-cost":"7281.77", "io-cost":"0/40600.3/20486.1/974407/491666", "estimated-count":"1820.26", "dmem-cost":"273.273", "cardinalities":"1185,0,36,0,1820.26,0,0,0,1820.26"}',
'{"dedup":"true", "cost":"4.87037e+06", "nw-cost":"1286/0/5460.77/3858/131058", "cpu-cost":"0/0/131.058/0/131.058", "order":"0,4,8", "graph":"8 (?orderBy0sContainer)", "subject":"0 (?s)", "_name":"triple-index", "dcpu-cost":"0/0/6717.39/0/161217", "_parentLabel":"left", "predicate":"<http://ml.com/obf/b#width>", "_id":"N_1_1_1_1_L_R_L", "_parent":"N_1_1_1_1_L_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"1820.26", "io-cost":"0/15271.2/1875.5/366509/45011.9", "dmem-cost":"107.727", "cardinalities":"1185,0,0,0,1820.26,0,0,0,1820.26", "object":"4 (?orderByItem0)"}',
'{"dedup":"true", "cost":"1.01322e+07", "nw-cost":"3107/0/3642/9321/87408", "cpu-cost":"0/0/87.408/0/87.408", "order":"8,2", "subject":"8 (?orderBy0sContainer)", "_name":"triple-index", "dcpu-cost":"0/0/90271.9/0/2.16653e+06", "_parentLabel":"right", "predicate":"<http://ml.com/obf/d#obfLabel4>", "_id":"N_1_1_1_1_L_R_R", "_parent":"N_1_1_1_1_L_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"1821", "io-cost":"0/23453.6/20486.1/562886/491666", "dmem-cost":"273.273", "cardinalities":"0,0,36,0,0,0,0,0,1821", "object":"2 (?obfLabel2)"}',
'{"cost":"1.45608e+07", "nw-cost":"1286/6029.55/2372/96655.2/56928", "cpu-cost":"0/22696.7/1242.78/22696.7/1242.78", "order":"9,3", "condition":"9=9", "_name":"scatter-join", "dcpu-cost":"0/35970/63068.7/863279/1.51365e+06", "_parentLabel":"right", "_id":"N_1_1_1_1_R", "_parent":"N_1_1_1_1", "mem-cost":"4743.55", "io-cost":"0/38814.1/14294.7/931538/343072", "estimated-count":"1185.85", "dmem-cost":"215.545", "cardinalities":"1185,0,0,36,0,1185.85,0,0,0,1185.85"}',
'{"dedup":"true", "cost":"5.796e+06", "nw-cost":"1286/0/3557.55/3858/85381.2", "cpu-cost":"0/0/85.3812/0/85.3812", "order":"0,5,9", "graph":"9 (?orderBy1sContainer)", "subject":"0 (?s)", "_name":"triple-index", "dcpu-cost":"0/0/35970/0/863279", "_parentLabel":"left", "predicate":"<http://ml.com/obf/a#name>", "_id":"N_1_1_1_1_R_L", "_parent":"N_1_1_1_1_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"1185.85", "io-cost":"0/15271.2/8258.84/366509/198212", "dmem-cost":"107.727", "cardinalities":"1185,0,0,0,0,1185.85,0,0,0,1185.85", "object":"5 (?orderByItem1)"}',
'{"dedup":"true", "cost":"6.79164e+06", "nw-cost":"2472/0/2372/7416/56928", "cpu-cost":"0/0/56.928/0/56.928", "order":"9,3", "subject":"9 (?orderBy1sContainer)", "_name":"triple-index", "dcpu-cost":"0/0/63068.7/0/1.51365e+06", "_parentLabel":"right", "predicate":"<http://ml.com/obf/d#obfLabel4>", "_id":"N_1_1_1_1_R_R", "_parent":"N_1_1_1_1_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"1186", "io-cost":"0/15284.1/14294.7/366818/343072", "dmem-cost":"215.545", "cardinalities":"0,0,0,36,0,0,0,0,0,1186", "object":"3 (?obfLabel3)"}'
)),
map:entry("name","costs2")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="">
	<plan:column type="var" name="name1" column-index="0"/>
	<plan:column type="var" name="name2" column-index="1"/>
	<plan:join type="parallel-hash-join" order="3,6" local-max-memory="31205168" remote-max-memory="0" local-time="18831420" remote-time="0" count="2652911">
	  <plan:hash left="6" right="6" op="="/>
	  <plan:join type="parallel-hash-join" order="2,4" local-max-memory="11620320" remote-max-memory="0" local-time="1128150" remote-time="0" count="83706">
	    <plan:hash left="4" right="4" op="="/>
	    <plan:triple-index permutation="PSO" dedup="true" order="4,0" local-max-memory="1900016" remote-max-memory="0" local-time="966810" remote-time="0" count="82685">
	      <plan:subject type="var" name="author1" column-index="4"/>
	      <plan:predicate type="iri">http://xmlns.com/foaf/0.1/name</plan:predicate>
	      <plan:object type="var" name="name1" column-index="0"/>
	    </plan:triple-index>
	    <plan:join type="parallel-hash-join" order="2,4" local-max-memory="10285728" remote-max-memory="0" local-time="836340" remote-time="0" count="83706">
	      <plan:hash left="2" right="2" op="="/>
	      <plan:triple-index permutation="PSO" dedup="true" order="2,6" local-max-memory="2301248" remote-max-memory="0" local-time="239600" remote-time="0" count="56904">
		<plan:subject type="var" name="article1" column-index="2"/>
		<plan:predicate type="iri">http://swrc.ontoware.org/ontology#journal</plan:predicate>
		<plan:object type="var" name="journal" column-index="6"/>
	      </plan:triple-index>
	      <plan:join type="bloom-join" order="2,4" local-max-memory="3469312" remote-max-memory="0" local-time="1050860" remote-time="0" count="83706">
		<plan:hash left="2" right="2" op="="/>
		<plan:scatter left="2" right="2" op="bloom"/>
		<plan:triple-index permutation="OPS" dedup="true" order="2" local-max-memory="2438688" remote-max-memory="0" local-time="206470" remote-time="0" count="56904">
		  <plan:subject type="var" name="article1" column-index="2"/>
		  <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
		  <plan:object type="iri">http://localhost/vocabulary/bench/Article</plan:object>
		</plan:triple-index>
		<plan:triple-index permutation="PSO" dedup="true" order="2,4" local-max-memory="2148144" remote-max-memory="0" local-time="637070" remote-time="0" count="83706">
		  <plan:subject type="var" name="article1" column-index="2"/>
		  <plan:predicate type="iri">http://purl.org/dc/elements/1.1/creator</plan:predicate>
		  <plan:object type="var" name="author1" column-index="4"/>
		</plan:triple-index>
	      </plan:join>
	    </plan:join>
	  </plan:join>
	  <plan:join type="bloom-join" order="3,6" local-max-memory="11620320" remote-max-memory="0" local-time="1480510" remote-time="0" count="83706">
	    <plan:hash left="5" right="5" op="="/>
	    <plan:scatter left="5" right="5" op="bloom"/>
	    <plan:triple-index permutation="PSO" dedup="true" order="5,1" local-max-memory="1893776" remote-max-memory="0" local-time="935170" remote-time="0" count="82685">
	      <plan:subject type="var" name="author2" column-index="5"/>
	      <plan:predicate type="iri">http://xmlns.com/foaf/0.1/name</plan:predicate>
	      <plan:object type="var" name="name2" column-index="1"/>
	    </plan:triple-index>
	    <plan:join type="parallel-sort-merge-join" order="3,6" local-max-memory="0" remote-max-memory="0" local-time="641770" remote-time="0" count="83706" left-num-sorted="1" right-num-sorted="1">
	      <plan:hash left="3" right="3" op="="/>
	      <plan:triple-index permutation="PSO" dedup="true" order="3,5" local-max-memory="1780976" remote-max-memory="0" local-time="661530" remote-time="0" count="167414">
		<plan:subject type="var" name="article2" column-index="3"/>
		<plan:predicate type="iri">http://purl.org/dc/elements/1.1/creator</plan:predicate>
		<plan:object type="var" name="author2" column-index="5"/>
	      </plan:triple-index>
	      <plan:join type="parallel-sort-merge-join" order="3,6" local-max-memory="0" remote-max-memory="0" local-time="453150" remote-time="0" count="113808" left-num-sorted="1" right-num-sorted="1">
		<plan:hash left="3" right="3" op="="/>
		<plan:triple-index permutation="OPS" dedup="true" order="3" local-max-memory="2488976" remote-max-memory="0" local-time="141890" remote-time="0" count="113808">
		  <plan:subject type="var" name="article2" column-index="3"/>
		  <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
		  <plan:object type="iri">http://localhost/vocabulary/bench/Article</plan:object>
		</plan:triple-index>
		<plan:triple-index permutation="PSO" dedup="true" order="3,6" local-max-memory="2354720" remote-max-memory="0" local-time="175880" remote-time="0" count="113808">
		  <plan:subject type="var" name="article2" column-index="3"/>
		  <plan:predicate type="iri">http://swrc.ontoware.org/ontology#journal</plan:predicate>
		  <plan:object type="var" name="journal" column-index="6"/>
		</plan:triple-index>
	      </plan:join>
	    </plan:join>
	  </plan:join>
	  <plan:filters>
	    <plan:join-filter op="&lt;">
	      <plan:left type="var" name="name1" column-index="0"/>
	      <plan:right type="var" name="name2" column-index="1"/>
	    </plan:join-filter>
	  </plan:filters>
	</plan:join>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"distinct", "_parent":"N"}',
'{"_id":"N_1_1", "_name":"project", "_parent":"N_1", "column":["0 (?name1)", "1 (?name2)"], "order":""}',
'{"_id":"N_1_1_1", "_name":"parallel-hash-join", "_parent":"N_1_1", "condition":"6=6", "count":"2652911", "join-filter":"?name1<?name2", "local-max-memory":"29.76Mb", "local-time":"1883.14ms", "order":"3,6", "remote-max-memory":"0b", "remote-time":"0ms"}',
'{"_id":"N_1_1_1_L", "_name":"parallel-hash-join", "_parent":"N_1_1_1", "_parentLabel":"left", "condition":"4=4", "count":"83706", "local-max-memory":"11.08Mb", "local-time":"112.82ms", "order":"2,4", "remote-max-memory":"0b", "remote-time":"0ms"}',
'{"_id":"N_1_1_1_L_L", "_name":"triple-index", "_parent":"N_1_1_1_L", "_parentLabel":"left", "count":"82685", "dedup":"true", "local-max-memory":"1.81Mb", "local-time":"96.68ms", "object":"0 (?name1)", "order":"4,0", "permutation":"PSO", "predicate":"foaf:name", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"4 (?author1)"}',
'{"_id":"N_1_1_1_L_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_L", "_parentLabel":"right", "condition":"2=2", "count":"83706", "local-max-memory":"9.81Mb", "local-time":"83.63ms", "order":"2,4", "remote-max-memory":"0b", "remote-time":"0ms"}',
'{"_id":"N_1_1_1_L_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_R", "_parentLabel":"left", "count":"56904", "dedup":"true", "local-max-memory":"2.19Mb", "local-time":"23.96ms", "object":"6 (?journal)", "order":"2,6", "permutation":"PSO", "predicate":"<http://swrc.ontoware.org/ontology#journal>", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"2 (?article1)"}',
'{"_id":"N_1_1_1_L_R_R", "_name":"bloom-join", "_parent":"N_1_1_1_L_R", "_parentLabel":"right", "condition":"2=2", "count":"83706", "local-max-memory":"3.31Mb", "local-time":"105.09ms", "order":"2,4", "remote-max-memory":"0b", "remote-time":"0ms"}',
'{"_id":"N_1_1_1_L_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_R_R", "_parentLabel":"left", "count":"56904", "dedup":"true", "local-max-memory":"2.33Mb", "local-time":"20.65ms", "object":"<http://localhost/vocabulary/bench/Article>", "order":"2", "permutation":"OPS", "predicate":"rdf:type", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"2 (?article1)"}',
'{"_id":"N_1_1_1_L_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_L_R_R", "_parentLabel":"right", "count":"83706", "dedup":"true", "local-max-memory":"2.05Mb", "local-time":"63.71ms", "object":"4 (?author1)", "order":"2,4", "permutation":"PSO", "predicate":"<http://purl.org/dc/elements/1.1/creator>", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"2 (?article1)"}',
'{"_id":"N_1_1_1_R", "_name":"bloom-join", "_parent":"N_1_1_1", "_parentLabel":"right", "condition":"5=5", "count":"83706", "local-max-memory":"11.08Mb", "local-time":"148.05ms", "order":"3,6", "remote-max-memory":"0b", "remote-time":"0ms"}',
'{"_id":"N_1_1_1_R_L", "_name":"triple-index", "_parent":"N_1_1_1_R", "_parentLabel":"left", "count":"82685", "dedup":"true", "local-max-memory":"1.81Mb", "local-time":"93.52ms", "object":"1 (?name2)", "order":"5,1", "permutation":"PSO", "predicate":"foaf:name", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"5 (?author2)"}',
'{"_id":"N_1_1_1_R_R", "_name":"parallel-sort-merge-join", "_parent":"N_1_1_1_R", "_parentLabel":"right", "condition":"3=3", "count":"83706", "left-num-sorted":"1", "local-max-memory":"0b", "local-time":"64.18ms", "order":"3,6", "remote-max-memory":"0b", "remote-time":"0ms", "right-num-sorted":"1"}',
'{"_id":"N_1_1_1_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_R_R", "_parentLabel":"left", "count":"167414", "dedup":"true", "local-max-memory":"1.7Mb", "local-time":"66.15ms", "object":"5 (?author2)", "order":"3,5", "permutation":"PSO", "predicate":"<http://purl.org/dc/elements/1.1/creator>", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"3 (?article2)"}',
'{"_id":"N_1_1_1_R_R_R", "_name":"parallel-sort-merge-join", "_parent":"N_1_1_1_R_R", "_parentLabel":"right", "condition":"3=3", "count":"113808", "left-num-sorted":"1", "local-max-memory":"0b", "local-time":"45.32ms", "order":"3,6", "remote-max-memory":"0b", "remote-time":"0ms", "right-num-sorted":"1"}',
'{"_id":"N_1_1_1_R_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_R_R_R", "_parentLabel":"left", "count":"113808", "dedup":"true", "local-max-memory":"2.37Mb", "local-time":"14.19ms", "object":"<http://localhost/vocabulary/bench/Article>", "order":"3", "permutation":"OPS", "predicate":"rdf:type", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"3 (?article2)"}',
'{"_id":"N_1_1_1_R_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_R_R_R", "_parentLabel":"right", "count":"113808", "dedup":"true", "local-max-memory":"2.25Mb", "local-time":"17.59ms", "object":"6 (?journal)", "order":"3,6", "permutation":"PSO", "predicate":"<http://swrc.ontoware.org/ontology#journal>", "remote-max-memory":"0b", "remote-time":"0ms", "subject":"3 (?article2)"}'
)),
map:entry("name","costs-cross")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="">
	<plan:vars>
	  <plan:graph-node type="var" name="title" column-index="0" static-type="NONE"/>
	</plan:vars>
	<plan:expr>
	  <plan:filter is-empty="false">
	    <plan:filters>
	      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="not">
		<plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="exists">
		  <plan:sparql-variable column-index="7">
		    <plan:qname name="doc3" uri="" prfx="" ltrl="doc3"/>
		  </plan:sparql-variable>
		</plan:builtin>
	      </plan:builtin>
	    </plan:filters>
	    <plan:sparql-left-join type="parallel-right-hash-join" dplan="true" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="8.02646e+06" estimated-count="2883" io-cost="0/394873/2547.78/933384/2547.78" nw-cost="101/26987.8/5766/54456.7/5766" cpu-cost="0/126748/14420.8/163002/14420.8" dcpu-cost="0/8415.6/2883/14755.8/2883" mem-cost="61155.9" dmem-cost="11310" cardinalities="(2883,103652),(9,9),(2883,3844),(719,719),(67,67),(719,719),(9,9),(539.25,719),(539.25,540),(67,67),(4.5,9),(4.5,6),(4.5,719),(4.5,67)">
	      <plan:join-info>
		<plan:hash left="2" right="2" operator="="/>
	      </plan:join-info>
	      <plan:expr>
		<plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="5.24455e+06" estimated-count="2883" io-cost="0/359396/2547.78/508748/2547.78" nw-cost="101/26987.8/5766/31761.8/5766" cpu-cost="0/35691/11537.8/35691/11537.8" dcpu-cost="0/8415.6/2883/8415.6/2883" mem-cost="25337.8" dmem-cost="9144" cardinalities="(2883,103652),(9,9),(2883,3844),(719,719),(67,67),(719,719)">
		  <plan:join-info>
		    <plan:hash left="3" right="3" operator="="/>
		    <plan:filters>
		      <plan:join-filter op="=">
			<plan:left-graph-node>
			  <plan:graph-node type="column-def" name="bag2" schema="" column="bag2" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			</plan:left-graph-node>
			<plan:right-graph-node>
			  <plan:graph-node type="column-def" name="bag2" schema="" column="bag2" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			</plan:right-graph-node>
		      </plan:join-filter>
		    </plan:filters>
		  </plan:join-info>
		  <plan:elems>
		    <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="5[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" cost="23340.3" estimated-count="719" io-cost="0/19.3788/691.573/19.3788/691.573" nw-cost="101/0/1438/101/1438" cpu-cost="0/0/1.438/0/1.438" dcpu-cost="0/0/719/0/719" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(0,0),(0,0),(719,719),(0,0),(719,719)">
		      <plan:subject>
			<plan:graph-node type="var" name="doc2" column-index="5" static-type="NONE"/>
		      </plan:subject>
		      <plan:predicate>
			<plan:graph-node type="iri" name="http://purl.org/dc/terms/references" static-type="NONE">
			  <plan:rdf-val>http://purl.org/dc/terms/references</plan:rdf-val>
			</plan:graph-node>
		      </plan:predicate>
		      <plan:object>
			<plan:graph-node type="var" name="bag2" column-index="3" static-type="NONE"/>
		      </plan:object>
		    </plan:triple-index>
		    <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="5.21296e+06" estimated-count="2883" io-cost="0/358685/2547.78/508037/2547.78" nw-cost="821/24728.8/5766/30222.8/5766" cpu-cost="0/32813.5/8654.77/32813.5/8654.77" dcpu-cost="0/7696.6/2883/7696.6/2883" mem-cost="23180.8" dmem-cost="9144" cardinalities="(2883,103652),(9,9),(2883,3844),(719,719),(67,67)">
		      <plan:join-info>
			<plan:hash left="1" right="1" operator="="/>
			<plan:filters>
			  <plan:join-filter op="=">
			    <plan:left-graph-node>
			      <plan:graph-node type="column-def" name="class" schema="" column="class" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			    </plan:left-graph-node>
			    <plan:right-graph-node>
			      <plan:graph-node type="column-def" name="class" schema="" column="class" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			    </plan:right-graph-node>
			  </plan:join-filter>
			</plan:filters>
		      </plan:join-info>
		      <plan:elems>
			<plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="1[NULLS_IRRELEVANT]" cost="10231.6" estimated-count="9" io-cost="0/38.7576/67.5272/38.7576/67.5272" nw-cost="821/0/9/821/9" cpu-cost="0/0/0.009/0/0.009" dcpu-cost="0/0/9/0/9" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(9,9)">
			  <plan:subject>
			    <plan:graph-node type="var" name="class" column-index="1" static-type="NONE"/>
			  </plan:subject>
			  <plan:predicate>
			    <plan:graph-node type="iri" name="http://www.w3.org/2000/01/rdf-schema#subClassOf" static-type="NONE">
			      <plan:rdf-val>http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:rdf-val>
			    </plan:graph-node>
			  </plan:predicate>
			  <plan:object>
			    <plan:graph-node type="iri" name="http://xmlns.com/foaf/0.1/Document" static-type="NONE">
			      <plan:rdf-val>http://xmlns.com/foaf/0.1/Document</plan:rdf-val>
			    </plan:graph-node>
			  </plan:object>
			</plan:triple-index>
			<plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="5.19974e+06" estimated-count="2883" io-cost="0/358579/2547.78/507931/2547.78" nw-cost="828/23891.8/5766/29392.8/5766" cpu-cost="0/32791/5771.77/32791/5771.77" dcpu-cost="0/7687.6/2883/7687.6/2883" mem-cost="23162.8" dmem-cost="9144" cardinalities="(2883,103652),(9,9),(2883,3844),(719,719),(67,67)">
			  <plan:join-info>
			    <plan:hash left="2" right="2" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="doc" schema="" column="doc" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="doc" schema="" column="doc" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="4[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="2.17632e+06" estimated-count="3843.6" io-cost="0/27866.7/174151/27866.7/174151" nw-cost="828/0/11530.8/828/11530.8" cpu-cost="0/0/11.5308/0/11.5308" dcpu-cost="0/0/3843.6/0/3843.6" mem-cost="0" dmem-cost="728" cardinalities="(0,0),(0,0),(3843.6,494586),(719,719),(67,67)">
			      <plan:subject>
				<plan:graph-node type="var" name="bag2" column-index="3" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="member2" column-index="4" static-type="NONE"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
			      </plan:object>
			    </plan:triple-index>
			    <plan:join join-type="parallel-hash-join" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="2.81122e+06" estimated-count="2883" io-cost="0/156561/2547.78/305913/2547.78" nw-cost="4673/7688/5766/17034/5766" cpu-cost="0/11639.7/2888.77/11639.7/2888.77" dcpu-cost="0/3844/2883/3844/2883" mem-cost="7788" dmem-cost="9144" cardinalities="(2883,103652),(9,9),(2883,3844)">
			      <plan:join-info>
				<plan:hash left="2" right="2" operator="="/>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="2[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" cost="1.84675e+06" estimated-count="3844" io-cost="0/149004/7557.04/149004/7557.04" nw-cost="4673/0/7688/4673/7688" cpu-cost="0/0/7.688/0/7.688" dcpu-cost="0/0/3844/0/3844" mem-cost="0" dmem-cost="4572" cardinalities="(3844,103652),(0,0),(3844,3844)">
				  <plan:subject>
				    <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://purl.org/dc/elements/1.1/title" static-type="NONE">
				      <plan:rdf-val>http://purl.org/dc/elements/1.1/title</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="title" column-index="0" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
				<plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="1.78031e+06" estimated-count="2883" io-cost="0/149353/2547.78/149353/2547.78" nw-cost="4673/0/5766/4673/5766" cpu-cost="0/0/5.766/0/5.766" dcpu-cost="0/0/2883/0/2883" mem-cost="0" dmem-cost="4572" cardinalities="(0,0),(9,9),(2883,3844)">
				  <plan:subject>
				    <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
				      <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="class" column-index="1" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
		      </plan:elems>
		    </plan:join>
		  </plan:elems>
		</plan:join>
	      </plan:expr>
	      <plan:optional>
		<plan:filter is-empty="false">
		  <plan:filters>
		    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="not">
		      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="exists">
			<plan:sparql-variable column-index="11">
			  <plan:qname name="doc4" uri="" prfx="" ltrl="doc4"/>
			</plan:sparql-variable>
		      </plan:builtin>
		    </plan:builtin>
		  </plan:filters>
		  <plan:join join-type="scatter-join" order="9[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="4.58091e+06" estimated-count="2882.7" io-cost="0/221847/173026/251609/173026" nw-cost="101/10377.3/8660.12/14034.8/8660.12" cpu-cost="0/14214.1/2891.36/14776.9/2891.36" dcpu-cost="0/2905.25/2886.71/3453.5/2886.71" mem-cost="9773.85" dmem-cost="2166" cardinalities="(0,0),(0,0),(2882.7,494586),(0,0),(0,0),(0,0),(9,9),(539.25,719),(539.25,540),(67,67),(4.5,9),(4.5,6),(4.5,719),(4.5,67)">
		    <plan:join-info>
		      <plan:hash left="8" right="8" operator="="/>
		      <plan:filters>
			<plan:join-filter op="=">
			  <plan:left-graph-node>
			    <plan:graph-node type="column-def" name="bag3" schema="" column="bag3" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
			  </plan:left-graph-node>
			  <plan:right-graph-node>
			    <plan:graph-node type="column-def" name="bag3" schema="" column="bag3" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
			  </plan:right-graph-node>
			</plan:join-filter>
		      </plan:filters>
		    </plan:join-info>
		    <plan:elems>
		      <plan:join join-type="scatter-join" order="10[NULLS_LAST],11[NULLS_LAST]" cost="2.51378e+06" estimated-count="539.25" io-cost="0/200626/291.527/230389/291.527" nw-cost="101/9728.26/9/13385.8/9" cpu-cost="0/6925.2/1087.51/7488.03/1087.51" dcpu-cost="0/2900.75/4.5/3449/4.5" mem-cost="5459.1" dmem-cost="2166" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719),(539.25,719),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)">
			<plan:join-info>
			  <plan:hash left="7" right="7" operator="="/>
			  <plan:filters>
			    <plan:join-filter op="=">
			      <plan:left-graph-node>
				<plan:graph-node type="column-def" name="doc3" schema="" column="doc3" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
			      </plan:left-graph-node>
			      <plan:right-graph-node>
				<plan:graph-node type="column-def" name="doc3" schema="" column="doc3" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
			      </plan:right-graph-node>
			    </plan:join-filter>
			  </plan:filters>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="7[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]" cost="23340.3" estimated-count="719" io-cost="0/19.3788/691.573/19.3788/691.573" nw-cost="101/0/1438/101/1438" cpu-cost="0/0/1.438/0/1.438" dcpu-cost="0/0/719/0/719" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)">
			    <plan:subject>
			      <plan:graph-node type="var" name="doc3" column-index="7" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://purl.org/dc/terms/references" static-type="NONE">
				<plan:rdf-val>http://purl.org/dc/terms/references</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="bag3" column-index="8" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			  <plan:sparql-left-join type="parallel-left-hash-join" dplan="true" order="10[NULLS_LAST],11[NULLS_LAST]" cost="2.48454e+06" estimated-count="539.25" io-cost="0/199915/291.527/229678/291.527" nw-cost="821/7469.26/9/11846.8/9" cpu-cost="0/4047.76/548.259/4610.6/548.259" dcpu-cost="0/2181.75/4.5/2730/4.5" mem-cost="3302.1" dmem-cost="2166" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719),(0,0),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)">
			    <plan:join-info>
			      <plan:hash left="7" right="7" operator="="/>
			    </plan:join-info>
			    <plan:expr>
			      <plan:join join-type="scatter-join" order="6[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" cost="349008" estimated-count="539.25" io-cost="0/28341.2/710.68/28341.2/710.68" nw-cost="821/838/1078.5/1659/1078.5" cpu-cost="0/22.509/540.328/22.509/540.328" dcpu-cost="0/9/539.25/9/539.25" mem-cost="18" dmem-cost="728" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719)">
				<plan:join-info>
				  <plan:hash left="6" right="6" operator="="/>
				  <plan:filters>
				    <plan:join-filter op="=">
				      <plan:left-graph-node>
					<plan:graph-node type="column-def" name="class3" schema="" column="class3" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				      </plan:left-graph-node>
				      <plan:right-graph-node>
					<plan:graph-node type="column-def" name="class3" schema="" column="class3" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				      </plan:right-graph-node>
				    </plan:join-filter>
				  </plan:filters>
				</plan:join-info>
				<plan:elems>
				  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="6[NULLS_IRRELEVANT]" cost="10231.6" estimated-count="9" io-cost="0/38.7576/67.5272/38.7576/67.5272" nw-cost="821/0/9/821/9" cpu-cost="0/0/0.009/0/0.009" dcpu-cost="0/0/9/0/9" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)">
				    <plan:subject>
				      <plan:graph-node type="var" name="class3" column-index="6" static-type="NONE"/>
				    </plan:subject>
				    <plan:predicate>
				      <plan:graph-node type="iri" name="http://www.w3.org/2000/01/rdf-schema#subClassOf" static-type="NONE">
					<plan:rdf-val>http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:rdf-val>
				      </plan:graph-node>
				    </plan:predicate>
				    <plan:object>
				      <plan:graph-node type="iri" name="http://xmlns.com/foaf/0.1/Document" static-type="NONE">
					<plan:rdf-val>http://xmlns.com/foaf/0.1/Document</plan:rdf-val>
				      </plan:graph-node>
				    </plan:object>
				  </plan:triple-index>
				  <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="6[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" cost="338135" estimated-count="539.25" io-cost="0/28234.9/710.68/28234.9/710.68" nw-cost="829/0/1078.5/829/1078.5" cpu-cost="0/0/1.0785/0/1.0785" dcpu-cost="0/0/539.25/0/539.25" mem-cost="0" dmem-cost="728" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719)">
				    <plan:subject>
				      <plan:graph-node type="var" name="doc3" column-index="7" static-type="NONE"/>
				    </plan:subject>
				    <plan:predicate>
				      <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
					<plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
				      </plan:graph-node>
				    </plan:predicate>
				    <plan:object>
				      <plan:graph-node type="var" name="class3" column-index="6" static-type="NONE"/>
				    </plan:object>
				  </plan:triple-index>
				</plan:elems>
			      </plan:join>
			    </plan:expr>
			    <plan:optional>
			      <plan:join join-type="scatter-join" order="10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" cost="2.30665e+06" estimated-count="4.5" io-cost="0/199915/291.527/200626/291.527" nw-cost="820/7470.26/9/9109.26/9" cpu-cost="0/2330.01/9.009/2330.01/9.009" dcpu-cost="0/2181.75/4.5/2181.75/4.5" mem-cost="1566.35" dmem-cost="1438" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,719),(0,0),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)">
				<plan:join-info>
				  <plan:hash left="11" right="11" operator="="/>
				  <plan:filters>
				    <plan:join-filter op="=">
				      <plan:left-graph-node>
					<plan:graph-node type="column-def" name="doc4" schema="" column="doc4" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
				      </plan:left-graph-node>
				      <plan:right-graph-node>
					<plan:graph-node type="column-def" name="doc4" schema="" column="doc4" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
				      </plan:right-graph-node>
				    </plan:join-filter>
				  </plan:filters>
				</plan:join-info>
				<plan:elems>
				  <plan:join join-type="parallel-hash-join" order="7[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]" cost="2.10155e+06" estimated-count="5.5876" io-cost="0/27866.7/171341/28577.7/171341" nw-cost="820/1438/4361.26/3077/4361.26" cpu-cost="0/2258.44/9.94886/2258.44/9.94886" dcpu-cost="0/719/1453.75/719/1453.75" mem-cost="1538" dmem-cost="1438" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(5.5876,719),(0,0),(0,0),(0,0),(5.5876,719),(5.5876,719),(5.5876,67)">
				    <plan:join-info>
				      <plan:hash left="12" right="12" operator="="/>
				    </plan:join-info>
				    <plan:elems>
				      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="11[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]" cost="31249.3" estimated-count="719" io-cost="0/19.3788/691.573/19.3788/691.573" nw-cost="820/0/1438/820/1438" cpu-cost="0/0/1.438/0/1.438" dcpu-cost="0/0/719/0/719" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)">
					<plan:subject>
					  <plan:graph-node type="var" name="doc4" column-index="11" static-type="NONE"/>
					</plan:subject>
					<plan:predicate>
					  <plan:graph-node type="iri" name="http://purl.org/dc/terms/references" static-type="NONE">
					    <plan:rdf-val>http://purl.org/dc/terms/references</plan:rdf-val>
					  </plan:graph-node>
					</plan:predicate>
					<plan:object>
					  <plan:graph-node type="var" name="bag4" column-index="12" static-type="NONE"/>
					</plan:object>
				      </plan:triple-index>
				      <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="7[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]" cost="2.07403e+06" estimated-count="1453.75" io-cost="0/27866.7/171341/27866.7/171341" nw-cost="819/0/4361.26/819/4361.26" cpu-cost="0/0/4.36126/0/4.36126" dcpu-cost="0/0/1453.75/0/1453.75" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(0,0),(0,0),(0,0),(0,0),(1453.75,187066),(67,67)">
					<plan:subject>
					  <plan:graph-node type="var" name="bag4" column-index="12" static-type="NONE"/>
					</plan:subject>
					<plan:predicate>
					  <plan:graph-node type="var" name="member4" column-index="13" static-type="NONE"/>
					</plan:predicate>
					<plan:object>
					  <plan:graph-node type="var" name="doc3" column-index="7" static-type="NONE"/>
					</plan:object>
				      </plan:triple-index>
				    </plan:elems>
				  </plan:join>
				  <plan:join join-type="scatter-join" order="10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" cost="29207.3" estimated-count="4.5" io-cost="0/707.028/291.527/707.028/291.527" nw-cost="827/844/9/1671/9" cpu-cost="0/22.509/4.509/22.509/4.509" dcpu-cost="0/9/4.5/9/4.5" mem-cost="18" dmem-cost="734" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,9),(4.5,6)">
				    <plan:join-info>
				      <plan:hash left="10" right="10" operator="="/>
				      <plan:filters>
					<plan:join-filter op="=">
					  <plan:left-graph-node>
					    <plan:graph-node type="column-def" name="class4" schema="" column="class4" view="" column-number="0" column-index="10" static-type="UNKNOWN"/>
					  </plan:left-graph-node>
					  <plan:right-graph-node>
					    <plan:graph-node type="column-def" name="class4" schema="" column="class4" view="" column-number="0" column-index="10" static-type="UNKNOWN"/>
					  </plan:right-graph-node>
					</plan:join-filter>
				      </plan:filters>
				    </plan:join-info>
				    <plan:elems>
				      <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="10[NULLS_IRRELEVANT]" cost="10297.6" estimated-count="9" io-cost="0/38.7576/67.5272/38.7576/67.5272" nw-cost="827/0/9/827/9" cpu-cost="0/0/0.009/0/0.009" dcpu-cost="0/0/9/0/9" mem-cost="0" dmem-cost="725" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)">
					<plan:subject>
					  <plan:graph-node type="var" name="class4" column-index="10" static-type="NONE"/>
					</plan:subject>
					<plan:predicate>
					  <plan:graph-node type="iri" name="http://www.w3.org/2000/01/rdf-schema#subClassOf" static-type="NONE">
					    <plan:rdf-val>http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:rdf-val>
					  </plan:graph-node>
					</plan:predicate>
					<plan:object>
					  <plan:graph-node type="iri" name="http://xmlns.com/foaf/0.1/Document" static-type="NONE">
					    <plan:rdf-val>http://xmlns.com/foaf/0.1/Document</plan:rdf-val>
					  </plan:graph-node>
					</plan:object>
				      </plan:triple-index>
				      <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" cost="18803" estimated-count="4.5" io-cost="0/600.743/291.527/600.743/291.527" nw-cost="835/0/9/835/9" cpu-cost="0/0/0.009/0/0.009" dcpu-cost="0/0/4.5/0/4.5" mem-cost="0" dmem-cost="734" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,9),(4.5,6)">
					<plan:subject>
					  <plan:graph-node type="var" name="doc4" column-index="11" static-type="NONE"/>
					</plan:subject>
					<plan:predicate>
					  <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
					    <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
					  </plan:graph-node>
					</plan:predicate>
					<plan:object>
					  <plan:graph-node type="var" name="class4" column-index="10" static-type="NONE"/>
					</plan:object>
				      </plan:triple-index>
				    </plan:elems>
				  </plan:join>
				</plan:elems>
			      </plan:join>
			    </plan:optional>
			    <plan:filters/>
			    <plan:ljfilters/>
			  </plan:sparql-left-join>
			</plan:elems>
		      </plan:join>
		      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="9[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" cost="2.05702e+06" estimated-count="2886.71" io-cost="0/20929.1/173026/20929.1/173026" nw-cost="640/0/8660.12/640/8660.12" cpu-cost="0/0/8.66012/0/8.66012" dcpu-cost="0/0/2886.71/0/2886.71" mem-cost="0" dmem-cost="540" cardinalities="(0,0),(0,0),(2886.71,494586),(0,0),(0,0),(0,0),(0,0),(0,0),(540,540),(67,67)">
			<plan:subject>
			  <plan:graph-node type="var" name="bag3" column-index="8" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="var" name="member3" column-index="9" static-type="NONE"/>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
			</plan:object>
		      </plan:triple-index>
		    </plan:elems>
		  </plan:join>
		</plan:filter>
	      </plan:optional>
	      <plan:filters/>
	      <plan:ljfilters/>
	    </plan:sparql-left-join>
	  </plan:filter>
	</plan:expr>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"distinct", "_parent":"N"}',
'{"_id":"N_1_1", "_name":"project", "_parent":"N_1", "column":"0 (?title)", "order":""}',
'{"_id":"N_1_1_1", "_name":"filter", "_parent":"N_1_1", "condition":"fn:not(fn:exists(?doc3))", "is-empty":"false"}',
'{"_id":"N_1_1_1_1", "_name":"parallel-right-hash-join", "_parent":"N_1_1_1", "cardinalities":"(2883,103652),(9,9),(2883,3844),(719,719),(67,67),(719,719),(9,9),(539.25,719),(539.25,540),(67,67),(4.5,9),(4.5,6),(4.5,719),(4.5,67)", "condition":"2=2", "cost":"8.02646e+06", "cpu-cost":"0/126748/14420.8/163002/14420.8", "dcpu-cost":"0/8415.6/2883/14755.8/2883", "dmem-cost":"11310", "dplan":"true", "estimated-count":"2883", "io-cost":"0/394873/2547.78/933384/2547.78", "mem-cost":"61155.9", "nw-cost":"101/26987.8/5766/54456.7/5766", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L", "_name":"filter", "_parent":"N_1_1_1_1", "_parentLabel":"left", "condition":"fn:not(fn:exists(?doc4))", "is-empty":"false"}',
'{"_id":"N_1_1_1_1_L_1", "_name":"scatter-join", "_parent":"N_1_1_1_1_L", "cardinalities":"(0,0),(0,0),(2882.7,494586),(0,0),(0,0),(0,0),(9,9),(539.25,719),(539.25,540),(67,67),(4.5,9),(4.5,6),(4.5,719),(4.5,67)", "condition":"8=8", "cost":"4.58091e+06", "cpu-cost":"0/14214.1/2891.36/14776.9/2891.36", "dcpu-cost":"0/2905.25/2886.71/3453.5/2886.71", "dmem-cost":"2166", "estimated-count":"2882.7", "io-cost":"0/221847/173026/251609/173026", "mem-cost":"9773.85", "nw-cost":"101/10377.3/8660.12/14034.8/8660.12", "order":"9[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L_1_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_L_1", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719),(539.25,719),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)", "condition":"7=7", "cost":"2.51378e+06", "cpu-cost":"0/6925.2/1087.51/7488.03/1087.51", "dcpu-cost":"0/2900.75/4.5/3449/4.5", "dmem-cost":"2166", "estimated-count":"539.25", "io-cost":"0/200626/291.527/230389/291.527", "mem-cost":"5459.1", "nw-cost":"101/9728.26/9/13385.8/9", "order":"10[NULLS_LAST],11[NULLS_LAST]"}',
'{"_id":"N_1_1_1_1_L_1_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)", "cost":"23340.3", "cpu-cost":"0/0/1.438/0/1.438", "dcpu-cost":"0/0/719/0/719", "dedup":"true", "descending":"false", "dmem-cost":"0", "estimated-count":"719", "io-cost":"0/19.3788/691.573/19.3788/691.573", "is-column":"false", "mem-cost":"0", "nw-cost":"101/0/1438/101/1438", "object":"8 (?bag3)", "order":"7[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"<http://purl.org/dc/terms/references>", "subject":"7 (?doc3)"}',
'{"_id":"N_1_1_1_1_L_1_L_R", "_name":"parallel-left-hash-join", "_parent":"N_1_1_1_1_L_1_L", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719),(0,0),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)", "condition":"7=7", "cost":"2.48454e+06", "cpu-cost":"0/4047.76/548.259/4610.6/548.259", "dcpu-cost":"0/2181.75/4.5/2730/4.5", "dmem-cost":"2166", "dplan":"true", "estimated-count":"539.25", "io-cost":"0/199915/291.527/229678/291.527", "mem-cost":"3302.1", "nw-cost":"821/7469.26/9/11846.8/9", "order":"10[NULLS_LAST],11[NULLS_LAST]"}',
'{"_id":"N_1_1_1_1_L_1_L_R_L", "_name":"scatter-join", "_parent":"N_1_1_1_1_L_1_L_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719)", "condition":"6=6", "cost":"349008", "cpu-cost":"0/22.509/540.328/22.509/540.328", "dcpu-cost":"0/9/539.25/9/539.25", "dmem-cost":"728", "estimated-count":"539.25", "io-cost":"0/28341.2/710.68/28341.2/710.68", "mem-cost":"18", "nw-cost":"821/838/1078.5/1659/1078.5", "order":"6[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L_1_L_R_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_L", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)", "cost":"10231.6", "cpu-cost":"0/0/0.009/0/0.009", "dcpu-cost":"0/0/9/0/9", "dedup":"true", "descending":"false", "dmem-cost":"719", "estimated-count":"9", "io-cost":"0/38.7576/67.5272/38.7576/67.5272", "is-column":"false", "mem-cost":"0", "nw-cost":"821/0/9/821/9", "object":"foaf:Document", "order":"6[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"rdfs:subClassOf", "subject":"6 (?class3)"}',
'{"_id":"N_1_1_1_1_L_1_L_R_L_R", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_L", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(539.25,719)", "cost":"338135", "cpu-cost":"0/0/1.0785/0/1.0785", "dcpu-cost":"0/0/539.25/0/539.25", "dedup":"true", "descending":"false", "dmem-cost":"728", "estimated-count":"539.25", "io-cost":"0/28234.9/710.68/28234.9/710.68", "is-column":"false", "mem-cost":"0", "nw-cost":"829/0/1078.5/829/1078.5", "object":"6 (?class3)", "order":"6[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"rdf:type", "subject":"7 (?doc3)"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R", "_name":"scatter-join", "_parent":"N_1_1_1_1_L_1_L_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,719),(0,0),(0,0),(4.5,9),(4.5,6),(4.5,719),(4.5,67)", "condition":"11=11", "cost":"2.30665e+06", "cpu-cost":"0/2330.01/9.009/2330.01/9.009", "dcpu-cost":"0/2181.75/4.5/2181.75/4.5", "dmem-cost":"1438", "estimated-count":"4.5", "io-cost":"0/199915/291.527/200626/291.527", "mem-cost":"1566.35", "nw-cost":"820/7470.26/9/9109.26/9", "order":"10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_L", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_L_1_L_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(5.5876,719),(0,0),(0,0),(0,0),(5.5876,719),(5.5876,719),(5.5876,67)", "condition":"12=12", "cost":"2.10155e+06", "cpu-cost":"0/2258.44/9.94886/2258.44/9.94886", "dcpu-cost":"0/719/1453.75/719/1453.75", "dmem-cost":"1438", "estimated-count":"5.5876", "io-cost":"0/27866.7/171341/28577.7/171341", "mem-cost":"1538", "nw-cost":"820/1438/4361.26/3077/4361.26", "order":"7[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_L_L", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_R_L", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)", "cost":"31249.3", "cpu-cost":"0/0/1.438/0/1.438", "dcpu-cost":"0/0/719/0/719", "dedup":"true", "descending":"false", "dmem-cost":"719", "estimated-count":"719", "io-cost":"0/19.3788/691.573/19.3788/691.573", "is-column":"false", "mem-cost":"0", "nw-cost":"820/0/1438/820/1438", "object":"12 (?bag4)", "order":"11[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"<http://purl.org/dc/terms/references>", "subject":"11 (?doc4)"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_L_R", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_R_L", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(0,0),(0,0),(0,0),(0,0),(1453.75,187066),(67,67)", "cost":"2.07403e+06", "cpu-cost":"0/0/4.36126/0/4.36126", "dcpu-cost":"0/0/1453.75/0/1453.75", "dedup":"true", "descending":"false", "dmem-cost":"719", "estimated-count":"1453.75", "io-cost":"0/27866.7/171341/27866.7/171341", "is-column":"false", "mem-cost":"0", "nw-cost":"819/0/4361.26/819/4361.26", "object":"7 (?doc3)", "order":"7[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"13 (?member4)", "subject":"12 (?bag4)"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_R", "_name":"scatter-join", "_parent":"N_1_1_1_1_L_1_L_R_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,9),(4.5,6)", "condition":"10=10", "cost":"29207.3", "cpu-cost":"0/22.509/4.509/22.509/4.509", "dcpu-cost":"0/9/4.5/9/4.5", "dmem-cost":"734", "estimated-count":"4.5", "io-cost":"0/707.028/291.527/707.028/291.527", "mem-cost":"18", "nw-cost":"827/844/9/1671/9", "order":"10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)", "cost":"10297.6", "cpu-cost":"0/0/0.009/0/0.009", "dcpu-cost":"0/0/9/0/9", "dedup":"true", "descending":"false", "dmem-cost":"725", "estimated-count":"9", "io-cost":"0/38.7576/67.5272/38.7576/67.5272", "is-column":"false", "mem-cost":"0", "nw-cost":"827/0/9/827/9", "object":"foaf:Document", "order":"10[NULLS_IRRELEVANT]", "permutation":"POS", "predicate":"rdfs:subClassOf", "subject":"10 (?class4)"}',
'{"_id":"N_1_1_1_1_L_1_L_R_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1_L_R_R_R", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(4.5,9),(4.5,6)", "cost":"18803", "cpu-cost":"0/0/0.009/0/0.009", "dcpu-cost":"0/0/4.5/0/4.5", "dedup":"true", "descending":"false", "dmem-cost":"734", "estimated-count":"4.5", "io-cost":"0/600.743/291.527/600.743/291.527", "is-column":"false", "mem-cost":"0", "nw-cost":"835/0/9/835/9", "object":"10 (?class4)", "order":"10[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"rdf:type", "subject":"11 (?doc4)"}',
'{"_id":"N_1_1_1_1_L_1_R", "_name":"triple-index", "_parent":"N_1_1_1_1_L_1", "_parentLabel":"right", "cardinalities":"(0,0),(0,0),(2886.71,494586),(0,0),(0,0),(0,0),(0,0),(0,0),(540,540),(67,67)", "cost":"2.05702e+06", "cpu-cost":"0/0/8.66012/0/8.66012", "dcpu-cost":"0/0/2886.71/0/2886.71", "dedup":"true", "descending":"false", "dmem-cost":"540", "estimated-count":"2886.71", "io-cost":"0/20929.1/173026/20929.1/173026", "is-column":"false", "mem-cost":"0", "nw-cost":"640/0/8660.12/640/8660.12", "object":"2 (?doc)", "order":"9[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"9 (?member3)", "subject":"8 (?bag3)"}',
'{"_id":"N_1_1_1_1_R", "_name":"scatter-join", "_parent":"N_1_1_1_1", "_parentLabel":"right", "cardinalities":"(2883,103652),(9,9),(2883,3844),(719,719),(67,67),(719,719)", "condition":"3=3", "cost":"5.24455e+06", "cpu-cost":"0/35691/11537.8/35691/11537.8", "dcpu-cost":"0/8415.6/2883/8415.6/2883", "dmem-cost":"9144", "estimated-count":"2883", "io-cost":"0/359396/2547.78/508748/2547.78", "mem-cost":"25337.8", "nw-cost":"101/26987.8/5766/31761.8/5766", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(0,0),(719,719),(0,0),(719,719)", "cost":"23340.3", "cpu-cost":"0/0/1.438/0/1.438", "dcpu-cost":"0/0/719/0/719", "dedup":"true", "descending":"false", "dmem-cost":"0", "estimated-count":"719", "io-cost":"0/19.3788/691.573/19.3788/691.573", "is-column":"false", "mem-cost":"0", "nw-cost":"101/0/1438/101/1438", "object":"3 (?bag2)", "order":"5[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"<http://purl.org/dc/terms/references>", "subject":"5 (?doc2)"}',
'{"_id":"N_1_1_1_1_R_R", "_name":"scatter-join", "_parent":"N_1_1_1_1_R", "_parentLabel":"right", "cardinalities":"(2883,103652),(9,9),(2883,3844),(719,719),(67,67)", "condition":"1=1", "cost":"5.21296e+06", "cpu-cost":"0/32813.5/8654.77/32813.5/8654.77", "dcpu-cost":"0/7696.6/2883/7696.6/2883", "dmem-cost":"9144", "estimated-count":"2883", "io-cost":"0/358685/2547.78/508037/2547.78", "mem-cost":"23180.8", "nw-cost":"821/24728.8/5766/30222.8/5766", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(9,9)", "cost":"10231.6", "cpu-cost":"0/0/0.009/0/0.009", "dcpu-cost":"0/0/9/0/9", "dedup":"true", "descending":"false", "dmem-cost":"719", "estimated-count":"9", "io-cost":"0/38.7576/67.5272/38.7576/67.5272", "is-column":"false", "mem-cost":"0", "nw-cost":"821/0/9/821/9", "object":"foaf:Document", "order":"1[NULLS_IRRELEVANT]", "permutation":"POS", "predicate":"rdfs:subClassOf", "subject":"1 (?class)"}',
'{"_id":"N_1_1_1_1_R_R_R", "_name":"scatter-join", "_parent":"N_1_1_1_1_R_R", "_parentLabel":"right", "cardinalities":"(2883,103652),(9,9),(2883,3844),(719,719),(67,67)", "condition":"2=2", "cost":"5.19974e+06", "cpu-cost":"0/32791/5771.77/32791/5771.77", "dcpu-cost":"0/7687.6/2883/7687.6/2883", "dmem-cost":"9144", "estimated-count":"2883", "io-cost":"0/358579/2547.78/507931/2547.78", "mem-cost":"23162.8", "nw-cost":"828/23891.8/5766/29392.8/5766", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_R_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_R_R_R", "_parentLabel":"left", "cardinalities":"(0,0),(0,0),(3843.6,494586),(719,719),(67,67)", "cost":"2.17632e+06", "cpu-cost":"0/0/11.5308/0/11.5308", "dcpu-cost":"0/0/3843.6/0/3843.6", "dedup":"true", "descending":"false", "dmem-cost":"728", "estimated-count":"3843.6", "io-cost":"0/27866.7/174151/27866.7/174151", "is-column":"false", "mem-cost":"0", "nw-cost":"828/0/11530.8/828/11530.8", "object":"2 (?doc)", "order":"4[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"4 (?member2)", "subject":"3 (?bag2)"}',
'{"_id":"N_1_1_1_1_R_R_R_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_1_R_R_R", "_parentLabel":"right", "cardinalities":"(2883,103652),(9,9),(2883,3844)", "condition":"2=2", "cost":"2.81122e+06", "cpu-cost":"0/11639.7/2888.77/11639.7/2888.77", "dcpu-cost":"0/3844/2883/3844/2883", "dmem-cost":"9144", "estimated-count":"2883", "io-cost":"0/156561/2547.78/305913/2547.78", "mem-cost":"7788", "nw-cost":"4673/7688/5766/17034/5766", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]"}',
'{"_id":"N_1_1_1_1_R_R_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_1_R_R_R_R", "_parentLabel":"left", "cardinalities":"(3844,103652),(0,0),(3844,3844)", "cost":"1.84675e+06", "cpu-cost":"0/0/7.688/0/7.688", "dcpu-cost":"0/0/3844/0/3844", "dedup":"true", "descending":"false", "dmem-cost":"4572", "estimated-count":"3844", "io-cost":"0/149004/7557.04/149004/7557.04", "is-column":"false", "mem-cost":"0", "nw-cost":"4673/0/7688/4673/7688", "object":"0 (?title)", "order":"2[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "permutation":"PSO", "predicate":"<http://purl.org/dc/elements/1.1/title>", "subject":"2 (?doc)"}',
'{"_id":"N_1_1_1_1_R_R_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_1_R_R_R_R", "_parentLabel":"right", "cardinalities":"(0,0),(9,9),(2883,3844)", "cost":"1.78031e+06", "cpu-cost":"0/0/5.766/0/5.766", "dcpu-cost":"0/0/2883/0/2883", "dedup":"true", "descending":"false", "dmem-cost":"4572", "estimated-count":"2883", "io-cost":"0/149353/2547.78/149353/2547.78", "is-column":"false", "mem-cost":"0", "nw-cost":"4673/0/5766/4673/5766", "object":"1 (?class)", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]", "permutation":"OPS", "predicate":"rdf:type", "subject":"2 (?doc)"}'
))
};

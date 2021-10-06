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

module namespace t = "http://marklogic.com/optic/qputils/baseball";
declare default function namespace "http://marklogic.com/optic/qputils/baseball";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function baseball()
{
map:entry("name","baseball")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:project order="">
      <plan:vars>
	<plan:graph-node type="var" name="firstname" column-index="0" static-type="NONE"/>
	<plan:graph-node type="var" name="lastname" column-index="1" static-type="NONE"/>
	<plan:graph-node type="var" name="teamname" column-index="2" static-type="NONE"/>
	<plan:graph-node type="var" name="position" column-index="3" static-type="NONE"/>
	<plan:graph-node type="var" name="pitcherLabel" column-index="4" static-type="NONE"/>
	<plan:graph-node type="var" name="pitcherTeamLabel" column-index="5" static-type="NONE"/>
	<plan:graph-node type="var" name="fastballTeamLabel" column-index="6" static-type="NONE"/>
      </plan:vars>
      <plan:expr>
	<plan:order-by num-sorted="1" order="last(13),desc(last(4)),singletons(8,10)" cost="4.10563e+08" estimated-count="23237.7" io-cost="0/545708/1.20795e+06/2.75232e+07/1.28918e+06" nw-cost="101/114988/14967.6/8.47514e+06/1.0627e+06" cpu-cost="0/662769/2.46748e+07/701607/2.46748e+07" dcpu-cost="0/632.047/70.2704/55033/4989.2" mem-cost="500265" dmem-cost="1327.47" cardinalities="4460,4978,101,956,87,3668,3668,4977.61,71,101,28,87,3668,1609,3668">
	  <plan:order-spec descending="false" nulls-first="false">
	    <plan:graph-node type="var" name="fastballSpeed" column-index="13" static-type="NONE"/>
	  </plan:order-spec>
	  <plan:order-spec descending="true" nulls-first="false">
	    <plan:graph-node type="var" name="pitcherLabel" column-index="4" static-type="NONE"/>
	  </plan:order-spec>
	  <plan:sparql-left-join type="left-bloom-join" dplan="true" order="last(13),singletons(8,10)" cost="3.85874e+08" estimated-count="23237.7" io-cost="0/544956/1.2087e+06/2.75224e+07/1.28998e+06" nw-cost="101/114979/14976.9/8.47448e+06/1.06336e+06" cpu-cost="0/647424/27969/686261/27969" dcpu-cost="0/632.004/70.3141/55029.9/4992.3" mem-cost="500034" dmem-cost="1327.47" cardinalities="4460,4978,101,956,87,3668,3668,4977.61,71,101,28,87,3668,1609,3668">
	    <plan:join-info>
	      <plan:hash left="7" right="7" operator="="/>
	      <plan:filters>
		<plan:join-filter op="bloom">
		  <plan:left-graph-node>
		    <plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
		  </plan:left-graph-node>
		  <plan:right-graph-node>
		    <plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
		  </plan:right-graph-node>
		</plan:join-filter>
	      </plan:filters>
	    </plan:join-info>
	    <plan:expr>
	      <plan:join join-type="scatter-join" order="7,singletons(8,10)" cost="3.44656e+08" estimated-count="23237.7" io-cost="0/537677/7065.28/2.70056e+07/501635" nw-cost="101/66891.2/40394.4/5.08205e+06/2.868e+06" cpu-cost="0/252934/61306.5/291771/61306.5" dcpu-cost="0/295.874/284.467/31164.7/20197.2" mem-cost="197688" dmem-cost="1327.47" cardinalities="4460,4978,101,956,87,3668,0,4977.61,71,101,28,87,3668">
		<plan:join-info>
		  <plan:hash left="7" right="7" operator="="/>
		  <plan:filters>
		    <plan:join-filter op="=">
		      <plan:left-graph-node>
			<plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
		      </plan:left-graph-node>
		      <plan:right-graph-node>
			<plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
		      </plan:right-graph-node>
		    </plan:join-filter>
		  </plan:filters>
		</plan:join-info>
		<plan:elems>
		  <plan:sparql-left-join type="parallel-right-hash-join" dplan="true" order="9,2,singletons(10)" cost="5.57641e+07" estimated-count="9955.22" io-cost="0/439377/4235.21/778065/7128.63" nw-cost="101/51654.2/202/4.25925e+06/14342" cpu-cost="0/132549/19924.8/171286/19924.8" dcpu-cost="0/224.339/1.42254/26085.7/101" mem-cost="113068" dmem-cost="274.133" cardinalities="0,0,101,0,87,3668,0,4977.61,0,101,28,87,3668">
		    <plan:join-info>
		      <plan:hash left="7" right="7" operator="="/>
		    </plan:join-info>
		    <plan:expr>
		      <plan:join join-type="bloom-join" order="9,2,singletons(10)" cost="2.21133e+07" estimated-count="9955.22" io-cost="0/439377/4235.21/631652/7128.63" nw-cost="102/16355.2/202/1.09454e+06/14342" cpu-cost="0/71583.5/9969.57/71583.5/9969.57" dcpu-cost="0/143.065/1.42254/10157.6/101" mem-cost="40837.9" dmem-cost="23.8" cardinalities="0,0,101,0,0,0,0,4977.61,0,101,28">
			<plan:join-info>
			  <plan:hash left="9" right="9" operator="="/>
			  <plan:filters>
			    <plan:join-filter op="bloom">
			      <plan:left-graph-node>
				<plan:graph-node type="column-def" name="team" schema="" column="team" view="" column-number="0" column-index="9" static-type="UNKNOWN"/>
			      </plan:left-graph-node>
			      <plan:right-graph-node>
				<plan:graph-node type="column-def" name="team" schema="" column="team" view="" column-number="0" column-index="9" static-type="UNKNOWN"/>
			      </plan:right-graph-node>
			    </plan:join-filter>
			  </plan:filters>
			</plan:join-info>
			<plan:elems>
			  <plan:join join-type="scatter-join" order="7,singletons(10)" cost="1.54853e+07" estimated-count="9955.22" io-cost="0/2233.72/437069/158594/467827" nw-cost="102/11020.2/4978/739320/353438" cpu-cost="0/16476.3/15286.3/16476.3/15286.3" dcpu-cost="0/72.9523/70.1127/5179.61/4978" mem-cost="10716.2" dmem-cost="23.8" cardinalities="0,0,0,0,0,0,0,4977.61,0,101,28">
			    <plan:join-info>
			      <plan:hash left="9" right="9" operator="="/>
			      <plan:filters>
				<plan:join-filter op="=">
				  <plan:left-graph-node>
				    <plan:graph-node type="column-def" name="team" schema="" column="team" view="" column-number="0" column-index="9" static-type="UNKNOWN"/>
				  </plan:left-graph-node>
				  <plan:right-graph-node>
				    <plan:graph-node type="column-def" name="team" schema="" column="team" view="" column-number="0" column-index="9" static-type="UNKNOWN"/>
				  </plan:right-graph-node>
				</plan:join-filter>
			      </plan:filters>
			    </plan:join-info>
			    <plan:elems>
			      <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="9,singletons(10)" cost="207004" estimated-count="202" io-cost="0/55.2645/42.5563/3923.78/3021.5" nw-cost="102/0/404/510/28684" cpu-cost="0/0/230.684/0/230.684" dcpu-cost="0/0/2.84507/0/202" mem-cost="0" dmem-cost="0" cardinalities="0,0,0,0,0,0,0,0,0,101,28">
				<plan:subject>
				  <plan:graph-node type="var" name="team" column-index="9" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/LeagueAffiliation" static-type="NONE">
				    <plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/LeagueAffiliation</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="leagueIri" column-index="10" static-type="NONE"/>
				</plan:object>
				<plan:join-filter op="=">
				  <plan:left-graph-node>
				    <plan:graph-node type="column-def" name="leagueIri" schema="" column="leagueIri" view="" column-number="0" column-index="10" static-type="UNKNOWN"/>
				  </plan:left-graph-node>
				  <plan:right-expr>
				    <plan:literal>
				      <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://marklogic.com/stress/semantics/baseball/types/FrontierLeague</plan:value>
				    </plan:literal>
				  </plan:right-expr>
				</plan:join-filter>
			      </plan:triple-index>
			      <plan:join join-type="bloom-join" order="7" cost="1.5106e+07" estimated-count="4977.61" io-cost="0/2135.89/437069/151648/467827" nw-cost="202/10414.2/4978/710126/353438" cpu-cost="0/15639.7/5331.05/15639.7/5331.05" dcpu-cost="0/70.1072/70.1127/4977.61/4978" mem-cost="10211.2" dmem-cost="23.8" cardinalities="0,0,0,0,0,0,0,4977.61,0,101">
				<plan:join-info>
				  <plan:hash left="7" right="7" operator="="/>
				  <plan:filters>
				    <plan:join-filter op="bloom">
				      <plan:left-graph-node>
					<plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				      </plan:left-graph-node>
				      <plan:right-graph-node>
					<plan:graph-node type="column-def" name="playerSub" schema="" column="playerSub" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				      </plan:right-graph-node>
				    </plan:join-filter>
				  </plan:filters>
				</plan:join-info>
				<plan:elems>
				  <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="9,7" cost="5.01143e+06" estimated-count="4977.61" io-cost="0/1897.42/127.949/134717/9084.39" nw-cost="202/0/9955.22/1010/706821" cpu-cost="0/0/706.821/0/706.821" dcpu-cost="0/0/70.1072/0/4977.61" mem-cost="0" dmem-cost="6.73333" cardinalities="0,0,0,0,0,0,0,4977.61,0,101">
				    <plan:subject>
				      <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
				    </plan:subject>
				    <plan:predicate>
				      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/PlaysFor" static-type="NONE">
					<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/PlaysFor</plan:rdf-val>
				      </plan:graph-node>
				    </plan:predicate>
				    <plan:object>
				      <plan:graph-node type="var" name="team" column-index="9" static-type="NONE"/>
				    </plan:object>
				  </plan:triple-index>
				  <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="7" cost="6.42656e+06" estimated-count="4978" io-cost="0/110.529/437069/7847.57/467827" nw-cost="459/0/4978/2295/353438" cpu-cost="0/0/353.438/0/353.438" dcpu-cost="0/0/70.1127/0/4978" mem-cost="0" dmem-cost="23.8" cardinalities="0,0,0,0,0,0,0,4978">
				    <plan:subject>
				      <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
				    </plan:subject>
				    <plan:predicate>
				      <plan:graph-node type="iri" name="http://www.w3.org/2000/01/rdf-schema#isA" static-type="NONE">
					<plan:rdf-val>http://www.w3.org/2000/01/rdf-schema#isA</plan:rdf-val>
				      </plan:graph-node>
				    </plan:predicate>
				    <plan:object>
				      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/rules/YoungPlayer" static-type="NONE">
					<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/rules/YoungPlayer</plan:rdf-val>
				      </plan:graph-node>
				    </plan:object>
				  </plan:triple-index>
				</plan:elems>
			      </plan:join>
			    </plan:elems>
			  </plan:join>
			  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="9,2" cost="204079" estimated-count="101" io-cost="0/73.6861/4235.21/5231.71/7128.63" nw-cost="357/0/202/1785/14342" cpu-cost="0/0/14.342/0/14.342" dcpu-cost="0/0/1.42254/0/101" mem-cost="0" dmem-cost="17.0667" cardinalities="0,0,101,0,0,0,0,0,0,101">
			    <plan:subject>
			      <plan:graph-node type="var" name="team" column-index="9" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/TeamName" static-type="NONE">
				<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/TeamName</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="teamname" column-index="2" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			</plan:elems>
		      </plan:join>
		    </plan:expr>
		    <plan:optional>
		      <plan:join join-type="scatter-join" order="11,7,12" cost="2.04763e+07" estimated-count="12173.1" io-cost="0/1821.35/240.794/129316/17096.4" nw-cost="101/15135/36519.2/571840/2.59286e+06" cpu-cost="0/11798.2/26939/11798.2/26939" dcpu-cost="0/52.8873/171.452/3755/12173.1" mem-cost="11265" dmem-cost="250.333" cardinalities="0,0,0,0,87,3668,0,12173.1,0,0,0,87,3668">
			<plan:join-info>
			  <plan:hash left="12" right="12" operator="="/>
			  <plan:filters>
			    <plan:join-filter op="=">
			      <plan:left-graph-node>
				<plan:graph-node type="column-def" name="pitcherTeamGraph" schema="" column="pitcherTeamGraph" view="" column-number="0" column-index="12" static-type="UNKNOWN"/>
			      </plan:left-graph-node>
			      <plan:right-graph-node>
				<plan:graph-node type="column-def" name="pitcherTeamGraph" schema="" column="pitcherTeamGraph" view="" column-number="0" column-index="12" static-type="UNKNOWN"/>
			      </plan:right-graph-node>
			    </plan:join-filter>
			  </plan:filters>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="12,5" cost="2.71321e+06" estimated-count="3668" io-cost="0/36.843/103.558/2615.86/7352.63" nw-cost="101/0/7336/505/520856" cpu-cost="0/0/520.856/0/520.856" dcpu-cost="0/0/51.662/0/3668" mem-cost="0" dmem-cost="0" cardinalities="0,0,0,0,0,3668,0,0,0,0,0,0,3668">
			    <plan:subject>
			      <plan:graph-node type="var" name="pitcherTeamGraph" column-index="12" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName" static-type="NONE">
				<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="pitcherTeamLabel" column-index="5" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			  <plan:join join-type="scatter-join" order="11,7,12" cost="1.50482e+07" estimated-count="12173.1" io-cost="0/1680.95/240.794/119348/17096.4" nw-cost="3769/4030/36519.2/50479/2.59286e+06" cpu-cost="0/273.354/14765.9/273.354/14765.9" dcpu-cost="0/1.22535/171.452/87/12173.1" mem-cost="261" dmem-cost="250.333" cardinalities="0,0,0,0,87,0,0,12173.1,0,0,0,87,3668">
			    <plan:join-info>
			      <plan:hash left="11" right="11" operator="="/>
			      <plan:filters>
				<plan:join-filter op="=">
				  <plan:left-graph-node>
				    <plan:graph-node type="column-def" name="pitcherType" schema="" column="pitcherType" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
				  </plan:left-graph-node>
				  <plan:right-graph-node>
				    <plan:graph-node type="column-def" name="pitcherType" schema="" column="pitcherType" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
				  </plan:right-graph-node>
				</plan:join-filter>
			      </plan:filters>
			    </plan:join-info>
			    <plan:elems>
			      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="11,4" cost="317018" estimated-count="87" io-cost="0/36.843/4.59563/2615.86/326.29" nw-cost="3769/0/174/18845/12354" cpu-cost="0/0/12.354/0/12.354" dcpu-cost="0/0/1.22535/0/87" mem-cost="0" dmem-cost="244.533" cardinalities="0,0,0,0,87,0,0,0,0,0,0,87">
				<plan:subject>
				  <plan:graph-node type="var" name="pitcherType" column-index="11" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://www.w3.org/2000/01/rdf-schema#label" static-type="NONE">
				    <plan:rdf-val>http://www.w3.org/2000/01/rdf-schema#label</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="pitcherLabel" column-index="4" static-type="NONE"/>
				</plan:object>
			      </plan:triple-index>
			      <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="11,7,12" cost="1.46542e+07" estimated-count="12173.1" io-cost="0/1639.51/240.794/116406/17096.4" nw-cost="3856/0/36519.2/19280/2.59286e+06" cpu-cost="0/0/2592.86/0/2592.86" dcpu-cost="0/0/171.452/0/12173.1" mem-cost="0" dmem-cost="250.333" cardinalities="0,0,0,0,0,0,0,12173.1,0,0,0,87,3668">
				<plan:subject>
				  <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/PitcherType" static-type="NONE">
				    <plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/PitcherType</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="pitcherType" column-index="11" static-type="NONE"/>
				</plan:object>
				<plan:graph>
				  <plan:graph-node type="var" name="pitcherTeamGraph" column-index="12" static-type="NONE"/>
				</plan:graph>
			      </plan:triple-index>
			    </plan:elems>
			  </plan:join>
			</plan:elems>
		      </plan:join>
		    </plan:optional>
		    <plan:filters/>
		    <plan:ljfilters/>
		  </plan:sparql-left-join>
		  <plan:join join-type="parallel-sort-merge-join" order="7,singletons(8)" cost="2.8854e+08" estimated-count="11619.7" io-cost="0/94065.2/7065.28/2.62204e+07/501635" nw-cost="5079/9956/40394.4/808461/2.868e+06" cpu-cost="0/10862.9/38068.8/10962.9/38068.8" dcpu-cost="0/70.1127/284.467/4978/20197.2" mem-cost="10256" dmem-cost="1327.47" cardinalities="4460,4978,0,956,0,0,0,4978,71" left-num-sorted="1" right-num-sorted="1">
		    <plan:join-info>
		      <plan:hash left="7" right="7" operator="="/>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,3" cost="7.25116e+07" estimated-count="7358.83" io-cost="0/91739.1/2365.47/6.51348e+06/167948" nw-cost="5079/0/14717.7/25395/1.04495e+06" cpu-cost="0/0/1044.95/0/1044.95" dcpu-cost="0/0/103.646/0/7358.83" mem-cost="0" dmem-cost="331.867" cardinalities="0,0,0,956,0,0,0,4978">
			<plan:subject>
			  <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/Position" static-type="NONE">
			    <plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/Position</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="var" name="position" column-index="3" static-type="NONE"/>
			</plan:object>
		      </plan:triple-index>
		      <plan:join join-type="parallel-hash-join" order="7,singletons(8)" cost="2.16985e+08" estimated-count="7860.36" io-cost="0/94065.2/4699.81/1.97069e+07/333687" nw-cost="5079/9956/25676.7/783066/1.82305e+06" cpu-cost="0/10762.9/25404.1/10862.9/25404.1" dcpu-cost="0/70.1127/180.822/4978/12838.4" mem-cost="10156" dmem-cost="995.6" cardinalities="4460,4978,0,0,0,0,0,4978,71">
			<plan:join-info>
			  <plan:hash left="7" right="7" operator="="/>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,1" cost="7.07817e+07" estimated-count="4978" io-cost="0/91739.1/2326.04/6.51348e+06/165149" nw-cost="5079/0/9956/25395/706876" cpu-cost="0/0/706.876/0/706.876" dcpu-cost="0/0/70.1127/0/4978" mem-cost="0" dmem-cost="331.867" cardinalities="0,4978,0,0,0,0,0,4978">
			    <plan:subject>
			      <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/LastName" static-type="NONE">
				<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/LastName</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="lastname" column-index="1" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			  <plan:join join-type="parallel-sort-merge-join" order="7,singletons(8)" cost="1.42719e+08" estimated-count="7860.36" io-cost="0/91757.6/4699.81/1.30283e+07/333687" nw-cost="5079/1/25676.7/50795/1.82305e+06" cpu-cost="0/100/17543.8/100/17543.8" dcpu-cost="0/0/180.822/0/12838.4" mem-cost="100" dmem-cost="663.733" cardinalities="4460,0,0,0,0,0,0,4978,71" left-num-sorted="1" right-num-sorted="1">
			    <plan:join-info>
			      <plan:hash left="7" right="7" operator="="/>
			    </plan:join-info>
			    <plan:elems>
			      <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,0" cost="7.07817e+07" estimated-count="4978" io-cost="0/91739.1/2326.04/6.51348e+06/165149" nw-cost="5079/0/9956/25395/706876" cpu-cost="0/0/706.876/0/706.876" dcpu-cost="0/0/70.1127/0/4978" mem-cost="0" dmem-cost="331.867" cardinalities="4460,0,0,0,0,0,0,4978">
				<plan:subject>
				  <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/FirstName" static-type="NONE">
				    <plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/FirstName</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="firstname" column-index="0" static-type="NONE"/>
				</plan:object>
			      </plan:triple-index>
			      <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,singletons(8)" cost="7.28972e+07" estimated-count="7860.36" io-cost="0/91757.6/2373.77/6.51479e+06/168538" nw-cost="5080/0/15720.7/25400/1.11617e+06" cpu-cost="0/0/8976.53/0/8976.53" dcpu-cost="0/0/110.709/0/7860.36" mem-cost="0" dmem-cost="331.867" cardinalities="0,0,0,0,0,0,0,4978,71">
				<plan:subject>
				  <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/Bats" static-type="NONE">
				    <plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/Bats</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="bats" column-index="8" static-type="NONE"/>
				</plan:object>
				<plan:join-filter op="=">
				  <plan:left-graph-node>
				    <plan:graph-node type="column-def" name="bats" schema="" column="bats" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
				  </plan:left-graph-node>
				  <plan:right-expr>
				    <plan:literal>
				      <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://marklogic.com/stress/semantics/baseball/types/Left</plan:value>
				    </plan:literal>
				  </plan:right-expr>
				</plan:join-filter>
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
	      <plan:join join-type="hash-join" order="13,7,14" cost="2.33871e+07" estimated-count="3668" io-cost="0/214.087/1.2087e+06/15200.2/1.28998e+06" nw-cost="357/7336/14976.9/524426/1.06336e+06" cpu-cost="0/7856.86/4731.36/7856.86/4731.36" dcpu-cost="0/51.662/70.3141/3668/4992.3" mem-cost="7336" dmem-cost="17.0667" cardinalities="0,0,0,0,0,0,3668,3668,0,0,0,0,0,1609,3668">
		<plan:join-info>
		  <plan:hash left="14" right="14" operator="="/>
		</plan:join-info>
		<plan:elems>
		  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="14,6" cost="2.72857e+06" estimated-count="3668" io-cost="0/36.843/103.558/2615.86/7352.63" nw-cost="357/0/7336/1785/520856" cpu-cost="0/0/520.856/0/520.856" dcpu-cost="0/0/51.662/0/3668" mem-cost="0" dmem-cost="17.0667" cardinalities="0,0,0,0,0,0,3668,0,0,0,0,0,0,0,3668">
		    <plan:subject>
		      <plan:graph-node type="var" name="fastballTeamGraph" column-index="14" static-type="NONE"/>
		    </plan:subject>
		    <plan:predicate>
		      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName" static-type="NONE">
			<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName</plan:rdf-val>
		      </plan:graph-node>
		    </plan:predicate>
		    <plan:object>
		      <plan:graph-node type="var" name="fastballTeamLabel" column-index="6" static-type="NONE"/>
		    </plan:object>
		  </plan:triple-index>
		  <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="13,7,14" cost="1.79632e+07" estimated-count="4992.3" io-cost="0/73.6861/1.2087e+06/5231.71/1.28998e+06" nw-cost="357/0/14976.9/1785/1.06336e+06" cpu-cost="0/0/1063.36/0/1063.36" dcpu-cost="0/0/70.3141/0/4992.3" mem-cost="0" dmem-cost="17.0667" cardinalities="0,0,0,0,0,0,0,4978,0,0,0,0,0,1609,4992.3">
		    <plan:subject>
		      <plan:graph-node type="var" name="playerSub" column-index="7" static-type="NONE"/>
		    </plan:subject>
		    <plan:predicate>
		      <plan:graph-node type="iri" name="http://marklogic.com/stress/semantics/baseball/roster/FastballSpeed" static-type="NONE">
			<plan:rdf-val>http://marklogic.com/stress/semantics/baseball/roster/FastballSpeed</plan:rdf-val>
		      </plan:graph-node>
		    </plan:predicate>
		    <plan:object>
		      <plan:graph-node type="var" name="fastballSpeed" column-index="13" static-type="NONE"/>
		    </plan:object>
		    <plan:graph>
		      <plan:graph-node type="var" name="fastballTeamGraph" column-index="14" static-type="NONE"/>
		    </plan:graph>
		  </plan:triple-index>
		</plan:elems>
	      </plan:join>
	    </plan:optional>
	    <plan:filters/>
	    <plan:ljfilters/>
	  </plan:sparql-left-join>
	</plan:order-by>
      </plan:expr>
    </plan:project>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_name":"project", "_parent":"N", "column":["0 (?firstname)", "1 (?lastname)", "2 (?teamname)", "3 (?position)", "4 (?pitcherLabel)", "5 (?pitcherTeamLabel)", "6 (?fastballTeamLabel)"], "order":""}',
'{"_id":"N_1_1", "_name":"order-by", "_parent":"N_1", "cardinalities":"4460,4978,101,956,87,3668,3668,4977.61,71,101,28,87,3668,1609,3668", "cost":"4.10563e+08", "cpu-cost":"0/662769/2.46748e+07/701607/2.46748e+07", "dcpu-cost":"0/632.047/70.2704/55033/4989.2", "dmem-cost":"1327.47", "estimated-count":"23237.7", "io-cost":"0/545708/1.20795e+06/2.75232e+07/1.28918e+06", "mem-cost":"500265", "num-sorted":"1", "nw-cost":"101/114988/14967.6/8.47514e+06/1.0627e+06", "order":"last(13),desc(last(4)),singletons(8,10)", "order-spec":["13 (?fastballSpeed)", "4 (?pitcherLabel) [desc]"]}',
'{"_id":"N_1_1_1", "_name":"left-bloom-join", "_parent":"N_1_1", "cardinalities":"4460,4978,101,956,87,3668,3668,4977.61,71,101,28,87,3668,1609,3668", "condition":"7=7", "cost":"3.85874e+08", "cpu-cost":"0/647424/27969/686261/27969", "dcpu-cost":"0/632.004/70.3141/55029.9/4992.3", "dmem-cost":"1327.47", "dplan":"true", "estimated-count":"23237.7", "io-cost":"0/544956/1.2087e+06/2.75224e+07/1.28998e+06", "mem-cost":"500034", "nw-cost":"101/114979/14976.9/8.47448e+06/1.06336e+06", "order":"last(13),singletons(8,10)"}',
'{"_id":"N_1_1_1_L", "_name":"scatter-join", "_parent":"N_1_1_1", "_parentLabel":"left", "cardinalities":"4460,4978,101,956,87,3668,0,4977.61,71,101,28,87,3668", "condition":"7=7", "cost":"3.44656e+08", "cpu-cost":"0/252934/61306.5/291771/61306.5", "dcpu-cost":"0/295.874/284.467/31164.7/20197.2", "dmem-cost":"1327.47", "estimated-count":"23237.7", "io-cost":"0/537677/7065.28/2.70056e+07/501635", "mem-cost":"197688", "nw-cost":"101/66891.2/40394.4/5.08205e+06/2.868e+06", "order":"7,singletons(8,10)"}',
'{"_id":"N_1_1_1_L_L", "_name":"parallel-right-hash-join", "_parent":"N_1_1_1_L", "_parentLabel":"left", "cardinalities":"0,0,101,0,87,3668,0,4977.61,0,101,28,87,3668", "condition":"7=7", "cost":"5.57641e+07", "cpu-cost":"0/132549/19924.8/171286/19924.8", "dcpu-cost":"0/224.339/1.42254/26085.7/101", "dmem-cost":"274.133", "dplan":"true", "estimated-count":"9955.22", "io-cost":"0/439377/4235.21/778065/7128.63", "mem-cost":"113068", "nw-cost":"101/51654.2/202/4.25925e+06/14342", "order":"9,2,singletons(10)"}',
'{"_id":"N_1_1_1_L_L_L", "_name":"scatter-join", "_parent":"N_1_1_1_L_L", "_parentLabel":"left", "cardinalities":"0,0,0,0,87,3668,0,12173.1,0,0,0,87,3668", "condition":"12=12", "cost":"2.04763e+07", "cpu-cost":"0/11798.2/26939/11798.2/26939", "dcpu-cost":"0/52.8873/171.452/3755/12173.1", "dmem-cost":"250.333", "estimated-count":"12173.1", "io-cost":"0/1821.35/240.794/129316/17096.4", "mem-cost":"11265", "nw-cost":"101/15135/36519.2/571840/2.59286e+06", "order":"11,7,12"}',
'{"_id":"N_1_1_1_L_L_L_L", "_name":"triple-index", "_parent":"N_1_1_1_L_L_L", "_parentLabel":"left", "cardinalities":"0,0,0,0,0,3668,0,0,0,0,0,0,3668", "cost":"2.71321e+06", "cpu-cost":"0/0/520.856/0/520.856", "dcpu-cost":"0/0/51.662/0/3668", "dedup":"true", "descending":"false", "dmem-cost":"0", "estimated-count":"3668", "io-cost":"0/36.843/103.558/2615.86/7352.63", "is-column":"false", "mem-cost":"0", "nw-cost":"101/0/7336/505/520856", "object":"5 (?pitcherTeamLabel)", "order":"12,5", "permutation":"PSO", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName>", "subject":"12 (?pitcherTeamGraph)"}',
'{"_id":"N_1_1_1_L_L_L_R", "_name":"scatter-join", "_parent":"N_1_1_1_L_L_L", "_parentLabel":"right", "cardinalities":"0,0,0,0,87,0,0,12173.1,0,0,0,87,3668", "condition":"11=11", "cost":"1.50482e+07", "cpu-cost":"0/273.354/14765.9/273.354/14765.9", "dcpu-cost":"0/1.22535/171.452/87/12173.1", "dmem-cost":"250.333", "estimated-count":"12173.1", "io-cost":"0/1680.95/240.794/119348/17096.4", "mem-cost":"261", "nw-cost":"3769/4030/36519.2/50479/2.59286e+06", "order":"11,7,12"}',
'{"_id":"N_1_1_1_L_L_L_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_L_L_R", "_parentLabel":"left", "cardinalities":"0,0,0,0,87,0,0,0,0,0,0,87", "cost":"317018", "cpu-cost":"0/0/12.354/0/12.354", "dcpu-cost":"0/0/1.22535/0/87", "dedup":"true", "descending":"false", "dmem-cost":"244.533", "estimated-count":"87", "io-cost":"0/36.843/4.59563/2615.86/326.29", "is-column":"false", "mem-cost":"0", "nw-cost":"3769/0/174/18845/12354", "object":"4 (?pitcherLabel)", "order":"11,4", "permutation":"PSO", "predicate":"rdfs:label", "subject":"11 (?pitcherType)"}',
'{"_id":"N_1_1_1_L_L_L_R_R", "_name":"triple-index", "_parent":"N_1_1_1_L_L_L_R", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,0,12173.1,0,0,0,87,3668", "cost":"1.46542e+07", "cpu-cost":"0/0/2592.86/0/2592.86", "dcpu-cost":"0/0/171.452/0/12173.1", "dedup":"true", "descending":"false", "dmem-cost":"250.333", "estimated-count":"12173.1", "graph":"12 (?pitcherTeamGraph)", "io-cost":"0/1639.51/240.794/116406/17096.4", "is-column":"false", "mem-cost":"0", "nw-cost":"3856/0/36519.2/19280/2.59286e+06", "object":"11 (?pitcherType)", "order":"11,7,12", "permutation":"OPS", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/PitcherType>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_L_R", "_name":"bloom-join", "_parent":"N_1_1_1_L_L", "_parentLabel":"right", "cardinalities":"0,0,101,0,0,0,0,4977.61,0,101,28", "condition":"9=9", "cost":"2.21133e+07", "cpu-cost":"0/71583.5/9969.57/71583.5/9969.57", "dcpu-cost":"0/143.065/1.42254/10157.6/101", "dmem-cost":"23.8", "estimated-count":"9955.22", "io-cost":"0/439377/4235.21/631652/7128.63", "mem-cost":"40837.9", "nw-cost":"102/16355.2/202/1.09454e+06/14342", "order":"9,2,singletons(10)"}',
'{"_id":"N_1_1_1_L_L_R_L", "_name":"scatter-join", "_parent":"N_1_1_1_L_L_R", "_parentLabel":"left", "cardinalities":"0,0,0,0,0,0,0,4977.61,0,101,28", "condition":"9=9", "cost":"1.54853e+07", "cpu-cost":"0/16476.3/15286.3/16476.3/15286.3", "dcpu-cost":"0/72.9523/70.1127/5179.61/4978", "dmem-cost":"23.8", "estimated-count":"9955.22", "io-cost":"0/2233.72/437069/158594/467827", "mem-cost":"10716.2", "nw-cost":"102/11020.2/4978/739320/353438", "order":"7,singletons(10)"}',
'{"_id":"N_1_1_1_L_L_R_L_L", "_name":"triple-index", "_parent":"N_1_1_1_L_L_R_L", "_parentLabel":"left", "cardinalities":"0,0,0,0,0,0,0,0,0,101,28", "cost":"207004", "cpu-cost":"0/0/230.684/0/230.684", "dcpu-cost":"0/0/2.84507/0/202", "dedup":"true", "descending":"false", "dmem-cost":"0", "estimated-count":"202", "io-cost":"0/55.2645/42.5563/3923.78/3021.5", "is-column":"false", "mem-cost":"0", "nw-cost":"102/0/404/510/28684", "object":"10 (?leagueIri)", "order":"9,singletons(10)", "permutation":"POS", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/LeagueAffiliation>", "subject":"9 (?team)"}',
'{"_id":"N_1_1_1_L_L_R_L_L_1", "_name":"join-filter", "_parent":"N_1_1_1_L_L_R_L_L", "condition":"leagueIri=<http://marklogic.com/stress/semantics/baseball/types/FrontierLeague>", "left-graph-node":{"column":"leagueIri", "column-index":"10", "name":"leagueIri", "schema":"", "type":"column-def", "view":""}, "op":"="}',
'{"_id":"N_1_1_1_L_L_R_L_R", "_name":"bloom-join", "_parent":"N_1_1_1_L_L_R_L", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,0,4977.61,0,101", "condition":"7=7", "cost":"1.5106e+07", "cpu-cost":"0/15639.7/5331.05/15639.7/5331.05", "dcpu-cost":"0/70.1072/70.1127/4977.61/4978", "dmem-cost":"23.8", "estimated-count":"4977.61", "io-cost":"0/2135.89/437069/151648/467827", "mem-cost":"10211.2", "nw-cost":"202/10414.2/4978/710126/353438", "order":"7"}',
'{"_id":"N_1_1_1_L_L_R_L_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_L_R_L_R", "_parentLabel":"left", "cardinalities":"0,0,0,0,0,0,0,4977.61,0,101", "cost":"5.01143e+06", "cpu-cost":"0/0/706.821/0/706.821", "dcpu-cost":"0/0/70.1072/0/4977.61", "dedup":"true", "descending":"false", "dmem-cost":"6.73333", "estimated-count":"4977.61", "io-cost":"0/1897.42/127.949/134717/9084.39", "is-column":"false", "mem-cost":"0", "nw-cost":"202/0/9955.22/1010/706821", "object":"9 (?team)", "order":"9,7", "permutation":"OPS", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/PlaysFor>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_L_R_L_R_R", "_name":"triple-index", "_parent":"N_1_1_1_L_L_R_L_R", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,0,4978", "cost":"6.42656e+06", "cpu-cost":"0/0/353.438/0/353.438", "dcpu-cost":"0/0/70.1127/0/4978", "dedup":"true", "descending":"false", "dmem-cost":"23.8", "estimated-count":"4978", "io-cost":"0/110.529/437069/7847.57/467827", "is-column":"false", "mem-cost":"0", "nw-cost":"459/0/4978/2295/353438", "object":"<http://marklogic.com/stress/semantics/baseball/rules/YoungPlayer>", "order":"7", "permutation":"OPS", "predicate":"rdfs:isA", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_L_R_R", "_name":"triple-index", "_parent":"N_1_1_1_L_L_R", "_parentLabel":"right", "cardinalities":"0,0,101,0,0,0,0,0,0,101", "cost":"204079", "cpu-cost":"0/0/14.342/0/14.342", "dcpu-cost":"0/0/1.42254/0/101", "dedup":"true", "descending":"false", "dmem-cost":"17.0667", "estimated-count":"101", "io-cost":"0/73.6861/4235.21/5231.71/7128.63", "is-column":"false", "mem-cost":"0", "nw-cost":"357/0/202/1785/14342", "object":"2 (?teamname)", "order":"9,2", "permutation":"PSO", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/TeamName>", "subject":"9 (?team)"}',
'{"_id":"N_1_1_1_L_R", "_name":"parallel-sort-merge-join", "_parent":"N_1_1_1_L", "_parentLabel":"right", "cardinalities":"4460,4978,0,956,0,0,0,4978,71", "condition":"7=7", "cost":"2.8854e+08", "cpu-cost":"0/10862.9/38068.8/10962.9/38068.8", "dcpu-cost":"0/70.1127/284.467/4978/20197.2", "dmem-cost":"1327.47", "estimated-count":"11619.7", "io-cost":"0/94065.2/7065.28/2.62204e+07/501635", "left-num-sorted":"1", "mem-cost":"10256", "nw-cost":"5079/9956/40394.4/808461/2.868e+06", "order":"7,singletons(8)", "right-num-sorted":"1"}',
'{"_id":"N_1_1_1_L_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_R", "_parentLabel":"left", "cardinalities":"0,0,0,956,0,0,0,4978", "cost":"7.25116e+07", "cpu-cost":"0/0/1044.95/0/1044.95", "dcpu-cost":"0/0/103.646/0/7358.83", "dedup":"true", "descending":"false", "dmem-cost":"331.867", "estimated-count":"7358.83", "io-cost":"0/91739.1/2365.47/6.51348e+06/167948", "is-column":"false", "mem-cost":"0", "nw-cost":"5079/0/14717.7/25395/1.04495e+06", "object":"3 (?position)", "order":"7,3", "permutation":"SOP", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/Position>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_R_R", "_name":"parallel-hash-join", "_parent":"N_1_1_1_L_R", "_parentLabel":"right", "cardinalities":"4460,4978,0,0,0,0,0,4978,71", "condition":"7=7", "cost":"2.16985e+08", "cpu-cost":"0/10762.9/25404.1/10862.9/25404.1", "dcpu-cost":"0/70.1127/180.822/4978/12838.4", "dmem-cost":"995.6", "estimated-count":"7860.36", "io-cost":"0/94065.2/4699.81/1.97069e+07/333687", "mem-cost":"10156", "nw-cost":"5079/9956/25676.7/783066/1.82305e+06", "order":"7,singletons(8)"}',
'{"_id":"N_1_1_1_L_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_R_R", "_parentLabel":"left", "cardinalities":"0,4978,0,0,0,0,0,4978", "cost":"7.07817e+07", "cpu-cost":"0/0/706.876/0/706.876", "dcpu-cost":"0/0/70.1127/0/4978", "dedup":"true", "descending":"false", "dmem-cost":"331.867", "estimated-count":"4978", "io-cost":"0/91739.1/2326.04/6.51348e+06/165149", "is-column":"false", "mem-cost":"0", "nw-cost":"5079/0/9956/25395/706876", "object":"1 (?lastname)", "order":"7,1", "permutation":"SOP", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/LastName>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_R_R_R", "_name":"parallel-sort-merge-join", "_parent":"N_1_1_1_L_R_R", "_parentLabel":"right", "cardinalities":"4460,0,0,0,0,0,0,4978,71", "condition":"7=7", "cost":"1.42719e+08", "cpu-cost":"0/100/17543.8/100/17543.8", "dcpu-cost":"0/0/180.822/0/12838.4", "dmem-cost":"663.733", "estimated-count":"7860.36", "io-cost":"0/91757.6/4699.81/1.30283e+07/333687", "left-num-sorted":"1", "mem-cost":"100", "nw-cost":"5079/1/25676.7/50795/1.82305e+06", "order":"7,singletons(8)", "right-num-sorted":"1"}',
'{"_id":"N_1_1_1_L_R_R_R_L", "_name":"triple-index", "_parent":"N_1_1_1_L_R_R_R", "_parentLabel":"left", "cardinalities":"4460,0,0,0,0,0,0,4978", "cost":"7.07817e+07", "cpu-cost":"0/0/706.876/0/706.876", "dcpu-cost":"0/0/70.1127/0/4978", "dedup":"true", "descending":"false", "dmem-cost":"331.867", "estimated-count":"4978", "io-cost":"0/91739.1/2326.04/6.51348e+06/165149", "is-column":"false", "mem-cost":"0", "nw-cost":"5079/0/9956/25395/706876", "object":"0 (?firstname)", "order":"7,0", "permutation":"SOP", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/FirstName>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_R_R_R_R", "_name":"triple-index", "_parent":"N_1_1_1_L_R_R_R", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,0,4978,71", "cost":"7.28972e+07", "cpu-cost":"0/0/8976.53/0/8976.53", "dcpu-cost":"0/0/110.709/0/7860.36", "dedup":"true", "descending":"false", "dmem-cost":"331.867", "estimated-count":"7860.36", "io-cost":"0/91757.6/2373.77/6.51479e+06/168538", "is-column":"false", "mem-cost":"0", "nw-cost":"5080/0/15720.7/25400/1.11617e+06", "object":"8 (?bats)", "order":"7,singletons(8)", "permutation":"SOP", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/Bats>", "subject":"7 (?playerSub)"}',
'{"_id":"N_1_1_1_L_R_R_R_R_1", "_name":"join-filter", "_parent":"N_1_1_1_L_R_R_R_R", "condition":"bats=<http://marklogic.com/stress/semantics/baseball/types/Left>", "left-graph-node":{"column":"bats", "column-index":"8", "name":"bats", "schema":"", "type":"column-def", "view":""}, "op":"="}',
'{"_id":"N_1_1_1_R", "_name":"hash-join", "_parent":"N_1_1_1", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,3668,3668,0,0,0,0,0,1609,3668", "condition":"14=14", "cost":"2.33871e+07", "cpu-cost":"0/7856.86/4731.36/7856.86/4731.36", "dcpu-cost":"0/51.662/70.3141/3668/4992.3", "dmem-cost":"17.0667", "estimated-count":"3668", "io-cost":"0/214.087/1.2087e+06/15200.2/1.28998e+06", "mem-cost":"7336", "nw-cost":"357/7336/14976.9/524426/1.06336e+06", "order":"13,7,14"}',
'{"_id":"N_1_1_1_R_L", "_name":"triple-index", "_parent":"N_1_1_1_R", "_parentLabel":"left", "cardinalities":"0,0,0,0,0,0,3668,0,0,0,0,0,0,0,3668", "cost":"2.72857e+06", "cpu-cost":"0/0/520.856/0/520.856", "dcpu-cost":"0/0/51.662/0/3668", "dedup":"true", "descending":"false", "dmem-cost":"17.0667", "estimated-count":"3668", "io-cost":"0/36.843/103.558/2615.86/7352.63", "is-column":"false", "mem-cost":"0", "nw-cost":"357/0/7336/1785/520856", "object":"6 (?fastballTeamLabel)", "order":"14,6", "permutation":"PSO", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/GraphTeamName>", "subject":"14 (?fastballTeamGraph)"}',
'{"_id":"N_1_1_1_R_R", "_name":"triple-index", "_parent":"N_1_1_1_R", "_parentLabel":"right", "cardinalities":"0,0,0,0,0,0,0,4978,0,0,0,0,0,1609,4992.3", "cost":"1.79632e+07", "cpu-cost":"0/0/1063.36/0/1063.36", "dcpu-cost":"0/0/70.3141/0/4992.3", "dedup":"true", "descending":"false", "dmem-cost":"17.0667", "estimated-count":"4992.3", "graph":"14 (?fastballTeamGraph)", "io-cost":"0/73.6861/1.2087e+06/5231.71/1.28998e+06", "is-column":"false", "mem-cost":"0", "nw-cost":"357/0/14976.9/1785/1.06336e+06", "object":"13 (?fastballSpeed)", "order":"13,7,14", "permutation":"POS", "predicate":"<http://marklogic.com/stress/semantics/baseball/roster/FastballSpeed>", "subject":"7 (?playerSub)"}'
))
};

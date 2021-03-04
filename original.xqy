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

import module namespace qputils = "http://marklogic.com/optic/qputils" at "lib/qputils.xqy";

let $plans := map:new()

=>map:with("sp2q7_slow",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project id="9792968048501867107" order="">
        <plan:column type="var" name="title" column-index="0"/>
        <plan:join type="parallel-hash-join" id="11395570539105127170" order="2,0" cost="3.93592e+06" estimated-count="1411.33" io-cost="0/254322/97808.2/892598/195616" nw-cost="102/22047.4/13800/68991.2/27600" cpu-cost="0/509625/112766/509651/112766" dcpu-cost="0/628151/206262/2.0398e+06/412523" mem-cost="68492" dmem-cost="4169" cardinalities="(1411.33,3450),(9,9),(1411.33,3450),(719,719),(132,132),(719,719)">
          <plan:hash left="1" right="1" op="="/>
          <plan:triple-index permutation="POS" dedup="true" id="9925280488039544285" order="1" cost="3874.36" estimated-count="9" io-cost="0/27.3121/339.507/54.6243/679.014" nw-cost="102/0/9/102/18" cpu-cost="0/0/0.018/0/0.018" dcpu-cost="0/0/1375.34/0/2750.69" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(9,9)">
            <plan:subject type="var" name="class" column-index="1"/>
            <plan:predicate type="iri">http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:predicate>
            <plan:object type="iri">http://xmlns.com/foaf/0.1/Document</plan:object>
          </plan:triple-index>
          <plan:join type="scatter-join" id="11321387311381720459" order="2,0" cost="3.8987e+06" estimated-count="3449.92" io-cost="0/254322/97808.2/891865/195616" nw-cost="101/22048.4/13800/68871.2/27600" cpu-cost="0/509478/78279.8/509504/78279.8" dcpu-cost="0/628151/206262/2.03705e+06/412523" mem-cost="68383" dmem-cost="4169" cardinalities="(3449.92,3450),(22,22),(3449.92,3450),(719,719),(132,132),(719,719)">
            <plan:hash left="3" right="3" op="="/>
            <plan:scatter left="3" right="3" op="="/>
            <plan:triple-index permutation="PSO" dedup="true" id="7931408328268027612" order="5,3" cost="43611.4" estimated-count="719" io-cost="0/13.6561/6965.13/27.3121/13930.3" nw-cost="101/0/1438/101/2876" cpu-cost="0/0/2.876/0/2.876" dcpu-cost="0/0/6971.56/0/13943.1" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(0,0),(0,0),(719,719),(0,0),(719,719)">
              <plan:subject type="var" name="doc2" column-index="5"/>
              <plan:predicate type="iri">http://purl.org/dc/terms/references</plan:predicate>
              <plan:object type="var" name="bag2" column-index="3"/>
            </plan:triple-index>
            <plan:join type="scatter-join" id="4015102369977097707" order="2,0" cost="3.80351e+06" estimated-count="3449.92" io-cost="0/247344/97808.2/877907/195616" nw-cost="819/19791.4/13800/65894.2/27600" cpu-cost="0/497797/43793.8/497822/43793.8" dcpu-cost="0/621179/206262/2.0231e+06/412523" mem-cost="66226" dmem-cost="4169" cardinalities="(3449.92,3450),(22,22),(3449.92,3450),(719,719),(132,132)">
              <plan:hash left="2" right="2" op="="/>
              <plan:scatter left="2" right="2" op="="/>
              <plan:sparql-negation-join type="parallel-left-hash-negation-join" id="5066202202114205360" order="">
                <plan:hash left="2" right="2" op="="/>
                <plan:expr>
                  <plan:triple-index permutation="SOP" dedup="true" id="17480914105345610119" order="3,2,4" cost="1.20775e+06" estimated-count="3843.56" io-cost="0/9818.72/157896/19637.4/315792" nw-cost="819/0/11530.7/819/23061.3" cpu-cost="0/0/23.0613/0/23.0613" dcpu-cost="0/0/515141/0/1.03028e+06" mem-cost="0" dmem-cost="359.5" cardinalities="(0,0),(0,0),(3843.56,3843.56),(719,719),(132,132)">
                    <plan:subject type="var" name="bag2" column-index="3"/>
                    <plan:predicate type="var" name="member2" column-index="4"/>
                    <plan:object type="var" name="doc" column-index="2"/>
                  </plan:triple-index>
                </plan:expr>
                <plan:negation-expr>
                  <plan:join type="scatter-join" id="227554101235962368" order="8,2,9" cost="1.46352e+06" estimated-count="787.275" io-cost="0/137504/32501.6/288966/65003.1" nw-cost="820/13146.9/2373.49/28726.9/4746.98" cpu-cost="0/93213.2/7913.35/93216.1/7913.35" dcpu-cost="0/383401/106037/780746/212075" mem-cost="9352.68" dmem-cost="1797.5" cardinalities="(0,0),(0,0),(787.275,791.163),(0,0),(0,0),(0,0),(9,9),(147.273,360),(147.273,148),(132,132)">
                    <plan:hash left="8" right="8" op="="/>
                    <plan:scatter left="8" right="8" op="="/>
                    <plan:join type="scatter-join" id="15144684896004962306" order="6" cost="1.17235e+06" estimated-count="147.273" io-cost="0/114597/20886.5/243151/41772.9" nw-cost="820/11450.9/729/26301.9/1458" cpu-cost="0/82970.8/1869.74/82973.6/1869.74" dcpu-cost="0/301762/81639.5/617467/163279" mem-cost="8173.77" dmem-cost="1797.5" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(147.273,360),(147.273,719)">
                      <plan:hash left="7" right="7" op="="/>
                      <plan:scatter left="7" right="7" op="="/>
                      <plan:sparql-negation-join type="parallel-left-hash-negation-join" id="4383620871017239212" order="">
                        <plan:hash left="7" right="7" op="="/>
                        <plan:expr>
                          <plan:triple-index permutation="PSO" dedup="true" id="11656986642181609932" order="7,8" cost="51520.4" estimated-count="719" io-cost="0/13.6561/6965.13/27.3121/13930.3" nw-cost="820/0/1438/820/2876" cpu-cost="0/0/2.876/0/2.876" dcpu-cost="0/0/6971.56/0/13943.1" mem-cost="0" dmem-cost="359.5" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)">
                            <plan:subject type="var" name="doc3" column-index="7"/>
                            <plan:predicate type="iri">http://purl.org/dc/terms/references</plan:predicate>
                            <plan:object type="var" name="bag3" column-index="8"/>
                          </plan:triple-index>
                        </plan:expr>
                        <plan:negation-expr>
                          <plan:join type="scatter-join" id="10926748027835956268" order="12,7,13" cost="843250" estimated-count="1572.36" io-cost="0/44856/64783.5/89711.9/129567" nw-cost="820/5539/4730.94/10783/9461.89" cpu-cost="0/22582.7/15773.2/22582.7/15773.2" dcpu-cost="0/90403.3/211358/180807/422717" mem-cost="3399.77" dmem-cost="1438" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(1572.36,1576.98),(0,0),(0,0),(9,9),(294.136,719),(294.136,295),(132,132)">
                            <plan:hash left="12" right="12" op="="/>
                            <plan:scatter left="12" right="12" op="="/>
                            <plan:join type="scatter-join" id="13707673551397404012" order="10" cost="296858" estimated-count="294.136" io-cost="0/16838.5/23988.9/33677/47977.9" nw-cost="820/2978/1447/6775/2894" cpu-cost="0/11681.8/3734.26/11681.8/3734.26" dcpu-cost="0/6971.56/83431.7/13943.1/166863" mem-cost="2222.36" dmem-cost="1438" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(294.136,719),(294.136,719)">
                              <plan:hash left="11" right="11" op="="/>
                              <plan:scatter left="11" right="11" op="="/>
                              <plan:triple-index permutation="PSO" dedup="true" id="8948711193853171538" order="11,12" cost="51520.4" estimated-count="719" io-cost="0/13.6561/6965.13/27.3121/13930.3" nw-cost="820/0/1438/820/2876" cpu-cost="0/0/2.876/0/2.876" dcpu-cost="0/0/6971.56/0/13943.1" mem-cost="0" dmem-cost="359.5" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(719,719),(719,719)">
                                <plan:subject type="var" name="doc4" column-index="11"/>
                                <plan:predicate type="iri">http://purl.org/dc/terms/references</plan:predicate>
                                <plan:object type="var" name="bag4" column-index="12"/>
                              </plan:triple-index>
                              <plan:join type="sort-merge-join" id="3252209100068197117" order="10" cost="225303" estimated-count="294.136" io-cost="0/9859.68/23988.9/19719.4/47977.9" nw-cost="1539/1/1447/3079/2894" cpu-cost="0/0/794.024/0/794.024" dcpu-cost="0/0/83431.7/0/166863" mem-cost="65.3636" dmem-cost="1438" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(294.136,719)" left-num-sorted="1" right-num-sorted="1">
                                <plan:hash left="10" right="10" op="="/>
                                <plan:triple-index permutation="POS" dedup="true" id="15695241377375965958" order="10,11" cost="213284" estimated-count="719" io-cost="0/9832.37/23649.4/19664.7/47298.9" nw-cost="1539/0/1438/1539/2876" cpu-cost="0/0/2.876/0/2.876" dcpu-cost="0/0/82056.4/0/164113" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(22,22),(719,719)">
                                  <plan:subject type="var" name="doc4" column-index="11"/>
                                  <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                                  <plan:object type="var" name="class4" column-index="10"/>
                                </plan:triple-index>
                                <plan:triple-index permutation="POS" dedup="true" id="16444218689588893805" order="10" cost="19692.4" estimated-count="9" io-cost="0/27.3121/339.507/54.6243/679.014" nw-cost="1540/0/9/1540/18" cpu-cost="0/0/0.018/0/0.018" dcpu-cost="0/0/1375.34/0/2750.69" mem-cost="0" dmem-cost="719" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)">
                                  <plan:subject type="var" name="class4" column-index="10"/>
                                  <plan:predicate type="iri">http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:predicate>
                                  <plan:object type="iri">http://xmlns.com/foaf/0.1/Document</plan:object>
                                </plan:triple-index>
                              </plan:join>
                            </plan:join>
                            <plan:triple-index permutation="SOP" dedup="true" id="14687571943242625734" order="12,7,13" cost="504088" estimated-count="1576.98" io-cost="0/4028.54/64783.5/8057.08/129567" nw-cost="1114/0/4730.94/1114/9461.89" cpu-cost="0/0/9.46189/0/9.46189" dcpu-cost="0/0/211358/0/422717" mem-cost="0" dmem-cost="507" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(1576.98,1576.98),(0,0),(0,0),(0,0),(0,0),(295,295),(132,132)">
                              <plan:subject type="var" name="bag4" column-index="12"/>
                              <plan:predicate type="var" name="member4" column-index="13"/>
                              <plan:object type="var" name="doc3" column-index="7"/>
                            </plan:triple-index>
                          </plan:join>
                        </plan:negation-expr>
                        <plan:filters/>
                        <plan:ljfilters/>
                      </plan:sparql-negation-join>
                      <plan:join type="sort-merge-join" id="618707655800464518" order="6" cost="192782" estimated-count="147.273" io-cost="0/4957.15/20886.5/9914.31/41772.9" nw-cost="1180/1/729/2361/1458" cpu-cost="0/0/397.573/0/397.573" dcpu-cost="0/0/81639.5/0/163279" mem-cost="32.7273" dmem-cost="1079" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9),(147.273,360)" left-num-sorted="1" right-num-sorted="1">
                        <plan:hash left="6" right="6" op="="/>
                        <plan:triple-index permutation="POS" dedup="true" id="4430731591037745472" order="6,7" cost="183132" estimated-count="360" io-cost="0/4929.84/20547/9859.68/41093.9" nw-cost="1180/0/720/1180/1440" cpu-cost="0/0/1.44/0/1.44" dcpu-cost="0/0/80264.2/0/160528" mem-cost="0" dmem-cost="539.5" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(22,22),(360,360)">
                          <plan:subject type="var" name="doc3" column-index="7"/>
                          <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                          <plan:object type="var" name="class3" column-index="6"/>
                        </plan:triple-index>
                        <plan:triple-index permutation="POS" dedup="true" id="15384320503055655662" order="6" cost="15743.4" estimated-count="9" io-cost="0/27.3121/339.507/54.6243/679.014" nw-cost="1181/0/9/1181/18" cpu-cost="0/0/0.018/0/0.018" dcpu-cost="0/0/1375.34/0/2750.69" mem-cost="0" dmem-cost="539.5" cardinalities="(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(9,9)">
                          <plan:subject type="var" name="class3" column-index="6"/>
                          <plan:predicate type="iri">http://www.w3.org/2000/01/rdf-schema#subClassOf</plan:predicate>
                          <plan:object type="iri">http://xmlns.com/foaf/0.1/Document</plan:object>
                        </plan:triple-index>
                      </plan:join>
                    </plan:join>
                    <plan:triple-index permutation="SOP" dedup="true" id="2601927026440860714" order="8,2,9" cost="257387" estimated-count="791.163" io-cost="0/2021.1/32501.6/4042.2/65003.1" nw-cost="967/0/2373.49/967/4746.98" cpu-cost="0/0/4.74698/0/4.74698" dcpu-cost="0/0/106037/0/212075" mem-cost="0" dmem-cost="433.5" cardinalities="(0,0),(0,0),(791.163,791.163),(0,0),(0,0),(0,0),(0,0),(0,0),(148,148),(132,132)">
                      <plan:subject type="var" name="bag3" column-index="8"/>
                      <plan:predicate type="var" name="member3" column-index="9"/>
                      <plan:object type="var" name="doc" column-index="2"/>
                    </plan:triple-index>
                  </plan:join>
                </plan:negation-expr>
                <plan:filters/>
                <plan:ljfilters/>
              </plan:sparql-negation-join>
              <plan:join type="parallel-sort-merge-join" id="7073775004467457682" order="2,0" cost="872576" estimated-count="3450" io-cost="0/47127.1/97808.2/188508/195616" nw-cost="4270/0/13800/8540/27600" cpu-cost="0/100/9306.97/100/9306.97" dcpu-cost="0/0/206262/0/412523" mem-cost="102" dmem-cost="4169" cardinalities="(3450,3450),(22,22),(3450,3450)" left-num-sorted="1" right-num-sorted="1">
                <plan:hash left="2" right="2" op="="/>
                <plan:triple-index permutation="PSO" dedup="true" id="3411739879965787833" order="2,1" cost="442654" estimated-count="3450" io-cost="0/47127.1/47250.7/94254.2/94501.4" nw-cost="4270/0/6900/4270/13800" cpu-cost="0/0/13.8/0/13.8" dcpu-cost="0/0/95689.9/0/191380" mem-cost="0" dmem-cost="2084.5" cardinalities="(0,0),(22,22),(3450,3450)">
                  <plan:subject type="var" name="doc" column-index="2"/>
                  <plan:predicate type="iri">http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:predicate>
                  <plan:object type="var" name="class" column-index="1"/>
                </plan:triple-index>
                <plan:triple-index permutation="PSO" dedup="true" id="17594082170122312473" order="2,0" cost="469937" estimated-count="3450" io-cost="0/47127.1/50557.5/94254.2/101115" nw-cost="4270/0/6900/4270/13800" cpu-cost="0/0/13.8/0/13.8" dcpu-cost="0/0/110572/0/221143" mem-cost="0" dmem-cost="2084.5" cardinalities="(3450,3450),(0,0),(3450,3450)">
                  <plan:subject type="var" name="doc" column-index="2"/>
                  <plan:predicate type="iri">http://purl.org/dc/elements/1.1/title</plan:predicate>
                  <plan:object type="var" name="title" column-index="0"/>
                </plan:triple-index>
              </plan:join>
            </plan:join>
          </plan:join>
        </plan:join>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("sp2q11b_slow",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:limit id="16612486779206679276" order="1,0" cost="3.13633e+06" estimated-count="10" io-cost="0/23462.7/222663/46925.4/445325" nw-cost="101/13049.9/122308/13542.4/126005" cpu-cost="0/4029.5/38119.3/4029.5/38119.3" dcpu-cost="0/83639.8/796454/167280/1.59291e+06" mem-cost="7" dmem-cost="1" cardinalities="(10,46713),(10,67162),(10,103652),(10,51)">
      <plan:offset type="literal" datatype="http://www.w3.org/2001/XMLSchema#integer">50</plan:offset>
      <plan:limit type="literal" datatype="http://www.w3.org/2001/XMLSchema#integer">10</plan:limit>
      <plan:project id="10351476628770344503" order="1,0">
        <plan:column type="column-def" column="publication" column-number="0" column-index="0"/>
        <plan:column type="column-def" column="ee" column-number="1" column-index="1"/>
        <plan:column type="column-def" column="title" column-number="2" column-index="2"/>
        <plan:column type="column-def" column="yr" column-number="3" column-index="3"/>
        <plan:order-by num-sorted="1" id="13609777460957895741" order="1,0" cost="2.75015e+08" estimated-count="46713" io-cost="0/357.634/2.18042e+07/715.267/4.36083e+07" nw-cost="101/358.4/1.1977e+07/467.151/1.2339e+07" cpu-cost="0/73.9735/3.73282e+06/73.9735/3.73282e+06" dcpu-cost="0/994.089/7.79925e+07/1988.18/1.55985e+08" mem-cost="7" dmem-cost="1" cardinalities="(46713,46713),(46713,67162),(46713,103652),(51,51)">
          <plan:order-spec descending="false" nulls-first="false" type="var" name="ee" column-index="1"/>
          <plan:join type="nested-loop-join" id="4539225173600409475" order="1,0" cost="2.75015e+08" estimated-count="46713" io-cost="0/357.634/2.18042e+07/715.267/4.36083e+07" nw-cost="101/358.4/1.1977e+07/467.151/1.2339e+07" cpu-cost="0/73.9735/3.73282e+06/73.9735/3.73282e+06" dcpu-cost="0/994.089/7.79925e+07/1988.18/1.55985e+08" mem-cost="7" dmem-cost="1" cardinalities="(46713,46713),(46713,67162),(46713,103652),(51,51)">
            <plan:hash left="0" right="0" op="="/>
            <plan:scatter left="0" right="0" op="="/>
            <plan:join type="nested-loop-join" id="10118377768465638317" order="1,0" cost="1.62993e+08" estimated-count="46713" io-cost="0/49.8094/1.31036e+07/99.6188/2.62071e+07" nw-cost="101/104/7.11907e+06/207/7.38771e+06" cpu-cost="0/16.2473/1.55841e+06/16.2473/1.55841e+06" dcpu-cost="0/5.88854/4.61618e+07/11.7771/9.23236e+07" mem-cost="3" dmem-cost="0.5" cardinalities="(46713,46713),(46713,67162),(0,0),(51,51)">
              <plan:hash left="0" right="0" op="="/>
              <plan:scatter left="0" right="0" op="="/>
              <plan:triple-index permutation="POS" dedup="true" id="9630726869851566379" order="1,0" cost="3.50018e+06" estimated-count="67162" io-cost="0/13.6561/593791/27.3121/1.18758e+06" nw-cost="101/0/134324/101/268648" cpu-cost="0/0/268.648/0/268.648" dcpu-cost="0/0/395486/0/790972" mem-cost="0" dmem-cost="0" cardinalities="(67162,67162),(67162,67162)">
                <plan:subject type="var" name="publication" column-index="0"/>
                <plan:predicate type="iri">http://www.w3.org/2000/01/rdf-schema#seeAlso</plan:predicate>
                <plan:object type="var" name="ee" column-index="1"/>
              </plan:triple-index>
              <plan:triple-index permutation="PSO" dedup="true" id="13410281815583254680" order="0,3" cost="2457.64" estimated-count="1" io-cost="0/27.3121/158.951/54.6243/317.902" nw-cost="102/0/2/102/4" cpu-cost="0/0/0.004/0/0.004" dcpu-cost="0/0/681.432/0/1362.86" mem-cost="0" dmem-cost="0.5" cardinalities="(1,1),(0,0),(0,0),(1,1)">
                <plan:subject type="var" name="publication" column-index="0"/>
                <plan:predicate type="iri">http://purl.org/dc/terms/issued</plan:predicate>
                <plan:object type="var" name="yr" column-index="3"/>
              </plan:triple-index>
            </plan:join>
            <plan:triple-index permutation="PSO" dedup="true" id="3021390823359148260" order="0,2" cost="2457.64" estimated-count="1" io-cost="0/27.3121/158.951/54.6243/317.902" nw-cost="102/0/2/102/4" cpu-cost="0/0/0.004/0/0.004" dcpu-cost="0/0/681.432/0/1362.86" mem-cost="0" dmem-cost="0.5" cardinalities="(1,1),(0,0),(1,1)">
              <plan:subject type="var" name="publication" column-index="0"/>
              <plan:predicate type="iri">http://purl.org/dc/elements/1.1/title</plan:predicate>
              <plan:object type="var" name="title" column-index="2"/>
            </plan:triple-index>
          </plan:join>
        </plan:order-by>
      </plan:project>
    </plan:limit>
  </plan:select>
</plan:plan>
)
return (
  xdmp:set-response-content-type("text/html"),
  let $in := map:get($plans,xdmp:get-request-field("q"))
  return
    <html>
      <head>{ qputils:makeScripts($in) }</head>
      <body style="margin: 0"/>
    </html>
)

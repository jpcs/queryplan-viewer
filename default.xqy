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

let $in :=
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

let $in2 :=
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:exprs>
    <plan:select>
      <plan:project order="">
        <plan:column type="column-def" view="kostcs" column="StockSymbol" column-number="0" column-index="0" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="StockSymbol" column-number="1" column-index="1" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="StockName" column-number="2" column-index="2" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="StockName" column-number="3" column-index="3" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="Exchange" column-number="4" column-index="4" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="Exchange" column-number="5" column-index="5" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="IPO" column-number="6" column-index="6" static-type="INT"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="IPO" column-number="7" column-index="7" static-type="INT"/>
        <plan:column type="column-def" view="kostcs" column="Sector" column-number="8" column-index="8" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="Sector" column-number="9" column-index="9" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="Industry" column-number="10" column-index="10" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="Industry" column-number="11" column-index="11" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="SummaryLink" column-number="12" column-index="12" static-type="STRING"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="SummaryLink" column-number="13" column-index="13" static-type="STRING"/>
        <plan:column type="column-def" view="kostcs" column="LastSale" column-number="14" column-index="14" static-type="FLOAT"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="LastSale" column-number="15" column-index="15" static-type="FLOAT"/>
        <plan:column type="column-def" view="kostcs" column="MarketCap" column-number="16" column-index="16" static-type="FLOAT"/>
        <plan:column type="column-def" schema="stocksymbols" view="stocks" column="MarketCap" column-number="17" column-index="17" static-type="FLOAT"/>
        <plan:join type="parallel-hash-join" order="18" cost="938098" estimated-count="5985.04" io-cost="0/16214.6/16091.7/32675/32183.4" nw-cost="109/1895/1895/4008/3790" cpu-cost="0/21899.4/9773.59/21899.4/9773.59" dcpu-cost="0/14602.1/14602.1/29204.1/29204.1" mem-cost="4269" dmem-cost="0" cardinalities="379,379,378,378,2,2,50,50,24,24,118,118,0.01,0.01,375,375,357,357,379,379">
          <plan:hash left="9" right="8" op="="/>
          <plan:template-view type="row" iri="http://marklogic.com/view/stocksymbols/stocks" schemaID="11246009846319504898" viewID="7286972884307527749">
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.StockSymbol" columnID="7281670316650152845"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="StockSymbol" column-number="0" column-index="1" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.StockName" columnID="18442141837092117524"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="StockName" column-number="1" column-index="3" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.Exchange" columnID="14598120309610560517"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="Exchange" column-number="2" column-index="5" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.IPO" columnID="2137348434266738093"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="IPO" column-number="3" column-index="7" static-type="INT"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.Sector" columnID="3399021533266469262"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="Sector" column-number="4" column-index="9" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.Industry" columnID="1716443552742343124"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="Industry" column-number="5" column-index="11" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.SummaryLink" columnID="13509256363488380338"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="SummaryLink" column-number="6" column-index="13" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.LastSale" columnID="17425189323152294414"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="LastSale" column-number="7" column-index="15" static-type="FLOAT"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.MarketCap" columnID="8166922760392804108"/>
              <plan:name type="column-def" schema="stocksymbols" view="stocks" column="MarketCap" column-number="8" column-index="17" static-type="FLOAT"/>
            </plan:column>
            <plan:row type="column-def" schema="stocksymbols" view="stocks" column="rowid" column-number="9" column-index="19" hidden="true"/>
          </plan:template-view>
          <plan:template-view type="row" iri="http://marklogic.com/view/stocksymbols/stocks" schemaID="11246009846319504898" viewID="7286972884307527749">
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.StockSymbol" columnID="7281670316650152845"/>
              <plan:name type="column-def" view="kostcs" column="StockSymbol" column-number="0" column-index="0" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.StockName" columnID="18442141837092117524"/>
              <plan:name type="column-def" view="kostcs" column="StockName" column-number="1" column-index="2" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="false">
              <plan:id column="stocksymbols.stocks.Exchange" columnID="14598120309610560517"/>
              <plan:name type="column-def" view="kostcs" column="Exchange" column-number="2" column-index="4" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.IPO" columnID="2137348434266738093"/>
              <plan:name type="column-def" view="kostcs" column="IPO" column-number="3" column-index="6" static-type="INT"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.Sector" columnID="3399021533266469262"/>
              <plan:name type="column-def" view="kostcs" column="Sector" column-number="4" column-index="8" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.Industry" columnID="1716443552742343124"/>
              <plan:name type="column-def" view="kostcs" column="Industry" column-number="5" column-index="10" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.SummaryLink" columnID="13509256363488380338"/>
              <plan:name type="column-def" view="kostcs" column="SummaryLink" column-number="6" column-index="12" static-type="STRING"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.LastSale" columnID="17425189323152294414"/>
              <plan:name type="column-def" view="kostcs" column="LastSale" column-number="7" column-index="14" static-type="FLOAT"/>
            </plan:column>
            <plan:column nullable="true">
              <plan:id column="stocksymbols.stocks.MarketCap" columnID="8166922760392804108"/>
              <plan:name type="column-def" view="kostcs" column="MarketCap" column-number="8" column-index="16" static-type="FLOAT"/>
            </plan:column>
            <plan:row type="column-def" view="kostcs" column="rowid" column-number="9" column-index="18" hidden="true"/>
          </plan:template-view>
          <plan:filters>
            <plan:join-filter op="=">
              <plan:left type="column-def" view="kostcs" column="Sector" column-number="8" column-index="8"/>
              <plan:right type="column-def" schema="stocksymbols" view="stocks" column="Sector" column-number="9" column-index="9"/>
            </plan:join-filter>
          </plan:filters>
        </plan:join>
      </plan:project>
    </plan:select>
  </plan:exprs>
</plan:plan>

let $in3 :=
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

let $in4 :=
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
        <plan:order-by num-sorted="1" order="last(13),desc(last(4)),singletons(8,10)" cost="3.99956e+08" estimated-count="22547.4" io-cost="0/3.82502e+06/1.20812e+06/2.6193e+07/1.28918e+06" nw-cost="102/70654/14522.6/5.7107e+06/1.0311e+06" cpu-cost="0/235238/2.36993e+07/267712/2.36993e+07" dcpu-cost="0/416.246/68.1812/41132.1/4840.86" mem-cost="177296" dmem-cost="780.533" cardinalities="4460,4830,98,956,87,1496.58,3668,4829.76,71,98,26,87,1496.58,1609,3668">
          <plan:order-spec descending="false" nulls-first="false">
            <plan:graph-node type="var" name="fastballSpeed" column-index="13" static-type="NONE"/>
          </plan:order-spec>
          <plan:order-spec descending="true" nulls-first="false">
            <plan:graph-node type="var" name="pitcherLabel" column-index="4" static-type="NONE"/>
          </plan:order-spec>
          <plan:join join-type="bloom-join" order="last(13),singletons(8,10)" cost="3.7627e+08" estimated-count="22547.4" io-cost="0/3.82427e+06/1.20887e+06/2.61922e+07/1.28998e+06" nw-cost="102/70644.9/14531.6/5.71005e+06/1.03175e+06" cpu-cost="0/220500/54625.2/252974/54625.2" dcpu-cost="0/416.204/68.2236/41129.1/4843.87" mem-cost="177072" dmem-cost="780.533" cardinalities="4460,4830,98,956,87,1496.58,3668,4829.76,71,98,26,87,1496.58,1609,3668">
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
              <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="9,singletons(10)" cost="202638" estimated-count="196" io-cost="0/55.2645/42.457/3923.78/3014.45" nw-cost="102/0/392/510/27832" cpu-cost="0/0/223.832/0/223.832" dcpu-cost="0/0/2.76056/0/196" mem-cost="0" dmem-cost="0" cardinalities="0,0,0,0,0,0,0,0,0,98,26">
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
                      <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://marklogic.com/stress/semantics/baseball/types/DominicanSummerLeague</plan:value>
                    </plan:literal>
                  </plan:right-expr>
                </plan:join-filter>
              </plan:triple-index>
              <plan:join join-type="bloom-join" order="last(13),singletons(8)" cost="3.75887e+08" estimated-count="11273.7" io-cost="0/3.82417e+06/1.20887e+06/2.61852e+07/1.28998e+06" nw-cost="357/69895.9/14531.6/5.68171e+06/1.03175e+06" cpu-cost="0/219688/32077.7/252162/32077.7" dcpu-cost="0/413.443/68.2236/40933.1/4843.87" mem-cost="176424" dmem-cost="780.533" cardinalities="4460,4830,98,956,87,1496.58,3668,4829.76,71,98,0,87,1496.58,1609,3668">
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
                  <plan:join join-type="scatter-join" order="9,7" cost="5.19836e+06" estimated-count="4829.76" io-cost="0/6154.53/124.149/143153/8814.56" nw-cost="357/395/9659.52/16696/685826" cpu-cost="0/307.916/5515.59/307.916/5515.59" dcpu-cost="0/1.38028/68.0248/98/4829.76" mem-cost="294" dmem-cost="17.0667" cardinalities="0,0,98,0,0,0,0,4829.76,0,98">
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
                      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="9,2" cost="201934" estimated-count="98" io-cost="0/73.6861/4238.69/5231.71/7128.63" nw-cost="357/0/196/1785/13916" cpu-cost="0/0/13.916/0/13.916" dcpu-cost="0/0/1.38028/0/98" mem-cost="0" dmem-cost="17.0667" cardinalities="0,0,98,0,0,0,0,0,0,98">
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
                      <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="9,7" cost="4.86355e+06" estimated-count="4829.76" io-cost="0/1842.15/124.149/130793/8814.56" nw-cost="199/0/9659.52/995/685826" cpu-cost="0/0/685.826/0/685.826" dcpu-cost="0/0/68.0248/0/4829.76" mem-cost="0" dmem-cost="6.53333" cardinalities="0,0,0,0,0,0,0,4829.76,0,98">
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
                    </plan:elems>
                  </plan:join>
                  <plan:join join-type="parallel-hash-join" order="last(13),singletons(8)" cost="3.67109e+08" estimated-count="11274.3" io-cost="0/3.8179e+06/1.20887e+06/2.60333e+07/1.28998e+06" nw-cost="613/59228.4/14531.6/4.97919e+06/1.03175e+06" cpu-cost="0/194545/20804/227019/20804" dcpu-cost="0/344.038/68.2236/36005.3/4843.87" mem-cost="161678" dmem-cost="780.533" cardinalities="4460,4830,0,956,87,1496.58,3668,4830,71,0,0,87,1496.58,1609,3668">
                    <plan:join-info>
                      <plan:hash left="7" right="7" operator="="/>
                    </plan:join-info>
                    <plan:elems>
                      <plan:sparql-left-join type="parallel-right-hash-join" dplan="true" order="7,3,singletons(8)" cost="3.25185e+08" estimated-count="11274.3" io-cost="0/3.81334e+06/4552.02/2.52192e+07/323194" nw-cost="613/35288.3/23940.1/2.40646e+06/1.69975e+06" cpu-cost="0/54448.4/38528.4/64232.6/38528.4" dcpu-cost="0/175.446/168.592/15537.2/11970" mem-cost="42858" dmem-cost="746.4" cardinalities="4460,4830,0,956,87,1496.58,0,4830,71,0,0,87,1496.58">
                        <plan:join-info>
                          <plan:hash left="7" right="7" operator="="/>
                        </plan:join-info>
                        <plan:expr>
                          <plan:join join-type="scatter-join" order="7,3,singletons(8)" cost="2.96747e+08" estimated-count="11274.3" io-cost="0/3.81334e+06/4552.02/2.29361e+07/323194" nw-cost="614/35287.3/23940.1/1.84972e+06/1.69975e+06" cpu-cost="0/46865.5/27254.1/46865.5/27254.1" dcpu-cost="0/175.446/168.592/12456.7/11970" mem-cost="30099.3" dmem-cost="678.133" cardinalities="4460,4830,0,956,0,0,0,4830,71">
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
                              <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="7,singletons(8)" cost="4.28197e+07" estimated-count="7626.66" io-cost="0/92.1076/3.63297e+06/6539.64/3.80959e+06" nw-cost="614/0/15253.3/3070/1.08299e+06" cpu-cost="0/0/8709.65/0/8709.65" dcpu-cost="0/0/107.418/0/7626.66" mem-cost="0" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,0,4830,71">
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
                              <plan:join join-type="parallel-sort-merge-join" order="7,3" cost="2.11154e+08" estimated-count="7140.05" io-cost="0/180282/4552.02/1.912e+07/323194" nw-cost="5187/14847/23940.1/763665/1.69975e+06" cpu-cost="0/15275.9/15979.8/15275.9/15979.8" dcpu-cost="0/68.0282/168.592/4830/11970" mem-cost="10016" dmem-cost="678.133" cardinalities="4460,4830,0,956,0,0,0,4830" left-num-sorted="1" right-num-sorted="1">
                                <plan:join-info>
                                  <plan:hash left="7" right="7" operator="="/>
                                </plan:join-info>
                                <plan:elems>
                                  <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,0" cost="6.86936e+07" estimated-count="4830" io-cost="0/89012.8/2256.89/6.31991e+06/160239" nw-cost="5187/0/9660/25935/685860" cpu-cost="0/0/685.86/0/685.86" dcpu-cost="0/0/68.0282/0/4830" mem-cost="0" dmem-cost="339.067" cardinalities="4460,0,0,0,0,0,0,4830">
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
                                  <plan:join join-type="bloom-join" order="7,3" cost="1.43395e+08" estimated-count="7140.05" io-cost="0/180282/2295.14/1.28001e+07/162955" nw-cost="5187/14847/14280.1/737730/1.01389e+06" cpu-cost="0/15175.9/8153.94/15175.9/8153.94" dcpu-cost="0/68.0282/100.564/4830/7140.05" mem-cost="9916" dmem-cost="339.067" cardinalities="0,4830,0,956,0,0,0,4830">
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
                                      <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,1" cost="6.86936e+07" estimated-count="4830" io-cost="0/89012.8/2256.89/6.31991e+06/160239" nw-cost="5187/0/9660/25935/685860" cpu-cost="0/0/685.86/0/685.86" dcpu-cost="0/0/68.0282/0/4830" mem-cost="0" dmem-cost="339.067" cardinalities="0,4830,0,0,0,0,0,4830">
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
                                      <plan:triple-index permutation="SOP" dedup="true" descending="false" is-column="false" order="7,3" cost="7.03721e+07" estimated-count="7140.05" io-cost="0/89012.8/2295.14/6.31991e+06/162955" nw-cost="5187/0/14280.1/25935/1.01389e+06" cpu-cost="0/0/1013.89/0/1013.89" dcpu-cost="0/0/100.564/0/7140.05" mem-cost="0" dmem-cost="339.067" cardinalities="0,0,0,956,0,0,0,4830">
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
                                    </plan:elems>
                                  </plan:join>
                                </plan:elems>
                              </plan:join>
                            </plan:elems>
                          </plan:join>
                        </plan:expr>
                        <plan:optional>
                          <plan:join join-type="bloom-join" order="12,5" cost="4.89927e+07" estimated-count="1496.58" io-cost="0/2.15741e+06/2620.15/2.27578e+06/7352.63" nw-cost="613/6657.75/2994/344162/212574" cpu-cost="0/6578.47/3205.74/6578.47/3205.74" dcpu-cost="0/22.304/21.0845/1583.58/1497" mem-cost="5175.75" dmem-cost="68.2667" cardinalities="0,0,0,0,87,1496.58,0,1492.3,0,0,0,87,1496.58">
                            <plan:join-info>
                              <plan:hash left="11" right="11" operator="="/>
                              <plan:filters>
                                <plan:join-filter op="bloom">
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
                              <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="11,4" cost="127658" estimated-count="87" io-cost="0/36.843/4.59563/2615.86/326.29" nw-cost="613/0/174/3065/12354" cpu-cost="0/0/12.354/0/12.354" dcpu-cost="0/0/1.22535/0/87" mem-cost="0" dmem-cost="34.1333" cardinalities="0,0,0,0,87,0,0,0,0,0,0,87">
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
                              <plan:join join-type="bloom-join" order="12,5" cost="4.87986e+07" estimated-count="1496.58" io-cost="0/2.15737e+06/2620.15/2.27283e+06/7352.63" nw-cost="869/5614.75/2994/328743/212574" cpu-cost="0/6305.11/1709.16/6305.11/1709.16" dcpu-cost="0/21.0787/21.0845/1496.58/1497" mem-cost="4745.75" dmem-cost="68.2667" cardinalities="0,0,0,0,0,1496.58,0,1492.3,0,0,0,87,1496.58">
                                <plan:join-info>
                                  <plan:hash left="12" right="12" operator="="/>
                                  <plan:filters>
                                    <plan:join-filter op="bloom">
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
                                  <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="11,7,12" cost="2.38338e+07" estimated-count="1496.58" io-cost="0/110.529/2.15719e+06/7847.57/2.25975e+06" nw-cost="869/0/4489.75/4345/318773" cpu-cost="0/0/318.773/0/318.773" dcpu-cost="0/0/21.0787/0/1496.58" mem-cost="0" dmem-cost="51.2" cardinalities="0,0,0,0,0,0,0,1492.3,0,0,0,87,1496.58">
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
                                  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="12,5" cost="1.24923e+06" estimated-count="1497" io-cost="0/73.6861/2620.15/5231.71/7352.63" nw-cost="1125/0/2994/5625/212574" cpu-cost="0/0/212.574/0/212.574" dcpu-cost="0/0/21.0845/0/1497" mem-cost="0" dmem-cost="68.2667" cardinalities="0,0,0,0,0,1497,0,0,0,0,0,0,1497">
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
                                </plan:elems>
                              </plan:join>
                            </plan:elems>
                          </plan:join>
                        </plan:optional>
                        <plan:filters/>
                        <plan:ljfilters/>
                      </plan:sparql-left-join>
                      <plan:sparql-left-join type="left-bloom-join" dplan="true" order="last(13)" cost="3.59398e+07" estimated-count="4830" io-cost="0/437565/1.20887e+06/490874/1.28998e+06" nw-cost="614/12779/14531.6/872986/1.03175e+06" cpu-cost="0/22689.8/9529.75/22689.8/9529.75" dcpu-cost="0/119.69/68.2236/8498/4843.87" mem-cost="17252" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,3668,4830,0,0,0,0,0,1609,3668">
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
                          <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="7" cost="6.38335e+06" estimated-count="4830" io-cost="0/110.529/437241/7847.57/467827" nw-cost="614/0/4830/3070/342930" cpu-cost="0/0/342.93/0/342.93" dcpu-cost="0/0/68.0282/0/4830" mem-cost="0" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,0,4830">
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
                        </plan:expr>
                        <plan:optional>
                          <plan:join join-type="hash-join" order="13,7,14" cost="2.32557e+07" estimated-count="3668" io-cost="0/214.087/1.20887e+06/15200.2/1.28998e+06" nw-cost="613/7336/14531.6/526986/1.03175e+06" cpu-cost="0/7856.86/4699.75/7856.86/4699.75" dcpu-cost="0/51.662/68.2236/3668/4843.87" mem-cost="7336" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,3668,3668,0,0,0,0,0,1609,3668">
                            <plan:join-info>
                              <plan:hash left="14" right="14" operator="="/>
                            </plan:join-info>
                            <plan:elems>
                              <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="14,6" cost="2.74393e+06" estimated-count="3668" io-cost="0/36.843/103.558/2615.86/7352.63" nw-cost="613/0/7336/3065/520856" cpu-cost="0/0/520.856/0/520.856" dcpu-cost="0/0/51.662/0/3668" mem-cost="0" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,3668,0,0,0,0,0,0,0,3668">
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
                              <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="13,7,14" cost="1.7819e+07" estimated-count="4843.87" io-cost="0/73.6861/1.20887e+06/5231.71/1.28998e+06" nw-cost="613/0/14531.6/3065/1.03175e+06" cpu-cost="0/0/1031.75/0/1031.75" dcpu-cost="0/0/68.2236/0/4843.87" mem-cost="0" dmem-cost="34.1333" cardinalities="0,0,0,0,0,0,0,4830,0,0,0,0,0,1609,4843.87">
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
                    </plan:elems>
                  </plan:join>
                </plan:elems>
              </plan:join>
            </plan:elems>
          </plan:join>
        </plan:order-by>
      </plan:expr>
    </plan:project>
  </plan:select>
</plan:plan>

return (
  xdmp:set-response-content-type("text/html"),
  qputils:makeHTML($in4)
)
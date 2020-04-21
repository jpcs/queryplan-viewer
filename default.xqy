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

let $q1 :=
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

return (
  xdmp:set-response-content-type("text/html"),
  qputils:makeHTML($q1)
)

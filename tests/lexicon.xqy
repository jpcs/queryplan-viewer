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

module namespace t = "http://marklogic.com/optic/qputils/lexicon";
declare default function namespace "http://marklogic.com/optic/qputils/lexicon";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function lexicon()
{
map:entry("name","lexicon1")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:filter is-empty="false">
    <plan:filters>
      <plan:value-compare op="GT">
	<plan:expr>
	  <plan:column-ref schema="" view="" column="freq" column-index="1" column-number="0" in-match="false">
	    <plan:qname name="freq" uri="" prfx="" ltrl="freq"/>
	  </plan:column-ref>
	</plan:expr>
	<plan:term>
	  <plan:literal>
	    <plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">1</plan:value>
	  </plan:literal>
	</plan:term>
      </plan:value-compare>
    </plan:filters>
    <plan:group type="hash-group" order="">
      <plan:order-spec descending="false" nulls-first="false" type="column-ref" column="id" column-number="0" column-index="0"/>
      <plan:aggregate-bind>
	<plan:aggregate-function name="sample" distinct="false">
	  <plan:column-ref schema="" view="" column="id" column-index="0" column-number="0" in-match="false">
	    <plan:qname name="id" uri="" prfx="" ltrl="id"/>
	  </plan:column-ref>
	</plan:aggregate-function>
	<plan:column type="column-def" column="id" column-number="0" column-index="0"/>
      </plan:aggregate-bind>
      <plan:aggregate-bind>
	<plan:aggregate-function name="sample" distinct="false">
	  <plan:column-ref schema="" view="" column="id" column-index="0" column-number="0" in-match="false">
	    <plan:qname name="id" uri="" prfx="" ltrl="id"/>
	  </plan:column-ref>
	</plan:aggregate-function>
	<plan:column type="column-def" column="id" column-number="0" column-index="0"/>
      </plan:aggregate-bind>
      <plan:aggregate-bind>
	<plan:aggregate-function name="count" distinct="false"/>
	<plan:column type="column-def" column="freq" column-number="0" column-index="1"/>
      </plan:aggregate-bind>
      <plan:lexicon-index permutation="unknown" order="">
	<plan:range-index-val key="12468471373648044180" scalar-type="int" nullable="false"/>
	<plan:value type="column-def" column="id" column-number="0" column-index="0"/>
	<plan:fragment type="column-def" column="__docid" column-number="1" column-index="1" hidden="true"/>
      </plan:lexicon-index>
    </plan:group>
  </plan:filter>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "condition":"freq gt 1", "_name":"filter", "is-empty":"false"}',
'{"order":"", "_id":"N_1", "type":"hash-group", "_parent":"N", "order-spec":"0 (id)", "_name":"group", "aggregate":["sample(id) as id", "sample(id) as id", "count(*) as freq"]}',
'{"value":"0 (id)", "fragment":"1 (__docid)", "order":"", "_id":"N_1_1", "_parent":"N_1", "permutation":"unknown", "key":"12468471373648044180", "_name":"lexicon-index", "scalar-type":"int"}'
))
};

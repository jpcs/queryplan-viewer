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

declare %qputils:test function colorForTimeAndMemory()
{
map:entry("name","huge_colored")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:project id="2305728392451283042" order=",singletons(30,33)">
    <plan:column type="column-def" column="customercategory" column-number="0" column-index="0" static-type="STRING"/>
    <plan:column type="column-def" column="activecustomer" column-number="1" column-index="1" static-type="STRING"/>
    <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
    <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
    <plan:column type="column-def" column="initials" column-number="4" column-index="4" static-type="STRING"/>
    <plan:column type="column-def" column="firstname" column-number="5" column-index="5" static-type="STRING"/>
    <plan:column type="column-def" column="lastname" column-number="6" column-index="6" static-type="STRING"/>
    <plan:column type="column-def" column="lastnameprefix" column-number="7" column-index="7" static-type="STRING"/>
    <plan:column type="column-def" column="chamberofcommercenumber" column-number="8" column-index="8" static-type="STRING"/>
    <plan:column type="column-def" column="organisationname" column-number="9" column-index="9" static-type="STRING"/>
    <plan:column type="column-def" column="home_addresstype" column-number="10" column-index="10" static-type="STRING"/>
    <plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
    <plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
    <plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
    <plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
    <plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
    <plan:column type="column-def" column="home_pobox" column-number="16" column-index="16" static-type="STRING"/>
    <plan:column type="column-def" column="home_country" column-number="17" column-index="17" static-type="STRING"/>
    <plan:column type="column-def" column="home_otheraddressdata" column-number="18" column-index="18" static-type="STRING"/>
    <plan:column type="column-def" column="postal_addresstype" column-number="19" column-index="19" static-type="STRING"/>
    <plan:column type="column-def" column="postal_city" column-number="20" column-index="20" static-type="STRING"/>
    <plan:column type="column-def" column="postal_street" column-number="21" column-index="21" static-type="STRING"/>
    <plan:column type="column-def" column="postal_housenumber" column-number="22" column-index="22" static-type="STRING"/>
    <plan:column type="column-def" column="postal_housenumbersuffix" column-number="23" column-index="23" static-type="STRING"/>
    <plan:column type="column-def" column="postal_postalcode" column-number="24" column-index="24" static-type="STRING"/>
    <plan:column type="column-def" column="postal_pobox" column-number="25" column-index="25" static-type="STRING"/>
    <plan:column type="column-def" column="postal_country" column-number="26" column-index="26" static-type="STRING"/>
    <plan:column type="column-def" column="postal_otheraddressdata" column-number="27" column-index="27" static-type="STRING"/>
    <plan:column type="column-def" column="product_grp_id" column-number="28" column-index="28" static-type="STRING"/>
    <plan:column type="column-def" column="productnumber" column-number="29" column-index="29" static-type="STRING"/>
    <plan:column type="column-def" column="contractparty" column-number="30" column-index="30" static-type="STRING"/>
    <plan:column type="column-def" column="status" column-number="31" column-index="31" static-type="STRING"/>
    <plan:column type="column-def" column="last_modified_date" column-number="32" column-index="32"/>
    <plan:column type="column-def" column="authstatus" column-number="33" column-index="33" static-type="STRING"/>
    <plan:column type="column-def" column="start_date" column-number="34" column-index="34" static-type="DATE"/>
    <plan:column type="column-def" column="end_date" column-number="35" column-index="35" static-type="DATE"/>
    <plan:project id="13307884631834271045" order=",singletons(30,33)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
      <plan:column type="column-def" column="customercategory" column-number="0" column-index="0" static-type="STRING"/>
      <plan:column type="column-def" column="activecustomer" column-number="1" column-index="1" static-type="STRING"/>
      <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
      <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
      <plan:column type="column-def" column="initials" column-number="4" column-index="4" static-type="STRING"/>
      <plan:column type="column-def" column="firstname" column-number="5" column-index="5" static-type="STRING"/>
      <plan:column type="column-def" column="lastname" column-number="6" column-index="6" static-type="STRING"/>
      <plan:column type="column-def" column="lastnameprefix" column-number="7" column-index="7" static-type="STRING"/>
      <plan:column type="column-def" column="chamberofcommercenumber" column-number="8" column-index="8" static-type="STRING"/>
      <plan:column type="column-def" column="organisationname" column-number="9" column-index="9" static-type="STRING"/>
      <plan:column type="column-def" column="home_addresstype" column-number="10" column-index="10" static-type="STRING"/>
      <plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
      <plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
      <plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
      <plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
      <plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
      <plan:column type="column-def" column="home_pobox" column-number="16" column-index="16" static-type="STRING"/>
      <plan:column type="column-def" column="home_country" column-number="17" column-index="17" static-type="STRING"/>
      <plan:column type="column-def" column="home_otheraddressdata" column-number="18" column-index="18" static-type="STRING"/>
      <plan:column type="column-def" column="postal_addresstype" column-number="19" column-index="19" static-type="STRING"/>
      <plan:column type="column-def" column="postal_city" column-number="20" column-index="20" static-type="STRING"/>
      <plan:column type="column-def" column="postal_street" column-number="21" column-index="21" static-type="STRING"/>
      <plan:column type="column-def" column="postal_housenumber" column-number="22" column-index="22" static-type="STRING"/>
      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="23" column-index="23" static-type="STRING"/>
      <plan:column type="column-def" column="postal_postalcode" column-number="24" column-index="24" static-type="STRING"/>
      <plan:column type="column-def" column="postal_pobox" column-number="25" column-index="25" static-type="STRING"/>
      <plan:column type="column-def" column="postal_country" column-number="26" column-index="26" static-type="STRING"/>
      <plan:column type="column-def" column="postal_otheraddressdata" column-number="27" column-index="27" static-type="STRING"/>
      <plan:column type="column-def" column="product_grp_id" column-number="28" column-index="28" static-type="STRING"/>
      <plan:column type="column-def" column="productnumber" column-number="29" column-index="29" static-type="STRING"/>
      <plan:column type="column-def" column="contractparty" column-number="30" column-index="30" static-type="STRING"/>
      <plan:column type="column-def" column="status" column-number="31" column-index="31" static-type="STRING"/>
      <plan:column type="column-def" column="last_modified_date" column-number="32" column-index="32"/>
      <plan:column type="column-def" column="authstatus" column-number="33" column-index="33" static-type="STRING"/>
      <plan:column type="column-def" column="start_date" column-number="34" column-index="34" static-type="DATE"/>
      <plan:column type="column-def" column="end_date" column-number="35" column-index="35" static-type="DATE"/>
      <plan:bind>
	<plan:column type="column-def" column="end_date" column-number="0" column-index="35"/>
	<plan:expr>
	  <plan:column-ref schema="" view="" column="einddatum_product" column-index="37" column-number="32" in-match="false">
	    <plan:qname name="einddatum_product" uri="" prfx="" ltrl="einddatum_product"/>
	  </plan:column-ref>
	</plan:expr>
	<plan:bind>
	  <plan:column type="column-def" column="start_date" column-number="0" column-index="34"/>
	  <plan:expr>
	    <plan:column-ref schema="" view="" column="ingangsdatum_product" column-index="36" column-number="31" in-match="false">
	      <plan:qname name="ingangsdatum_product" uri="" prfx="" ltrl="ingangsdatum_product"/>
	    </plan:column-ref>
	  </plan:expr>
	  <plan:bind>
	    <plan:column type="column-def" column="authstatus" column-number="0" column-index="33"/>
	    <plan:expr>
	      <plan:literal>
		<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">N</plan:value>
	      </plan:literal>
	    </plan:expr>
	    <plan:bind>
	      <plan:column type="column-def" column="last_modified_date" column-number="0" column-index="32"/>
	      <plan:expr>
		<plan:if>
		  <plan:value-compare op="GT">
		    <plan:expr>
		      <plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
			<plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="max">
			  <plan:expr-sequence>
			    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			      <plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
				<plan:column-ref schema="" view="" column="ingangsdatum_product" column-index="36" column-number="31" in-match="false">
				  <plan:qname name="ingangsdatum_product" uri="" prfx="" ltrl="ingangsdatum_product"/>
				</plan:column-ref>
			      </plan:cast>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			      </plan:literal>
			    </plan:builtin>
			    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			      <plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
				<plan:column-ref schema="" view="" column="gewijzigd_op_klant" column-index="38" column-number="33" in-match="false">
				  <plan:qname name="gewijzigd_op_klant" uri="" prfx="" ltrl="gewijzigd_op_klant"/>
				</plan:column-ref>
			      </plan:cast>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			      </plan:literal>
			    </plan:builtin>
			    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			      <plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
				<plan:column-ref schema="" view="" column="gewijzigd_op_persoon" column-index="39" column-number="34" in-match="false">
				  <plan:qname name="gewijzigd_op_persoon" uri="" prfx="" ltrl="gewijzigd_op_persoon"/>
				</plan:column-ref>
			      </plan:cast>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			      </plan:literal>
			    </plan:builtin>
			  </plan:expr-sequence>
			</plan:builtin>
		      </plan:cast>
		    </plan:expr>
		    <plan:term>
		      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="current-dateTime"/>
		    </plan:term>
		  </plan:value-compare>
		  <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="current-dateTime"/>
		  <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="max">
		    <plan:expr-sequence>
		      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			<plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
			  <plan:column-ref schema="" view="" column="ingangsdatum_product" column-index="36" column-number="31" in-match="false">
			    <plan:qname name="ingangsdatum_product" uri="" prfx="" ltrl="ingangsdatum_product"/>
			  </plan:column-ref>
			</plan:cast>
			<plan:literal>
			  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			</plan:literal>
		      </plan:builtin>
		      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			<plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
			  <plan:column-ref schema="" view="" column="gewijzigd_op_klant" column-index="38" column-number="33" in-match="false">
			    <plan:qname name="gewijzigd_op_klant" uri="" prfx="" ltrl="gewijzigd_op_klant"/>
			  </plan:column-ref>
			</plan:cast>
			<plan:literal>
			  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			</plan:literal>
		      </plan:builtin>
		      <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="format-dateTime">
			<plan:cast seq-type="Q{{http://www.w3.org/2001/XMLSchema}}dateTime" occur-type="*">
			  <plan:column-ref schema="" view="" column="gewijzigd_op_persoon" column-index="39" column-number="34" in-match="false">
			    <plan:qname name="gewijzigd_op_persoon" uri="" prfx="" ltrl="gewijzigd_op_persoon"/>
			  </plan:column-ref>
			</plan:cast>
			<plan:literal>
			  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]</plan:value>
			</plan:literal>
		      </plan:builtin>
		    </plan:expr-sequence>
		  </plan:builtin>
		</plan:if>
	      </plan:expr>
	      <plan:bind>
		<plan:column type="column-def" column="contractparty" column-number="0" column-index="30"/>
		<plan:expr>
		  <plan:literal>
		    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">AAHG</plan:value>
		  </plan:literal>
		</plan:expr>
		<plan:sparql-union type="concat-union" id="14000555563090560528" order="" count="910048" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
		  <plan:project id="13307884631834271045" order=",singletons(0,1,3,8,9,10,16,18,19,20,21,22,23,24,25,26,27,28,39)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
		    <plan:column type="column-def" column="activecustomer" column-number="0" column-index="1" static-type="STRING"/>
		    <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
		    <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
		    <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
		    <plan:column type="column-def" column="initials" column-number="4" column-index="4" static-type="STRING"/>
		    <plan:column type="column-def" column="firstname" column-number="5" column-index="5" static-type="STRING"/>
		    <plan:column type="column-def" column="lastname" column-number="6" column-index="6" static-type="STRING"/>
		    <plan:column type="column-def" column="lastnameprefix" column-number="7" column-index="7" static-type="STRING"/>
		    <plan:column type="column-def" column="chamberofcommercenumber" column-number="8" column-index="8" static-type="STRING"/>
		    <plan:column type="column-def" column="organisationname" column-number="9" column-index="9" static-type="STRING"/>
		    <plan:column type="column-def" column="home_addresstype" column-number="10" column-index="10" static-type="STRING"/>
		    <plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
		    <plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
		    <plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
		    <plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
		    <plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
		    <plan:column type="column-def" column="home_pobox" column-number="16" column-index="16" static-type="STRING"/>
		    <plan:column type="column-def" column="home_country" column-number="17" column-index="17" static-type="STRING"/>
		    <plan:column type="column-def" column="home_otheraddressdata" column-number="18" column-index="18" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_addresstype" column-number="19" column-index="19" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_city" column-number="20" column-index="20" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_street" column-number="21" column-index="21" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_housenumber" column-number="22" column-index="22" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_housenumbersuffix" column-number="23" column-index="23" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_postalcode" column-number="24" column-index="24" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_pobox" column-number="25" column-index="25" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_country" column-number="26" column-index="26" static-type="STRING"/>
		    <plan:column type="column-def" column="postal_otheraddressdata" column-number="27" column-index="27" static-type="STRING"/>
		    <plan:column type="column-def" column="product_grp_id" column-number="28" column-index="28" static-type="STRING"/>
		    <plan:column type="column-def" column="productnumber" column-number="29" column-index="29" static-type="STRING"/>
		    <plan:column type="column-def" column="status" column-number="30" column-index="31" static-type="STRING"/>
		    <plan:column type="column-def" column="ingangsdatum_product" column-number="31" column-index="36" static-type="DATE"/>
		    <plan:column type="column-def" column="einddatum_product" column-number="32" column-index="37" static-type="DATE"/>
		    <plan:column type="column-def" column="gewijzigd_op_klant" column-number="33" column-index="38" static-type="DATE"/>
		    <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="34" column-index="39" static-type="DATE"/>
		    <plan:join type="scatter-join" sparql-semantics="false" id="7346248796880058282" order=",singletons(0,1,3,8,9,10,16,18,19,20,21,22,23,24,25,26,27,28,39)" count="0" local-time="6018" remote-time="0" local-max-memory="468976" remote-max-memory="0">
		      <plan:hash left="10" right="10" op="="/>
		      <plan:hash left="39" right="39" op="="/>
		      <plan:hash left="40" right="43" op="="/>
		      <plan:scatter left="10" right="10" op="="/>
		      <plan:scatter left="43" right="40" op="="/>
		      <plan:project id="13307884631834271045" order=",singletons(0,3,8,10,20,21,22,23,24,26,39)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
			<plan:column type="column-def" view="I" column="lening_id" column-number="1" column-index="40" static-type="STRING"/>
			<plan:column type="column-def" column="customercategory" column-number="2" column-index="0" static-type="STRING"/>
			<plan:column type="column-def" column="dateofbirth" column-number="3" column-index="2" static-type="DATE"/>
			<plan:column type="column-def" column="citizenservicenumber" column-number="4" column-index="3" static-type="STRING"/>
			<plan:column type="column-def" column="chamberofcommercenumber" column-number="5" column-index="8" static-type="STRING"/>
			<plan:column type="column-def" column="home_addresstype" column-number="6" column-index="10" static-type="STRING"/>
			<plan:column type="column-def" column="initials" column-number="7" column-index="4" static-type="STRING"/>
			<plan:column type="column-def" column="firstname" column-number="8" column-index="5" static-type="STRING"/>
			<plan:column type="column-def" column="lastname" column-number="9" column-index="6" static-type="STRING"/>
			<plan:column type="column-def" column="lastnameprefix" column-number="10" column-index="7" static-type="STRING"/>
			<plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
			<plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
			<plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
			<plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
			<plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
			<plan:column type="column-def" column="home_country" column-number="16" column-index="17" static-type="STRING"/>
			<plan:column type="column-def" column="postal_city" column-number="17" column-index="20" static-type="STRING"/>
			<plan:column type="column-def" column="postal_street" column-number="18" column-index="21" static-type="STRING"/>
			<plan:column type="column-def" column="postal_housenumber" column-number="19" column-index="22" static-type="STRING"/>
			<plan:column type="column-def" column="postal_housenumbersuffix" column-number="20" column-index="23" static-type="STRING"/>
			<plan:column type="column-def" column="postal_postalcode" column-number="21" column-index="24" static-type="STRING"/>
			<plan:column type="column-def" column="postal_country" column-number="22" column-index="26" static-type="STRING"/>
			<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="23" column-index="39" static-type="STRING"/>
			<plan:bind>
			  <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
			  <plan:expr>
			    <plan:literal>
			      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			    </plan:literal>
			  </plan:expr>
			  <plan:bind>
			    <plan:column type="column-def" column="postal_country" column-number="0" column-index="26"/>
			    <plan:expr>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			      </plan:literal>
			    </plan:expr>
			    <plan:bind>
			      <plan:column type="column-def" column="postal_postalcode" column-number="0" column-index="24"/>
			      <plan:expr>
				<plan:literal>
				  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				</plan:literal>
			      </plan:expr>
			      <plan:bind>
				<plan:column type="column-def" column="postal_housenumbersuffix" column-number="0" column-index="23"/>
				<plan:expr>
				  <plan:literal>
				    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				  </plan:literal>
				</plan:expr>
				<plan:bind>
				  <plan:column type="column-def" column="postal_housenumber" column-number="0" column-index="22"/>
				  <plan:expr>
				    <plan:literal>
				      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				    </plan:literal>
				  </plan:expr>
				  <plan:bind>
				    <plan:column type="column-def" column="postal_street" column-number="0" column-index="21"/>
				    <plan:expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				      </plan:literal>
				    </plan:expr>
				    <plan:bind>
				      <plan:column type="column-def" column="postal_city" column-number="0" column-index="20"/>
				      <plan:expr>
					<plan:literal>
					  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
					</plan:literal>
				      </plan:expr>
				      <plan:bind>
					<plan:column type="column-def" column="home_country" column-number="0" column-index="17"/>
					<plan:expr>
					  <plan:column-ref schema="" view="I" column="landcode" column-index="51" column-number="17" in-match="false">
					    <plan:qname name="ubo.landcode" uri="" prfx="" ltrl="ubo.landcode"/>
					  </plan:column-ref>
					</plan:expr>
					<plan:bind>
					  <plan:column type="column-def" column="home_postalcode" column-number="0" column-index="15"/>
					  <plan:expr>
					    <plan:column-ref schema="" view="I" column="postcode" column-index="49" column-number="14" in-match="false">
					      <plan:qname name="ubo.postcode" uri="" prfx="" ltrl="ubo.postcode"/>
					    </plan:column-ref>
					  </plan:expr>
					  <plan:bind>
					    <plan:column type="column-def" column="home_housenumbersuffix" column-number="0" column-index="14"/>
					    <plan:expr>
					      <plan:column-ref schema="" view="I" column="huisnummertoevoeging" column-index="48" column-number="13" in-match="false">
						<plan:qname name="ubo.huisnummertoevoeging" uri="" prfx="" ltrl="ubo.huisnummertoevoeging"/>
					      </plan:column-ref>
					    </plan:expr>
					    <plan:bind>
					      <plan:column type="column-def" column="home_housenumber" column-number="0" column-index="13"/>
					      <plan:expr>
						<plan:column-ref schema="" view="I" column="huisnummer" column-index="47" column-number="12" in-match="false">
						  <plan:qname name="ubo.huisnummer" uri="" prfx="" ltrl="ubo.huisnummer"/>
						</plan:column-ref>
					      </plan:expr>
					      <plan:bind>
						<plan:column type="column-def" column="home_street" column-number="0" column-index="12"/>
						<plan:expr>
						  <plan:column-ref schema="" view="I" column="straat" column-index="46" column-number="11" in-match="false">
						    <plan:qname name="ubo.straat" uri="" prfx="" ltrl="ubo.straat"/>
						  </plan:column-ref>
						</plan:expr>
						<plan:bind>
						  <plan:column type="column-def" column="home_city" column-number="0" column-index="11"/>
						  <plan:expr>
						    <plan:column-ref schema="" view="I" column="plaats" column-index="50" column-number="15" in-match="false">
						      <plan:qname name="ubo.plaats" uri="" prfx="" ltrl="ubo.plaats"/>
						    </plan:column-ref>
						  </plan:expr>
						  <plan:bind>
						    <plan:column type="column-def" column="lastnameprefix" column-number="0" column-index="7"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="I" column="tussenvoegsel" column-index="43" column-number="7" in-match="false">
							<plan:qname name="ubo.tussenvoegsel" uri="" prfx="" ltrl="ubo.tussenvoegsel"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:bind>
						      <plan:column type="column-def" column="lastname" column-number="0" column-index="6"/>
						      <plan:expr>
							<plan:column-ref schema="" view="I" column="achternaam" column-index="44" column-number="8" in-match="false">
							  <plan:qname name="ubo.achternaam" uri="" prfx="" ltrl="ubo.achternaam"/>
							</plan:column-ref>
						      </plan:expr>
						      <plan:bind>
							<plan:column type="column-def" column="firstname" column-number="0" column-index="5"/>
							<plan:expr>
							  <plan:column-ref schema="" view="I" column="voornaam" column-index="42" column-number="6" in-match="false">
							    <plan:qname name="ubo.voornaam" uri="" prfx="" ltrl="ubo.voornaam"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:bind>
							  <plan:column type="column-def" column="initials" column-number="0" column-index="4"/>
							  <plan:expr>
							    <plan:column-ref schema="" view="I" column="voorletters" column-index="41" column-number="5" in-match="false">
							      <plan:qname name="ubo.voorletters" uri="" prfx="" ltrl="ubo.voorletters"/>
							    </plan:column-ref>
							  </plan:expr>
							  <plan:bind>
							    <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
							    <plan:expr>
							      <plan:literal>
								<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Home</plan:value>
							      </plan:literal>
							    </plan:expr>
							    <plan:bind>
							      <plan:column type="column-def" column="chamberofcommercenumber" column-number="0" column-index="8"/>
							      <plan:expr>
								<plan:literal>
								  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
								</plan:literal>
							      </plan:expr>
							      <plan:bind>
								<plan:column type="column-def" column="citizenservicenumber" column-number="0" column-index="3"/>
								<plan:expr>
								  <plan:literal>
								    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
								  </plan:literal>
								</plan:expr>
								<plan:bind>
								  <plan:column type="column-def" column="dateofbirth" column-number="0" column-index="2"/>
								  <plan:expr>
								    <plan:column-ref schema="" view="I" column="geboortedatum" column-index="45" column-number="9" in-match="false">
								      <plan:qname name="ubo.geboortedatum" uri="" prfx="" ltrl="ubo.geboortedatum"/>
								    </plan:column-ref>
								  </plan:expr>
								  <plan:bind>
								    <plan:column type="column-def" column="customercategory" column-number="0" column-index="0"/>
								    <plan:expr>
								      <plan:literal>
									<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">accountHolderNaturalPersons</plan:value>
								      </plan:literal>
								    </plan:expr>
								    <plan:template-view type="row" iri="http://marklogic.com/view/Schema1/I" schemaID="12461121416219388462" viewID="11684200299354735792" allNullable="false" id="9203952158901207756" order="52" count="0" local-time="933033" remote-time="5182511" local-max-memory="573440" remote-max-memory="1748480">
								      <plan:column nullable="false">
									<plan:id column="Schema1.I.lening_id" columnID="2966524859815095648"/>
									<plan:name type="column-def" view="I" column="lening_id" column-number="2" column-index="40" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.voorletters" columnID="16165600059968926090"/>
									<plan:name type="column-def" view="I" column="voorletters" column-number="5" column-index="41" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.voornaam" columnID="8019350625126083498"/>
									<plan:name type="column-def" view="I" column="voornaam" column-number="6" column-index="42" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.tussenvoegsel" columnID="14032622570367319304"/>
									<plan:name type="column-def" view="I" column="tussenvoegsel" column-number="7" column-index="43" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.achternaam" columnID="2441695523477587991"/>
									<plan:name type="column-def" view="I" column="achternaam" column-number="8" column-index="44" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.geboortedatum" columnID="7485359332402357678"/>
									<plan:name type="column-def" view="I" column="geboortedatum" column-number="9" column-index="45" static-type="DATE"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.straat" columnID="3170481093300724649"/>
									<plan:name type="column-def" view="I" column="straat" column-number="11" column-index="46" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.huisnummer" columnID="6392960087360484099"/>
									<plan:name type="column-def" view="I" column="huisnummer" column-number="12" column-index="47" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.huisnummertoevoeging" columnID="7807448149954018922"/>
									<plan:name type="column-def" view="I" column="huisnummertoevoeging" column-number="13" column-index="48" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.postcode" columnID="11475035587280973175"/>
									<plan:name type="column-def" view="I" column="postcode" column-number="14" column-index="49" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.plaats" columnID="13712712567157588862"/>
									<plan:name type="column-def" view="I" column="plaats" column-number="15" column-index="50" static-type="STRING"/>
								      </plan:column>
								      <plan:column nullable="true">
									<plan:id column="Schema1.I.landcode" columnID="9512305824462169608"/>
									<plan:name type="column-def" view="I" column="landcode" column-number="17" column-index="51" static-type="STRING"/>
								      </plan:column>
								      <plan:row type="column-def" view="I" column="rowid" column-number="18" column-index="52" hidden="true"/>
								    </plan:template-view>
								  </plan:bind>
								</plan:bind>
							      </plan:bind>
							    </plan:bind>
							  </plan:bind>
							</plan:bind>
						      </plan:bind>
						    </plan:bind>
						  </plan:bind>
						</plan:bind>
					      </plan:bind>
					    </plan:bind>
					  </plan:bind>
					</plan:bind>
				      </plan:bind>
				    </plan:bind>
				  </plan:bind>
				</plan:bind>
			      </plan:bind>
			    </plan:bind>
			  </plan:bind>
			</plan:bind>
		      </plan:project>
		      <plan:bind>
			<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
			<plan:expr>
			  <plan:column-ref schema="" view="B" column="ingangsdatum" column-index="44" column-number="4" in-match="false">
			    <plan:qname name="B.ingangsdatum" uri="" prfx="" ltrl="B.ingangsdatum"/>
			  </plan:column-ref>
			</plan:expr>
			<plan:bind>
			  <plan:column type="column-def" column="gewijzigd_op_klant" column-number="0" column-index="38"/>
			  <plan:expr>
			    <plan:column-ref schema="" view="B" column="ingangsdatum" column-index="44" column-number="4" in-match="false">
			      <plan:qname name="B.ingangsdatum" uri="" prfx="" ltrl="B.ingangsdatum"/>
			    </plan:column-ref>
			  </plan:expr>
			  <plan:bind>
			    <plan:column type="column-def" column="einddatum_product" column-number="0" column-index="37"/>
			    <plan:expr>
			      <plan:column-ref schema="" view="B" column="einddatum" column-index="45" column-number="5" in-match="false">
				<plan:qname name="B.einddatum" uri="" prfx="" ltrl="B.einddatum"/>
			      </plan:column-ref>
			    </plan:expr>
			    <plan:bind>
			      <plan:column type="column-def" column="ingangsdatum_product" column-number="0" column-index="36"/>
			      <plan:expr>
				<plan:column-ref schema="" view="B" column="ingangsdatum" column-index="44" column-number="4" in-match="false">
				  <plan:qname name="B.ingangsdatum" uri="" prfx="" ltrl="B.ingangsdatum"/>
				</plan:column-ref>
			      </plan:expr>
			      <plan:bind>
				<plan:column type="column-def" column="status" column-number="0" column-index="31"/>
				<plan:expr>
				  <plan:if>
				    <plan:value-compare op="EQ">
				      <plan:expr>
					<plan:column-ref schema="" view="B" column="in_beheer" column-index="42" column-number="2" in-match="false">
					  <plan:qname name="B.in_beheer" uri="" prfx="" ltrl="B.in_beheer"/>
					</plan:column-ref>
				      </plan:expr>
				      <plan:term>
					<plan:literal>
					  <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
					</plan:literal>
				      </plan:term>
				    </plan:value-compare>
				    <plan:literal>
				      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">active</plan:value>
				    </plan:literal>
				    <plan:literal>
				      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">inactive</plan:value>
				    </plan:literal>
				  </plan:if>
				</plan:expr>
				<plan:bind>
				  <plan:column type="column-def" column="productnumber" column-number="0" column-index="29"/>
				  <plan:expr>
				    <plan:column-ref schema="" view="B" column="leningnummer" column-index="41" column-number="1" in-match="false">
				      <plan:qname name="B.leningnummer" uri="" prfx="" ltrl="B.leningnummer"/>
				    </plan:column-ref>
				  </plan:expr>
				  <plan:bind>
				    <plan:column type="column-def" column="postal_pobox" column-number="0" column-index="25"/>
				    <plan:expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				      </plan:literal>
				    </plan:expr>
				    <plan:bind>
				      <plan:column type="column-def" column="postal_otheraddressdata" column-number="0" column-index="27"/>
				      <plan:expr>
					<plan:literal>
					  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
					</plan:literal>
				      </plan:expr>
				      <plan:bind>
					<plan:column type="column-def" column="organisationname" column-number="0" column-index="9"/>
					<plan:expr>
					  <plan:literal>
					    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
					  </plan:literal>
					</plan:expr>
					<plan:bind>
					  <plan:column type="column-def" column="product_grp_id" column-number="0" column-index="28"/>
					  <plan:expr>
					    <plan:literal>
					      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">67</plan:value>
					    </plan:literal>
					  </plan:expr>
					  <plan:bind>
					    <plan:column type="column-def" column="postal_addresstype" column-number="0" column-index="19"/>
					    <plan:expr>
					      <plan:literal>
						<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Postal</plan:value>
					      </plan:literal>
					    </plan:expr>
					    <plan:bind>
					      <plan:column type="column-def" column="home_pobox" column-number="0" column-index="16"/>
					      <plan:expr>
						<plan:literal>
						  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
						</plan:literal>
					      </plan:expr>
					      <plan:bind>
						<plan:column type="column-def" column="home_otheraddressdata" column-number="0" column-index="18"/>
						<plan:expr>
						  <plan:literal>
						    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
						  </plan:literal>
						</plan:expr>
						<plan:bind>
						  <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
						  <plan:expr>
						    <plan:literal>
						      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Home</plan:value>
						    </plan:literal>
						  </plan:expr>
						  <plan:bind>
						    <plan:column type="column-def" column="activecustomer" column-number="0" column-index="1"/>
						    <plan:expr>
						      <plan:literal>
							<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">TRUE</plan:value>
						      </plan:literal>
						    </plan:expr>
						    <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						      <plan:column type="column-def" view="B" column="leningnummer" column-number="1" column-index="41" static-type="STRING"/>
						      <plan:column type="column-def" view="B" column="in_beheer" column-number="2" column-index="42" static-type="BOOLEAN"/>
						      <plan:column type="column-def" view="B" column="id" column-number="3" column-index="43" static-type="STRING"/>
						      <plan:column type="column-def" view="B" column="ingangsdatum" column-number="4" column-index="44" static-type="DATE"/>
						      <plan:column type="column-def" view="B" column="einddatum" column-number="5" column-index="45" static-type="DATE"/>
						      <plan:join type="scatter-join" id="12660193031065545662" order="47" count="0" local-time="9188" remote-time="12191" local-max-memory="2228224" remote-max-memory="2501344">
							<plan:hash left="47" right="47" op="="/>
							<plan:scatter left="47" right="47" op="="/>
							<plan:triple-index permutation="POS" is-column="true" id="5679212315079075389" order="43,47" count="191" local-time="38642615" remote-time="101628479" local-max-memory="0" remote-max-memory="0">
							  <plan:subject type="column-def" view="B" column="rowid" column-number="40" column-index="47" hidden="true"/>
							  <plan:predicate type="literal" column="Schema1.B.id" columnID="6142613893342910547"/>
							  <plan:object type="column-def" view="B" column="id" column-number="0" column-index="43" static-type="STRING"/>
							</plan:triple-index>
							<plan:template-view type="row" iri="http://marklogic.com/view/Schema1/B" schemaID="12461121416219388462" viewID="7074164397311574073" allNullable="false" id="3888528629393418833" order="47" count="191" local-time="1349366" remote-time="2784222" local-max-memory="0" remote-max-memory="0">
							  <plan:column nullable="true">
							    <plan:id column="Schema1.B.leningnummer" columnID="5465285548767446769"/>
							    <plan:name type="column-def" view="B" column="leningnummer" column-number="3" column-index="41" static-type="STRING"/>
							  </plan:column>
							  <plan:column nullable="true">
							    <plan:id column="Schema1.B.in_beheer" columnID="10171238417996290683"/>
							    <plan:name type="column-def" view="B" column="in_beheer" column-number="9" column-index="42" static-type="BOOLEAN"/>
							  </plan:column>
							  <plan:column nullable="true">
							    <plan:id column="Schema1.B.ingangsdatum" columnID="8786401861066113030"/>
							    <plan:name type="column-def" view="B" column="ingangsdatum" column-number="14" column-index="44" static-type="DATE"/>
							  </plan:column>
							  <plan:column nullable="true">
							    <plan:id column="Schema1.B.einddatum" columnID="10655396818707748631"/>
							    <plan:name type="column-def" view="B" column="einddatum" column-number="15" column-index="45" static-type="DATE"/>
							  </plan:column>
							  <plan:column nullable="false">
							    <plan:id column="Schema1.B.bronsysteem_nummer" columnID="6109371631239283656"/>
							    <plan:name type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="46" static-type="STRING"/>
							  </plan:column>
							  <plan:row type="column-def" view="B" column="rowid" column-number="40" column-index="47" hidden="true"/>
							  <plan:join-filter op="=">
							    <plan:left type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="46"/>
							    <plan:right-expr>
							      <plan:literal>
								<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
							      </plan:literal>
							    </plan:right-expr>
							  </plan:join-filter>
							</plan:template-view>
						      </plan:join>
						    </plan:project>
						  </plan:bind>
						</plan:bind>
					      </plan:bind>
					    </plan:bind>
					  </plan:bind>
					</plan:bind>
				      </plan:bind>
				    </plan:bind>
				  </plan:bind>
				</plan:bind>
			      </plan:bind>
			    </plan:bind>
			  </plan:bind>
			</plan:bind>
		      </plan:bind>
		      <plan:filters>
			<plan:join-filter op="=">
			  <plan:left type="column-def" view="B" column="id" column-number="3" column-index="43"/>
			  <plan:right type="column-def" view="I" column="lening_id" column-number="1" column-index="40"/>
			</plan:join-filter>
		      </plan:filters>
		    </plan:join>
		  </plan:project>
		  <plan:sparql-union type="concat-union" id="9830160080497550964" order="" count="910048" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
		    <plan:project id="13307884631834271045" order=",singletons(0,2,3,4,5,6,7,8,10,16,18,19,25,27,28)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
		      <plan:column type="column-def" column="activecustomer" column-number="0" column-index="1" static-type="STRING"/>
		      <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
		      <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="STRING"/>
		      <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
		      <plan:column type="column-def" column="initials" column-number="4" column-index="4" static-type="STRING"/>
		      <plan:column type="column-def" column="firstname" column-number="5" column-index="5" static-type="STRING"/>
		      <plan:column type="column-def" column="lastname" column-number="6" column-index="6" static-type="STRING"/>
		      <plan:column type="column-def" column="lastnameprefix" column-number="7" column-index="7" static-type="STRING"/>
		      <plan:column type="column-def" column="chamberofcommercenumber" column-number="8" column-index="8" static-type="STRING"/>
		      <plan:column type="column-def" column="organisationname" column-number="9" column-index="9" static-type="STRING"/>
		      <plan:column type="column-def" column="home_addresstype" column-number="10" column-index="10" static-type="STRING"/>
		      <plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
		      <plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
		      <plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
		      <plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
		      <plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
		      <plan:column type="column-def" column="home_pobox" column-number="16" column-index="16" static-type="STRING"/>
		      <plan:column type="column-def" column="home_country" column-number="17" column-index="17" static-type="STRING"/>
		      <plan:column type="column-def" column="home_otheraddressdata" column-number="18" column-index="18" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_addresstype" column-number="19" column-index="19" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_city" column-number="20" column-index="20" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_street" column-number="21" column-index="21" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_housenumber" column-number="22" column-index="22" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="23" column-index="23" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_postalcode" column-number="24" column-index="24" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_pobox" column-number="25" column-index="25" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_country" column-number="26" column-index="26" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_otheraddressdata" column-number="27" column-index="27" static-type="STRING"/>
		      <plan:column type="column-def" column="product_grp_id" column-number="28" column-index="28" static-type="INTEGER"/>
		      <plan:column type="column-def" column="productnumber" column-number="29" column-index="29" static-type="STRING"/>
		      <plan:column type="column-def" column="status" column-number="30" column-index="31" static-type="STRING"/>
		      <plan:column type="column-def" column="ingangsdatum_product" column-number="31" column-index="36" static-type="DATE"/>
		      <plan:column type="column-def" column="einddatum_product" column-number="32" column-index="37" static-type="DATE"/>
		      <plan:column type="column-def" column="gewijzigd_op_klant" column-number="33" column-index="38" static-type="DATE"/>
		      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="34" column-index="39" static-type="DATE"/>
		      <plan:bind>
			<plan:column type="column-def" column="productnumber" column-number="0" column-index="29"/>
			<plan:expr>
			  <plan:column-ref schema="" view="D" column="nummer" column-index="43" column-number="1" in-match="false">
			    <plan:qname name="klantproduct.nummer" uri="" prfx="" ltrl="klantproduct.nummer"/>
			  </plan:column-ref>
			</plan:expr>
			<plan:bind>
			  <plan:column type="column-def" column="postal_otheraddressdata" column-number="0" column-index="27"/>
			  <plan:expr>
			    <plan:literal>
			      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			    </plan:literal>
			  </plan:expr>
			  <plan:bind>
			    <plan:column type="column-def" column="postal_pobox" column-number="0" column-index="25"/>
			    <plan:expr>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			      </plan:literal>
			    </plan:expr>
			    <plan:bind>
			      <plan:column type="column-def" column="postal_addresstype" column-number="0" column-index="19"/>
			      <plan:expr>
				<plan:literal>
				  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Postal</plan:value>
				</plan:literal>
			      </plan:expr>
			      <plan:bind>
				<plan:column type="column-def" column="home_otheraddressdata" column-number="0" column-index="18"/>
				<plan:expr>
				  <plan:literal>
				    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				  </plan:literal>
				</plan:expr>
				<plan:bind>
				  <plan:column type="column-def" column="home_pobox" column-number="0" column-index="16"/>
				  <plan:expr>
				    <plan:literal>
				      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				    </plan:literal>
				  </plan:expr>
				  <plan:bind>
				    <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
				    <plan:expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">RegisteredOffice</plan:value>
				      </plan:literal>
				    </plan:expr>
				    <plan:bind>
				      <plan:column type="column-def" column="organisationname" column-number="0" column-index="9"/>
				      <plan:expr>
					<plan:column-ref schema="" view="C" column="naam" column-index="41" column-number="8" in-match="false">
					  <plan:qname name="klant.naam" uri="" prfx="" ltrl="klant.naam"/>
					</plan:column-ref>
				      </plan:expr>
				      <plan:bind>
					<plan:column type="column-def" column="activecustomer" column-number="0" column-index="1"/>
					<plan:expr>
					  <plan:if>
					    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="exists">
					      <plan:column-ref schema="" view="A" column="klant_id" column-index="44" column-number="0" in-match="false">
						<plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
					      </plan:column-ref>
					    </plan:builtin>
					    <plan:literal>
					      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">TRUE</plan:value>
					    </plan:literal>
					    <plan:literal>
					      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">FALSE</plan:value>
					    </plan:literal>
					  </plan:if>
					</plan:expr>
					<plan:right-join type="right-hash-join" sparql-semantics="false" id="13845204666095840599" order=",singletons(0,2,3,4,5,6,7,8,10,28)" count="910048" local-time="43574427" remote-time="0" local-max-memory="155766944" remote-max-memory="0">
					  <plan:hash left="44" right="42" op="="/>
					  <plan:group type="hash-group" id="7341342517891107704" order="" count="954542" local-time="31971817" remote-time="0" local-max-memory="0" remote-max-memory="0">
					    <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="A" column="klant_id" column-number="0" column-index="0"/>
					    <plan:aggregate-bind>
					      <plan:aggregate-function name="sample" distinct="false">
						<plan:column-ref schema="" view="A" column="klant_id" column-index="0" column-number="0" in-match="false">
						  <plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
						</plan:column-ref>
					      </plan:aggregate-function>
					      <plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="44"/>
					    </plan:aggregate-bind>
					    <plan:sparql-union type="parallel-concat-union" id="15000683629475751348" order="" count="483985" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
					      <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						<plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="100413395116921395" order="2" count="0" local-time="1703887" remote-time="4826070" local-max-memory="3211664" remote-max-memory="10332672">
						  <plan:column nullable="false">
						    <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
						    <plan:name type="column-def" view="A" column="type" column-number="1" column-index="1" static-type="STRING"/>
						  </plan:column>
						  <plan:column nullable="false">
						    <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
						    <plan:name type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						  </plan:column>
						  <plan:row type="column-def" view="A" column="rowid" column-number="3" column-index="2" hidden="true"/>
						  <plan:join-filter op="=">
						    <plan:left type="column-def" view="A" column="type" column-number="1" column-index="1"/>
						    <plan:right-expr>
						      <plan:literal>
							<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Verzekering</plan:value>
						      </plan:literal>
						    </plan:right-expr>
						  </plan:join-filter>
						</plan:template-view>
					      </plan:project>
					      <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="6955365578722491788" order="2,0" count="328736" local-time="1649518" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						  <plan:hash left="5" right="2" op="="/>
						  <plan:hash left="4" right="0" op="="/>
						  <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						    <plan:column type="column-def" view="B" column="klant_id" column-number="0" column-index="4" static-type="STRING"/>
						    <plan:column type="column-def" view="B" column="leningnummer" column-number="1" column-index="5" static-type="STRING"/>
						    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/B" schemaID="12461121416219388462" viewID="7074164397311574073" allNullable="false" id="6750339825475223703" order="8" count="328902" local-time="14549834" remote-time="29345726" local-max-memory="688128" remote-max-memory="1474560">
						      <plan:column nullable="true">
							<plan:id column="Schema1.B.leningnummer" columnID="5465285548767446769"/>
							<plan:name type="column-def" view="B" column="leningnummer" column-number="3" column-index="5" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.B.klant_id" columnID="16042433715186211662"/>
							<plan:name type="column-def" view="B" column="klant_id" column-number="12" column-index="4" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="false">
							<plan:id column="Schema1.B.bronsysteem_nummer" columnID="6109371631239283656"/>
							<plan:name type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="6" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="false">
							<plan:id column="Schema1.B.in_beheer" columnID="10171238417996290683"/>
							<plan:name type="column-def" view="B" column="in_beheer" column-number="9" column-index="7" static-type="BOOLEAN"/>
						      </plan:column>
						      <plan:row type="column-def" view="B" column="rowid" column-number="40" column-index="8" hidden="true"/>
						      <plan:join-filter op="=">
							<plan:left type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="6"/>
							<plan:right-expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
							  </plan:literal>
							</plan:right-expr>
						      </plan:join-filter>
						      <plan:join-filter op="=">
							<plan:left type="column-def" view="B" column="in_beheer" column-number="2" column-index="7"/>
							<plan:right-expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
							  </plan:literal>
							</plan:right-expr>
						      </plan:join-filter>
						    </plan:template-view>
						  </plan:project>
						  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="2894569725455290269" order="3" count="1089278" local-time="26176156" remote-time="69126289" local-max-memory="161144168" remote-max-memory="105172880">
						    <plan:column nullable="false">
						      <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
						      <plan:name type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="true">
						      <plan:id column="Schema1.D.nummer" columnID="8207673227962541851"/>
						      <plan:name type="column-def" view="A" column="nummer" column-number="2" column-index="2" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="false">
						      <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
						      <plan:name type="column-def" view="A" column="type" column-number="1" column-index="1" static-type="STRING"/>
						    </plan:column>
						    <plan:row type="column-def" view="A" column="rowid" column-number="3" column-index="3" hidden="true"/>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="type" column-number="1" column-index="1"/>
						      <plan:right-expr>
							<plan:literal>
							  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Lening</plan:value>
							</plan:literal>
						      </plan:right-expr>
						    </plan:join-filter>
						  </plan:template-view>
						  <plan:filters>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="nummer" column-number="2" column-index="2"/>
						      <plan:right type="column-def" view="B" column="leningnummer" column-number="1" column-index="5"/>
						    </plan:join-filter>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="klant_id" column-number="0" column-index="0"/>
						      <plan:right type="column-def" view="B" column="klant_id" column-number="0" column-index="4"/>
						    </plan:join-filter>
						  </plan:filters>
						</plan:join>
					      </plan:project>
					    </plan:sparql-union>
					  </plan:group>
					  <plan:join type="hash-join" sparql-semantics="false" id="13411038638405633753" order=",singletons(0,2,3,4,5,6,7,8,10,28)" count="107403" local-time="4732059" remote-time="0" local-max-memory="42821216" remote-max-memory="0">
					    <plan:hash left="42" right="40" op="="/>
					    <plan:project id="13307884631834271045" order="43,42,singletons(28)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
					      <plan:column type="column-def" view="D" column="klant_id" column-number="0" column-index="42" static-type="STRING"/>
					      <plan:column type="column-def" view="D" column="nummer" column-number="1" column-index="43" static-type="STRING"/>
					      <plan:column type="column-def" column="ingangsdatum_product" column-number="2" column-index="36" static-type="DATE"/>
					      <plan:column type="column-def" column="einddatum_product" column-number="3" column-index="37" static-type="DATE"/>
					      <plan:column type="column-def" column="status" column-number="4" column-index="31" static-type="STRING"/>
					      <plan:column type="column-def" column="product_grp_id" column-number="5" column-index="28" static-type="INTEGER"/>
					      <plan:bind>
						<plan:column type="column-def" column="product_grp_id" column-number="0" column-index="28"/>
						<plan:expr>
						  <plan:literal>
						    <plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">67</plan:value>
						  </plan:literal>
						</plan:expr>
						<plan:bind>
						  <plan:column type="column-def" column="status" column-number="0" column-index="31"/>
						  <plan:expr>
						    <plan:if>
						      <plan:value-compare op="EQ">
							<plan:expr>
							  <plan:column-ref schema="" view="F" column="in_beheer" column-index="48" column-number="2" in-match="false">
							    <plan:qname name="lening-zakelijk.in_beheer" uri="" prfx="" ltrl="lening-zakelijk.in_beheer"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:term>
							  <plan:literal>
							    <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
							  </plan:literal>
							</plan:term>
						      </plan:value-compare>
						      <plan:literal>
							<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">active</plan:value>
						      </plan:literal>
						      <plan:literal>
							<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">inactive</plan:value>
						      </plan:literal>
						    </plan:if>
						  </plan:expr>
						  <plan:bind>
						    <plan:column type="column-def" column="einddatum_product" column-number="0" column-index="37"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="F" column="einddatum" column-index="50" column-number="4" in-match="false">
							<plan:qname name="lening-zakelijk.einddatum" uri="" prfx="" ltrl="lening-zakelijk.einddatum"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:bind>
						      <plan:column type="column-def" column="ingangsdatum_product" column-number="0" column-index="36"/>
						      <plan:expr>
							<plan:column-ref schema="" view="F" column="ingangsdatum" column-index="49" column-number="3" in-match="false">
							  <plan:qname name="lening-zakelijk.ingangsdatum" uri="" prfx="" ltrl="lening-zakelijk.ingangsdatum"/>
							</plan:column-ref>
						      </plan:expr>
						      <plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="14188322958503153950" order="43,42" count="107507" local-time="1271732" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
							<plan:hash left="47" right="43" op="="/>
							<plan:hash left="46" right="42" op="="/>
							<plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
							  <plan:column type="column-def" view="F" column="klant_id" column-number="0" column-index="46" static-type="STRING"/>
							  <plan:column type="column-def" view="F" column="leningnummer" column-number="1" column-index="47" static-type="STRING"/>
							  <plan:column type="column-def" view="F" column="in_beheer" column-number="2" column-index="48" static-type="BOOLEAN"/>
							  <plan:column type="column-def" view="F" column="ingangsdatum" column-number="3" column-index="49" static-type="DATE"/>
							  <plan:column type="column-def" view="F" column="einddatum" column-number="4" column-index="50" static-type="DATE"/>
							  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/B" schemaID="12461121416219388462" viewID="7074164397311574073" allNullable="false" id="13308553206001220040" order="53" count="140145" local-time="22045944" remote-time="51530314" local-max-memory="1373184" remote-max-memory="2293424">
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.leningnummer" columnID="5465285548767446769"/>
							      <plan:name type="column-def" view="F" column="leningnummer" column-number="3" column-index="47" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.in_beheer" columnID="10171238417996290683"/>
							      <plan:name type="column-def" view="F" column="in_beheer" column-number="9" column-index="48" static-type="BOOLEAN"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.klant_id" columnID="16042433715186211662"/>
							      <plan:name type="column-def" view="F" column="klant_id" column-number="12" column-index="46" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.ingangsdatum" columnID="8786401861066113030"/>
							      <plan:name type="column-def" view="F" column="ingangsdatum" column-number="14" column-index="49" static-type="DATE"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.einddatum" columnID="10655396818707748631"/>
							      <plan:name type="column-def" view="F" column="einddatum" column-number="15" column-index="50" static-type="DATE"/>
							    </plan:column>
							    <plan:column nullable="false">
							      <plan:id column="Schema1.B.particulier" columnID="10817697733890324401"/>
							      <plan:name type="column-def" view="F" column="particulier" column-number="20" column-index="52" static-type="BOOLEAN"/>
							    </plan:column>
							    <plan:column nullable="false">
							      <plan:id column="Schema1.B.bronsysteem_nummer" columnID="6109371631239283656"/>
							      <plan:name type="column-def" view="F" column="bronsysteem_nummer" column-number="4" column-index="51" static-type="STRING"/>
							    </plan:column>
							    <plan:row type="column-def" view="F" column="rowid" column-number="40" column-index="53" hidden="true"/>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="F" column="particulier" column-number="20" column-index="52"/>
							      <plan:right-expr>
								<plan:literal>
								  <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">false</plan:value>
								</plan:literal>
							      </plan:right-expr>
							    </plan:join-filter>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="F" column="bronsysteem_nummer" column-number="4" column-index="51"/>
							      <plan:right-expr>
								<plan:literal>
								  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
								</plan:literal>
							      </plan:right-expr>
							    </plan:join-filter>
							  </plan:template-view>
							</plan:project>
							<plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="8361258601629875522" order="45" count="1089278" local-time="33526693" remote-time="109416355" local-max-memory="242149860" remote-max-memory="483515648">
							  <plan:column nullable="false">
							    <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
							    <plan:name type="column-def" view="D" column="klant_id" column-number="0" column-index="42" static-type="STRING"/>
							  </plan:column>
							  <plan:column nullable="true">
							    <plan:id column="Schema1.D.nummer" columnID="8207673227962541851"/>
							    <plan:name type="column-def" view="D" column="nummer" column-number="2" column-index="43" static-type="STRING"/>
							  </plan:column>
							  <plan:column nullable="false">
							    <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
							    <plan:name type="column-def" view="D" column="type" column-number="1" column-index="44" static-type="STRING"/>
							  </plan:column>
							  <plan:row type="column-def" view="D" column="rowid" column-number="3" column-index="45" hidden="true"/>
							  <plan:join-filter op="=">
							    <plan:left type="column-def" view="D" column="type" column-number="1" column-index="44"/>
							    <plan:right-expr>
							      <plan:literal>
								<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Lening</plan:value>
							      </plan:literal>
							    </plan:right-expr>
							  </plan:join-filter>
							</plan:template-view>
							<plan:filters>
							  <plan:join-filter op="=">
							    <plan:left type="column-def" view="D" column="nummer" column-number="1" column-index="43"/>
							    <plan:right type="column-def" view="F" column="leningnummer" column-number="1" column-index="47"/>
							  </plan:join-filter>
							  <plan:join-filter op="=">
							    <plan:left type="column-def" view="D" column="klant_id" column-number="0" column-index="42"/>
							    <plan:right type="column-def" view="F" column="klant_id" column-number="0" column-index="46"/>
							  </plan:join-filter>
							</plan:filters>
						      </plan:join>
						    </plan:bind>
						  </plan:bind>
						</plan:bind>
					      </plan:bind>
					    </plan:project>
					    <plan:project id="13307884631834271045" order=",singletons(0,2,3,4,5,6,7,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
					      <plan:column type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
					      <plan:column type="column-def" column="customercategory" column-number="3" column-index="0" static-type="STRING"/>
					      <plan:column type="column-def" column="dateofbirth" column-number="5" column-index="2" static-type="STRING"/>
					      <plan:column type="column-def" column="citizenservicenumber" column-number="7" column-index="3" static-type="STRING"/>
					      <plan:column type="column-def" view="C" column="naam" column-number="8" column-index="41" static-type="STRING"/>
					      <plan:column type="column-def" column="chamberofcommercenumber" column-number="9" column-index="8" static-type="STRING"/>
					      <plan:column type="column-def" column="home_addresstype" column-number="11" column-index="10" static-type="STRING"/>
					      <plan:column type="column-def" column="initials" column-number="13" column-index="4" static-type="STRING"/>
					      <plan:column type="column-def" column="firstname" column-number="14" column-index="5" static-type="STRING"/>
					      <plan:column type="column-def" column="lastname" column-number="15" column-index="6" static-type="STRING"/>
					      <plan:column type="column-def" column="lastnameprefix" column-number="16" column-index="7" static-type="STRING"/>
					      <plan:column type="column-def" column="home_city" column-number="17" column-index="11" static-type="STRING"/>
					      <plan:column type="column-def" column="home_street" column-number="18" column-index="12" static-type="STRING"/>
					      <plan:column type="column-def" column="home_housenumber" column-number="19" column-index="13" static-type="STRING"/>
					      <plan:column type="column-def" column="home_housenumbersuffix" column-number="20" column-index="14" static-type="STRING"/>
					      <plan:column type="column-def" column="home_postalcode" column-number="21" column-index="15" static-type="STRING"/>
					      <plan:column type="column-def" column="home_country" column-number="22" column-index="17" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_city" column-number="23" column-index="20" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_street" column-number="24" column-index="21" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_housenumber" column-number="25" column-index="22" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="26" column-index="23" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_postalcode" column-number="27" column-index="24" static-type="STRING"/>
					      <plan:column type="column-def" column="postal_country" column-number="28" column-index="26" static-type="STRING"/>
					      <plan:column type="column-def" column="gewijzigd_op_klant" column-number="29" column-index="38" static-type="DATE"/>
					      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="30" column-index="39" static-type="DATE"/>
					      <plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="15483178976438565012" order="42,singletons(0,2,3,4,5,6,7,8,10)" count="756807" local-time="8660999" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						<plan:hash left="45" right="42" op="="/>
						<plan:bind>
						  <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
						  <plan:expr>
						    <plan:column-ref schema="" view="" column="gewijzigd_op_persoon" column-index="39" column-number="22" in-match="false">
						      <plan:qname name="gewijzigd_op_persoon" uri="" prfx="" ltrl="gewijzigd_op_persoon"/>
						    </plan:column-ref>
						  </plan:expr>
						  <plan:project id="13307884631834271045" order=",singletons(0,2,3,4,5,6,7,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						    <plan:column type="column-def" view="H" column="id" column-number="0" column-index="45" static-type="STRING"/>
						    <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
						    <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="STRING"/>
						    <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
						    <plan:column type="column-def" column="chamberofcommercenumber" column-number="4" column-index="8" static-type="STRING"/>
						    <plan:column type="column-def" column="home_addresstype" column-number="5" column-index="10" static-type="STRING"/>
						    <plan:column type="column-def" column="initials" column-number="6" column-index="4" static-type="STRING"/>
						    <plan:column type="column-def" column="firstname" column-number="7" column-index="5" static-type="STRING"/>
						    <plan:column type="column-def" column="lastname" column-number="8" column-index="6" static-type="STRING"/>
						    <plan:column type="column-def" column="lastnameprefix" column-number="9" column-index="7" static-type="STRING"/>
						    <plan:column type="column-def" column="home_city" column-number="10" column-index="11" static-type="STRING"/>
						    <plan:column type="column-def" column="home_street" column-number="11" column-index="12" static-type="STRING"/>
						    <plan:column type="column-def" column="home_housenumber" column-number="12" column-index="13" static-type="STRING"/>
						    <plan:column type="column-def" column="home_housenumbersuffix" column-number="13" column-index="14" static-type="STRING"/>
						    <plan:column type="column-def" column="home_postalcode" column-number="14" column-index="15" static-type="STRING"/>
						    <plan:column type="column-def" column="home_country" column-number="15" column-index="17" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_city" column-number="16" column-index="20" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_street" column-number="17" column-index="21" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_housenumber" column-number="18" column-index="22" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_housenumbersuffix" column-number="19" column-index="23" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_postalcode" column-number="20" column-index="24" static-type="STRING"/>
						    <plan:column type="column-def" column="postal_country" column-number="21" column-index="26" static-type="STRING"/>
						    <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="22" column-index="39" static-type="DATE"/>
						    <plan:bind>
						      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
						      <plan:expr>
							<plan:column-ref schema="" view="H" column="gewijzigd_op" column-index="46" column-number="15" in-match="false">
							  <plan:qname name="rechtspersoon.gewijzigd_op" uri="" prfx="" ltrl="rechtspersoon.gewijzigd_op"/>
							</plan:column-ref>
						      </plan:expr>
						      <plan:bind>
							<plan:column type="column-def" column="postal_country" column-number="0" column-index="26"/>
							<plan:expr>
							  <plan:column-ref schema="" view="H" column="postadres_landcode" column-index="58" column-number="28" in-match="false">
							    <plan:qname name="rechtspersoon.postadres_landcode" uri="" prfx="" ltrl="rechtspersoon.postadres_landcode"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:bind>
							  <plan:column type="column-def" column="postal_postalcode" column-number="0" column-index="24"/>
							  <plan:expr>
							    <plan:column-ref schema="" view="H" column="postadres_postcode" column-index="56" column-number="26" in-match="false">
							      <plan:qname name="rechtspersoon.postadres_postcode" uri="" prfx="" ltrl="rechtspersoon.postadres_postcode"/>
							    </plan:column-ref>
							  </plan:expr>
							  <plan:bind>
							    <plan:column type="column-def" column="postal_housenumbersuffix" column-number="0" column-index="23"/>
							    <plan:expr>
							      <plan:column-ref schema="" view="H" column="postadres_huisnummertoevoeging" column-index="55" column-number="25" in-match="false">
								<plan:qname name="rechtspersoon.postadres_huisnummertoevoeging" uri="" prfx="" ltrl="rechtspersoon.postadres_huisnummertoevoeging"/>
							      </plan:column-ref>
							    </plan:expr>
							    <plan:bind>
							      <plan:column type="column-def" column="postal_housenumber" column-number="0" column-index="22"/>
							      <plan:expr>
								<plan:column-ref schema="" view="H" column="postadres_huisnummer" column-index="54" column-number="24" in-match="false">
								  <plan:qname name="rechtspersoon.postadres_huisnummer" uri="" prfx="" ltrl="rechtspersoon.postadres_huisnummer"/>
								</plan:column-ref>
							      </plan:expr>
							      <plan:bind>
								<plan:column type="column-def" column="postal_street" column-number="0" column-index="21"/>
								<plan:expr>
								  <plan:column-ref schema="" view="H" column="postadres_straat" column-index="53" column-number="23" in-match="false">
								    <plan:qname name="rechtspersoon.postadres_straat" uri="" prfx="" ltrl="rechtspersoon.postadres_straat"/>
								  </plan:column-ref>
								</plan:expr>
								<plan:bind>
								  <plan:column type="column-def" column="postal_city" column-number="0" column-index="20"/>
								  <plan:expr>
								    <plan:column-ref schema="" view="H" column="postadres_plaats" column-index="57" column-number="27" in-match="false">
								      <plan:qname name="rechtspersoon.postadres_plaats" uri="" prfx="" ltrl="rechtspersoon.postadres_plaats"/>
								    </plan:column-ref>
								  </plan:expr>
								  <plan:bind>
								    <plan:column type="column-def" column="home_country" column-number="0" column-index="17"/>
								    <plan:expr>
								      <plan:column-ref schema="" view="H" column="woonadres_landcode" column-index="52" column-number="21" in-match="false">
									<plan:qname name="rechtspersoon.woonadres_landcode" uri="" prfx="" ltrl="rechtspersoon.woonadres_landcode"/>
								      </plan:column-ref>
								    </plan:expr>
								    <plan:bind>
								      <plan:column type="column-def" column="home_postalcode" column-number="0" column-index="15"/>
								      <plan:expr>
									<plan:column-ref schema="" view="H" column="woonadres_postcode" column-index="50" column-number="19" in-match="false">
									  <plan:qname name="rechtspersoon.woonadres_postcode" uri="" prfx="" ltrl="rechtspersoon.woonadres_postcode"/>
									</plan:column-ref>
								      </plan:expr>
								      <plan:bind>
									<plan:column type="column-def" column="home_housenumbersuffix" column-number="0" column-index="14"/>
									<plan:expr>
									  <plan:column-ref schema="" view="H" column="woonadres_huisnummertoevoeging" column-index="49" column-number="18" in-match="false">
									    <plan:qname name="rechtspersoon.woonadres_huisnummertoevoeging" uri="" prfx="" ltrl="rechtspersoon.woonadres_huisnummertoevoeging"/>
									  </plan:column-ref>
									</plan:expr>
									<plan:bind>
									  <plan:column type="column-def" column="home_housenumber" column-number="0" column-index="13"/>
									  <plan:expr>
									    <plan:column-ref schema="" view="H" column="woonadres_huisnummer" column-index="48" column-number="17" in-match="false">
									      <plan:qname name="rechtspersoon.woonadres_huisnummer" uri="" prfx="" ltrl="rechtspersoon.woonadres_huisnummer"/>
									    </plan:column-ref>
									  </plan:expr>
									  <plan:bind>
									    <plan:column type="column-def" column="home_street" column-number="0" column-index="12"/>
									    <plan:expr>
									      <plan:column-ref schema="" view="H" column="woonadres_straat" column-index="47" column-number="16" in-match="false">
										<plan:qname name="rechtspersoon.woonadres_straat" uri="" prfx="" ltrl="rechtspersoon.woonadres_straat"/>
									      </plan:column-ref>
									    </plan:expr>
									    <plan:bind>
									      <plan:column type="column-def" column="home_city" column-number="0" column-index="11"/>
									      <plan:expr>
										<plan:column-ref schema="" view="H" column="woonadres_plaats" column-index="51" column-number="20" in-match="false">
										  <plan:qname name="rechtspersoon.woonadres_plaats" uri="" prfx="" ltrl="rechtspersoon.woonadres_plaats"/>
										</plan:column-ref>
									      </plan:expr>
									      <plan:bind>
										<plan:column type="column-def" column="lastnameprefix" column-number="0" column-index="7"/>
										<plan:expr>
										  <plan:literal>
										    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
										  </plan:literal>
										</plan:expr>
										<plan:bind>
										  <plan:column type="column-def" column="lastname" column-number="0" column-index="6"/>
										  <plan:expr>
										    <plan:literal>
										      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
										    </plan:literal>
										  </plan:expr>
										  <plan:bind>
										    <plan:column type="column-def" column="firstname" column-number="0" column-index="5"/>
										    <plan:expr>
										      <plan:literal>
											<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
										      </plan:literal>
										    </plan:expr>
										    <plan:bind>
										      <plan:column type="column-def" column="initials" column-number="0" column-index="4"/>
										      <plan:expr>
											<plan:literal>
											  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
											</plan:literal>
										      </plan:expr>
										      <plan:bind>
											<plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
											<plan:expr>
											  <plan:literal>
											    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">RegisteredOffice</plan:value>
											  </plan:literal>
											</plan:expr>
											<plan:bind>
											  <plan:column type="column-def" column="chamberofcommercenumber" column-number="0" column-index="8"/>
											  <plan:expr>
											    <plan:literal>
											      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
											    </plan:literal>
											  </plan:expr>
											  <plan:bind>
											    <plan:column type="column-def" column="citizenservicenumber" column-number="0" column-index="3"/>
											    <plan:expr>
											      <plan:literal>
												<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
											      </plan:literal>
											    </plan:expr>
											    <plan:bind>
											      <plan:column type="column-def" column="dateofbirth" column-number="0" column-index="2"/>
											      <plan:expr>
												<plan:literal>
												  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
												</plan:literal>
											      </plan:expr>
											      <plan:bind>
												<plan:column type="column-def" column="customercategory" column-number="0" column-index="0"/>
												<plan:expr>
												  <plan:literal>
												    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">accountHolderLegalEntities</plan:value>
												  </plan:literal>
												</plan:expr>
												<plan:template-view type="column" iri="http://marklogic.com/view/Schema1/H" schemaID="12461121416219388462" viewID="13968452873791756530" allNullable="false" id="2384317470289680612" order="59" count="1139088" local-time="12919762" remote-time="87467722" local-max-memory="11993088" remote-max-memory="24158208">
												  <plan:column nullable="false">
												    <plan:id column="Schema1.H.id" columnID="2269332283740193252"/>
												    <plan:name type="column-def" view="H" column="id" column-number="0" column-index="45" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.gewijzigd_op" columnID="15747097219539404102"/>
												    <plan:name type="column-def" view="H" column="gewijzigd_op" column-number="15" column-index="46" static-type="DATE"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_straat" columnID="13905940175095996468"/>
												    <plan:name type="column-def" view="H" column="woonadres_straat" column-number="16" column-index="47" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_huisnummer" columnID="13155675805959606370"/>
												    <plan:name type="column-def" view="H" column="woonadres_huisnummer" column-number="17" column-index="48" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_huisnummertoevoeging" columnID="8515707449716936627"/>
												    <plan:name type="column-def" view="H" column="woonadres_huisnummertoevoeging" column-number="18" column-index="49" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_postcode" columnID="16084670478822038122"/>
												    <plan:name type="column-def" view="H" column="woonadres_postcode" column-number="19" column-index="50" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_plaats" columnID="6577887777916223514"/>
												    <plan:name type="column-def" view="H" column="woonadres_plaats" column-number="20" column-index="51" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.woonadres_landcode" columnID="14139891273980418031"/>
												    <plan:name type="column-def" view="H" column="woonadres_landcode" column-number="21" column-index="52" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_straat" columnID="6951721510249974579"/>
												    <plan:name type="column-def" view="H" column="postadres_straat" column-number="23" column-index="53" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_huisnummer" columnID="16889446679320615756"/>
												    <plan:name type="column-def" view="H" column="postadres_huisnummer" column-number="24" column-index="54" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_huisnummertoevoeging" columnID="3552252239413880381"/>
												    <plan:name type="column-def" view="H" column="postadres_huisnummertoevoeging" column-number="25" column-index="55" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_postcode" columnID="307611415459386677"/>
												    <plan:name type="column-def" view="H" column="postadres_postcode" column-number="26" column-index="56" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_plaats" columnID="17637997253673265944"/>
												    <plan:name type="column-def" view="H" column="postadres_plaats" column-number="27" column-index="57" static-type="STRING"/>
												  </plan:column>
												  <plan:column nullable="true">
												    <plan:id column="Schema1.H.postadres_landcode" columnID="3550696990979854006"/>
												    <plan:name type="column-def" view="H" column="postadres_landcode" column-number="28" column-index="58" static-type="STRING"/>
												  </plan:column>
												  <plan:row type="column-def" view="H" column="rowid" column-number="30" column-index="59" hidden="true"/>
												</plan:template-view>
											      </plan:bind>
											    </plan:bind>
											  </plan:bind>
											</plan:bind>
										      </plan:bind>
										    </plan:bind>
										  </plan:bind>
										</plan:bind>
									      </plan:bind>
									    </plan:bind>
									  </plan:bind>
									</plan:bind>
								      </plan:bind>
								    </plan:bind>
								  </plan:bind>
								</plan:bind>
							      </plan:bind>
							    </plan:bind>
							  </plan:bind>
							</plan:bind>
						      </plan:bind>
						    </plan:bind>
						  </plan:project>
						</plan:bind>
						<plan:bind>
						  <plan:column type="column-def" column="gewijzigd_op_klant" column-number="0" column-index="38"/>
						  <plan:expr>
						    <plan:column-ref schema="" view="C" column="gewijzigd_op" column-index="43" column-number="6" in-match="false">
						      <plan:qname name="klant.gewijzigd_op" uri="" prfx="" ltrl="klant.gewijzigd_op"/>
						    </plan:column-ref>
						  </plan:expr>
						  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/C" schemaID="12461121416219388462" viewID="9168834070795060460" allNullable="false" id="2807263614040861052" order="44" count="768370" local-time="7561236" remote-time="45127847" local-max-memory="10288128" remote-max-memory="20696064">
						    <plan:column nullable="false">
						      <plan:id column="Schema1.C.id" columnID="13381157793951950771"/>
						      <plan:name type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="true">
						      <plan:id column="Schema1.C.persoon_1_id" columnID="621130228927095484"/>
						      <plan:name type="column-def" view="C" column="persoon_1_id" column-number="2" column-index="42" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="true">
						      <plan:id column="Schema1.C.naam" columnID="16902030339949116180"/>
						      <plan:name type="column-def" view="C" column="naam" column-number="4" column-index="41" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="true">
						      <plan:id column="Schema1.C.gewijzigd_op" columnID="14598689193384857406"/>
						      <plan:name type="column-def" view="C" column="gewijzigd_op" column-number="6" column-index="43" static-type="DATE"/>
						    </plan:column>
						    <plan:row type="column-def" view="C" column="rowid" column-number="7" column-index="44" hidden="true"/>
						  </plan:template-view>
						</plan:bind>
						<plan:filters>
						  <plan:join-filter op="=">
						    <plan:left type="column-def" view="C" column="persoon_1_id" column-number="4" column-index="42"/>
						    <plan:right type="column-def" view="H" column="id" column-number="0" column-index="45"/>
						  </plan:join-filter>
						</plan:filters>
					      </plan:join>
					    </plan:project>
					    <plan:filters>
					      <plan:join-filter op="=">
						<plan:left type="column-def" view="D" column="klant_id" column-number="0" column-index="42"/>
						<plan:right type="column-def" view="C" column="id" column-number="0" column-index="40"/>
					      </plan:join-filter>
					    </plan:filters>
					  </plan:join>
					  <plan:filters/>
					  <plan:ljfilters>
					    <plan:value-compare op="EQ">
					      <plan:expr>
						<plan:column-ref schema="" view="D" column="klant_id" column-index="42" column-number="0" in-match="false">
						  <plan:qname name="klantproduct.klant_id" uri="" prfx="" ltrl="klantproduct.klant_id"/>
						</plan:column-ref>
					      </plan:expr>
					      <plan:term>
						<plan:column-ref schema="" view="A" column="klant_id" column-index="44" column-number="0" in-match="false">
						  <plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
						</plan:column-ref>
					      </plan:term>
					    </plan:value-compare>
					  </plan:ljfilters>
					</plan:right-join>
				      </plan:bind>
				    </plan:bind>
				  </plan:bind>
				</plan:bind>
			      </plan:bind>
			    </plan:bind>
			  </plan:bind>
			</plan:bind>
		      </plan:bind>
		    </plan:project>
		    <plan:project id="13307884631834271045" order=",singletons(9,10,16,18,19,25,27)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
		      <plan:column type="column-def" column="activecustomer" column-number="0" column-index="1" static-type="STRING"/>
		      <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
		      <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
		      <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
		      <plan:column type="column-def" column="initials" column-number="4" column-index="4" static-type="STRING"/>
		      <plan:column type="column-def" column="firstname" column-number="5" column-index="5" static-type="STRING"/>
		      <plan:column type="column-def" column="lastname" column-number="6" column-index="6" static-type="STRING"/>
		      <plan:column type="column-def" column="lastnameprefix" column-number="7" column-index="7" static-type="STRING"/>
		      <plan:column type="column-def" column="chamberofcommercenumber" column-number="8" column-index="8" static-type="STRING"/>
		      <plan:column type="column-def" column="organisationname" column-number="9" column-index="9" static-type="STRING"/>
		      <plan:column type="column-def" column="home_addresstype" column-number="10" column-index="10" static-type="STRING"/>
		      <plan:column type="column-def" column="home_city" column-number="11" column-index="11" static-type="STRING"/>
		      <plan:column type="column-def" column="home_street" column-number="12" column-index="12" static-type="STRING"/>
		      <plan:column type="column-def" column="home_housenumber" column-number="13" column-index="13" static-type="STRING"/>
		      <plan:column type="column-def" column="home_housenumbersuffix" column-number="14" column-index="14" static-type="STRING"/>
		      <plan:column type="column-def" column="home_postalcode" column-number="15" column-index="15" static-type="STRING"/>
		      <plan:column type="column-def" column="home_pobox" column-number="16" column-index="16" static-type="STRING"/>
		      <plan:column type="column-def" column="home_country" column-number="17" column-index="17" static-type="STRING"/>
		      <plan:column type="column-def" column="home_otheraddressdata" column-number="18" column-index="18" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_addresstype" column-number="19" column-index="19" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_city" column-number="20" column-index="20" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_street" column-number="21" column-index="21" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_housenumber" column-number="22" column-index="22" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="23" column-index="23" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_postalcode" column-number="24" column-index="24" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_pobox" column-number="25" column-index="25" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_country" column-number="26" column-index="26" static-type="STRING"/>
		      <plan:column type="column-def" column="postal_otheraddressdata" column-number="27" column-index="27" static-type="STRING"/>
		      <plan:column type="column-def" column="product_grp_id" column-number="28" column-index="28" static-type="INTEGER"/>
		      <plan:column type="column-def" column="productnumber" column-number="29" column-index="29" static-type="STRING"/>
		      <plan:column type="column-def" column="status" column-number="30" column-index="31" static-type="STRING"/>
		      <plan:column type="column-def" column="ingangsdatum_product" column-number="31" column-index="36" static-type="DATE"/>
		      <plan:column type="column-def" column="einddatum_product" column-number="32" column-index="37" static-type="DATE"/>
		      <plan:column type="column-def" column="gewijzigd_op_klant" column-number="33" column-index="38" static-type="DATE"/>
		      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="34" column-index="39" static-type="DATE"/>
		      <plan:bind>
			<plan:column type="column-def" column="productnumber" column-number="0" column-index="29"/>
			<plan:expr>
			  <plan:column-ref schema="" view="D" column="nummer" column-index="42" column-number="1" in-match="false">
			    <plan:qname name="klantproduct.nummer" uri="" prfx="" ltrl="klantproduct.nummer"/>
			  </plan:column-ref>
			</plan:expr>
			<plan:bind>
			  <plan:column type="column-def" column="postal_otheraddressdata" column-number="0" column-index="27"/>
			  <plan:expr>
			    <plan:literal>
			      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			    </plan:literal>
			  </plan:expr>
			  <plan:bind>
			    <plan:column type="column-def" column="postal_pobox" column-number="0" column-index="25"/>
			    <plan:expr>
			      <plan:literal>
				<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
			      </plan:literal>
			    </plan:expr>
			    <plan:bind>
			      <plan:column type="column-def" column="postal_addresstype" column-number="0" column-index="19"/>
			      <plan:expr>
				<plan:literal>
				  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Postal</plan:value>
				</plan:literal>
			      </plan:expr>
			      <plan:bind>
				<plan:column type="column-def" column="home_otheraddressdata" column-number="0" column-index="18"/>
				<plan:expr>
				  <plan:literal>
				    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				  </plan:literal>
				</plan:expr>
				<plan:bind>
				  <plan:column type="column-def" column="home_pobox" column-number="0" column-index="16"/>
				  <plan:expr>
				    <plan:literal>
				      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
				    </plan:literal>
				  </plan:expr>
				  <plan:bind>
				    <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
				    <plan:expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Home</plan:value>
				      </plan:literal>
				    </plan:expr>
				    <plan:bind>
				      <plan:column type="column-def" column="organisationname" column-number="0" column-index="9"/>
				      <plan:expr>
					<plan:literal>
					  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
					</plan:literal>
				      </plan:expr>
				      <plan:bind>
					<plan:column type="column-def" column="activecustomer" column-number="0" column-index="1"/>
					<plan:expr>
					  <plan:if>
					    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="exists">
					      <plan:column-ref schema="" view="A" column="klant_id" column-index="43" column-number="0" in-match="false">
						<plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
					      </plan:column-ref>
					    </plan:builtin>
					    <plan:literal>
					      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">TRUE</plan:value>
					    </plan:literal>
					    <plan:literal>
					      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">FALSE</plan:value>
					    </plan:literal>
					  </plan:if>
					</plan:expr>
					<plan:right-join type="right-hash-join" sparql-semantics="false" id="13845204666095840599" order="" count="910048" local-time="43574427" remote-time="0" local-max-memory="155766944" remote-max-memory="0">
					  <plan:hash left="43" right="41" op="="/>
					  <plan:group type="hash-group" id="7341342517891107704" order="" count="954542" local-time="31971817" remote-time="0" local-max-memory="0" remote-max-memory="0">
					    <plan:order-spec descending="false" nulls-first="false" type="column-ref" view="A" column="klant_id" column-number="0" column-index="0"/>
					    <plan:aggregate-bind>
					      <plan:aggregate-function name="sample" distinct="false">
						<plan:column-ref schema="" view="A" column="klant_id" column-index="0" column-number="0" in-match="false">
						  <plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
						</plan:column-ref>
					      </plan:aggregate-function>
					      <plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="43"/>
					    </plan:aggregate-bind>
					    <plan:sparql-union type="concat-union" id="15877588049092803116" order="" count="483985" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
					      <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						<plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="10604184446121253224" order="2" count="0" local-time="19482939" remote-time="38508414" local-max-memory="3613200" remote-max-memory="10526080">
						  <plan:column nullable="false">
						    <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
						    <plan:name type="column-def" view="A" column="type" column-number="1" column-index="1" static-type="STRING"/>
						  </plan:column>
						  <plan:column nullable="false">
						    <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
						    <plan:name type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						  </plan:column>
						  <plan:row type="column-def" view="A" column="rowid" column-number="3" column-index="2" hidden="true"/>
						  <plan:join-filter op="=">
						    <plan:left type="column-def" view="A" column="type" column-number="1" column-index="1"/>
						    <plan:right-expr>
						      <plan:literal>
							<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Verzekering</plan:value>
						      </plan:literal>
						    </plan:right-expr>
						  </plan:join-filter>
						</plan:template-view>
					      </plan:project>
					      <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="8235159521565502166" order="5,4" count="328736" local-time="1988073" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						  <plan:hash left="2" right="5" op="="/>
						  <plan:hash left="0" right="4" op="="/>
						  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="12042473626095655892" order="3" count="1089278" local-time="595035742" remote-time="1083822129" local-max-memory="212233412" remote-max-memory="203371944">
						    <plan:column nullable="false">
						      <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
						      <plan:name type="column-def" view="A" column="klant_id" column-number="0" column-index="0" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="true">
						      <plan:id column="Schema1.D.nummer" columnID="8207673227962541851"/>
						      <plan:name type="column-def" view="A" column="nummer" column-number="2" column-index="2" static-type="STRING"/>
						    </plan:column>
						    <plan:column nullable="false">
						      <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
						      <plan:name type="column-def" view="A" column="type" column-number="1" column-index="1" static-type="STRING"/>
						    </plan:column>
						    <plan:row type="column-def" view="A" column="rowid" column-number="3" column-index="3" hidden="true"/>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="type" column-number="1" column-index="1"/>
						      <plan:right-expr>
							<plan:literal>
							  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Lening</plan:value>
							</plan:literal>
						      </plan:right-expr>
						    </plan:join-filter>
						  </plan:template-view>
						  <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						    <plan:column type="column-def" view="B" column="klant_id" column-number="0" column-index="4" static-type="STRING"/>
						    <plan:column type="column-def" view="B" column="leningnummer" column-number="1" column-index="5" static-type="STRING"/>
						    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/B" schemaID="12461121416219388462" viewID="7074164397311574073" allNullable="false" id="10227954036311052402" order="8" count="328902" local-time="237630415" remote-time="535323545" local-max-memory="786432" remote-max-memory="1376256">
						      <plan:column nullable="true">
							<plan:id column="Schema1.B.leningnummer" columnID="5465285548767446769"/>
							<plan:name type="column-def" view="B" column="leningnummer" column-number="3" column-index="5" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.B.klant_id" columnID="16042433715186211662"/>
							<plan:name type="column-def" view="B" column="klant_id" column-number="12" column-index="4" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="false">
							<plan:id column="Schema1.B.bronsysteem_nummer" columnID="6109371631239283656"/>
							<plan:name type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="6" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="false">
							<plan:id column="Schema1.B.in_beheer" columnID="10171238417996290683"/>
							<plan:name type="column-def" view="B" column="in_beheer" column-number="9" column-index="7" static-type="BOOLEAN"/>
						      </plan:column>
						      <plan:row type="column-def" view="B" column="rowid" column-number="40" column-index="8" hidden="true"/>
						      <plan:join-filter op="=">
							<plan:left type="column-def" view="B" column="bronsysteem_nummer" column-number="4" column-index="6"/>
							<plan:right-expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
							  </plan:literal>
							</plan:right-expr>
						      </plan:join-filter>
						      <plan:join-filter op="=">
							<plan:left type="column-def" view="B" column="in_beheer" column-number="2" column-index="7"/>
							<plan:right-expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
							  </plan:literal>
							</plan:right-expr>
						      </plan:join-filter>
						    </plan:template-view>
						  </plan:project>
						  <plan:filters>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="nummer" column-number="2" column-index="2"/>
						      <plan:right type="column-def" view="B" column="leningnummer" column-number="1" column-index="5"/>
						    </plan:join-filter>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="A" column="klant_id" column-number="0" column-index="0"/>
						      <plan:right type="column-def" view="B" column="klant_id" column-number="0" column-index="4"/>
						    </plan:join-filter>
						  </plan:filters>
						</plan:join>
					      </plan:project>
					    </plan:sparql-union>
					  </plan:group>
					  <plan:join type="hash-join" sparql-semantics="false" id="16203115793113152047" order="" count="802645" local-time="29134703" remote-time="0" local-max-memory="214136208" remote-max-memory="0">
					    <plan:hash left="41" right="40" op="="/>
					    <plan:sparql-union type="concat-union" id="819186525024280775" order="" count="543287" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
					      <plan:project id="13307884631834271045" order=",singletons(28,31,37)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="D" column="klant_id" column-number="0" column-index="41" static-type="STRING"/>
						<plan:column type="column-def" view="D" column="nummer" column-number="1" column-index="42" static-type="STRING"/>
						<plan:column type="column-def" column="ingangsdatum_product" column-number="2" column-index="36" static-type="DATE"/>
						<plan:column type="column-def" column="einddatum_product" column-number="3" column-index="37" static-type="STRING"/>
						<plan:column type="column-def" column="status" column-number="4" column-index="31" static-type="STRING"/>
						<plan:column type="column-def" column="product_grp_id" column-number="5" column-index="28" static-type="INTEGER"/>
						<plan:bind>
						  <plan:column type="column-def" column="ingangsdatum_product" column-number="0" column-index="36"/>
						  <plan:expr>
						    <plan:column-ref schema="" view="J" column="gewijzigd_op" column-index="47" column-number="2" in-match="false">
						      <plan:qname name="verzekering-particulier.gewijzigd_op" uri="" prfx="" ltrl="verzekering-particulier.gewijzigd_op"/>
						    </plan:column-ref>
						  </plan:expr>
						  <plan:bind>
						    <plan:column type="column-def" column="product_grp_id" column-number="0" column-index="28"/>
						    <plan:expr>
						      <plan:literal>
							<plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">120</plan:value>
						      </plan:literal>
						    </plan:expr>
						    <plan:bind>
						      <plan:column type="column-def" column="einddatum_product" column-number="0" column-index="37"/>
						      <plan:expr>
							<plan:literal>
							  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
							</plan:literal>
						      </plan:expr>
						      <plan:bind>
							<plan:column type="column-def" column="status" column-number="0" column-index="31"/>
							<plan:expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">active</plan:value>
							  </plan:literal>
							</plan:expr>
							<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="8507629119614875677" order="46,45" count="155245" local-time="1093871" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
							  <plan:hash left="42" right="46" op="="/>
							  <plan:hash left="41" right="45" op="="/>
							  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="16447950985349474348" order="44" count="310498" local-time="237310088" remote-time="326832146" local-max-memory="137273512" remote-max-memory="252489592">
							    <plan:column nullable="false">
							      <plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
							      <plan:name type="column-def" view="D" column="klant_id" column-number="0" column-index="41" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="false">
							      <plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
							      <plan:name type="column-def" view="D" column="type" column-number="1" column-index="43" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.D.nummer" columnID="8207673227962541851"/>
							      <plan:name type="column-def" view="D" column="nummer" column-number="2" column-index="42" static-type="STRING"/>
							    </plan:column>
							    <plan:row type="column-def" view="D" column="rowid" column-number="3" column-index="44" hidden="true"/>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="D" column="type" column-number="1" column-index="43"/>
							      <plan:right-expr>
								<plan:literal>
								  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Verzekering</plan:value>
								</plan:literal>
							      </plan:right-expr>
							    </plan:join-filter>
							  </plan:template-view>
							  <plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
							    <plan:column type="column-def" view="J" column="klant_id" column-number="0" column-index="45" static-type="STRING"/>
							    <plan:column type="column-def" view="J" column="polisnummer" column-number="1" column-index="46" static-type="STRING"/>
							    <plan:column type="column-def" view="J" column="gewijzigd_op" column-number="2" column-index="47" static-type="DATE"/>
							    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/J" schemaID="12461121416219388462" viewID="5597861784133947290" allNullable="false" id="11761261954459179948" order="48" count="155266" local-time="164117275" remote-time="277971040" local-max-memory="1198080" remote-max-memory="2396160">
							      <plan:column nullable="true">
								<plan:id column="Schema1.J.klant_id" columnID="8364998392719702208"/>
								<plan:name type="column-def" view="J" column="klant_id" column-number="2" column-index="45" static-type="STRING"/>
							      </plan:column>
							      <plan:column nullable="true">
								<plan:id column="Schema1.J.polisnummer" columnID="11215027761858241952"/>
								<plan:name type="column-def" view="J" column="polisnummer" column-number="3" column-index="46" static-type="STRING"/>
							      </plan:column>
							      <plan:column nullable="true">
								<plan:id column="Schema1.J.gewijzigd_op" columnID="17001011425097833956"/>
								<plan:name type="column-def" view="J" column="gewijzigd_op" column-number="5" column-index="47" static-type="DATE"/>
							      </plan:column>
							      <plan:column nullable="false">
								<plan:id column="Schema1.J.id" columnID="14021421632851470606"/>
							      </plan:column>
							      <plan:row type="column-def" view="J" column="rowid" column-number="6" column-index="48" hidden="true"/>
							    </plan:template-view>
							  </plan:project>
							  <plan:filters>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="D" column="nummer" column-number="1" column-index="42"/>
							      <plan:right type="column-def" view="J" column="polisnummer" column-number="1" column-index="46"/>
							    </plan:join-filter>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="D" column="klant_id" column-number="0" column-index="41"/>
							      <plan:right type="column-def" view="J" column="klant_id" column-number="0" column-index="45"/>
							    </plan:join-filter>
							  </plan:filters>
							</plan:join>
						      </plan:bind>
						    </plan:bind>
						  </plan:bind>
						</plan:bind>
					      </plan:project>
					      <plan:project id="13307884631834271045" order="42,41,singletons(28)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="D" column="klant_id" column-number="0" column-index="41" static-type="STRING"/>
						<plan:column type="column-def" view="D" column="nummer" column-number="1" column-index="42" static-type="STRING"/>
						<plan:column type="column-def" column="ingangsdatum_product" column-number="2" column-index="36" static-type="DATE"/>
						<plan:column type="column-def" column="einddatum_product" column-number="3" column-index="37" static-type="DATE"/>
						<plan:column type="column-def" column="status" column-number="4" column-index="31" static-type="STRING"/>
						<plan:column type="column-def" column="product_grp_id" column-number="5" column-index="28" static-type="INTEGER"/>
						<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="6842602922870446350" order="42,41,singletons(28)" count="388042" local-time="3327660" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						  <plan:hash left="46" right="42" op="="/>
						  <plan:hash left="45" right="41" op="="/>
						  <plan:bind>
						    <plan:column type="column-def" column="status" column-number="0" column-index="31"/>
						    <plan:expr>
						      <plan:if>
							<plan:value-compare op="EQ">
							  <plan:expr>
							    <plan:column-ref schema="" view="E" column="in_beheer" column-index="47" column-number="2" in-match="false">
							      <plan:qname name="lening-particulier.in_beheer" uri="" prfx="" ltrl="lening-particulier.in_beheer"/>
							    </plan:column-ref>
							  </plan:expr>
							  <plan:term>
							    <plan:literal>
							      <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
							    </plan:literal>
							  </plan:term>
							</plan:value-compare>
							<plan:literal>
							  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">active</plan:value>
							</plan:literal>
							<plan:literal>
							  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">inactive</plan:value>
							</plan:literal>
						      </plan:if>
						    </plan:expr>
						    <plan:bind>
						      <plan:column type="column-def" column="einddatum_product" column-number="0" column-index="37"/>
						      <plan:expr>
							<plan:column-ref schema="" view="E" column="einddatum" column-index="49" column-number="4" in-match="false">
							  <plan:qname name="lening-particulier.einddatum" uri="" prfx="" ltrl="lening-particulier.einddatum"/>
							</plan:column-ref>
						      </plan:expr>
						      <plan:bind>
							<plan:column type="column-def" column="ingangsdatum_product" column-number="0" column-index="36"/>
							<plan:expr>
							  <plan:column-ref schema="" view="E" column="ingangsdatum" column-index="48" column-number="3" in-match="false">
							    <plan:qname name="lening-particulier.ingangsdatum" uri="" prfx="" ltrl="lening-particulier.ingangsdatum"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:project id="13307884631834271045" order="" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
							  <plan:column type="column-def" view="E" column="klant_id" column-number="0" column-index="45" static-type="STRING"/>
							  <plan:column type="column-def" view="E" column="leningnummer" column-number="1" column-index="46" static-type="STRING"/>
							  <plan:column type="column-def" view="E" column="in_beheer" column-number="2" column-index="47" static-type="BOOLEAN"/>
							  <plan:column type="column-def" view="E" column="ingangsdatum" column-number="3" column-index="48" static-type="DATE"/>
							  <plan:column type="column-def" view="E" column="einddatum" column-number="4" column-index="49" static-type="DATE"/>
							  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/B" schemaID="12461121416219388462" viewID="7074164397311574073" allNullable="false" id="483569501253160827" order="52" count="388228" local-time="240838814" remote-time="497400569" local-max-memory="1370112" remote-max-memory="3273216">
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.leningnummer" columnID="5465285548767446769"/>
							      <plan:name type="column-def" view="E" column="leningnummer" column-number="3" column-index="46" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.in_beheer" columnID="10171238417996290683"/>
							      <plan:name type="column-def" view="E" column="in_beheer" column-number="9" column-index="47" static-type="BOOLEAN"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.klant_id" columnID="16042433715186211662"/>
							      <plan:name type="column-def" view="E" column="klant_id" column-number="12" column-index="45" static-type="STRING"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.ingangsdatum" columnID="8786401861066113030"/>
							      <plan:name type="column-def" view="E" column="ingangsdatum" column-number="14" column-index="48" static-type="DATE"/>
							    </plan:column>
							    <plan:column nullable="true">
							      <plan:id column="Schema1.B.einddatum" columnID="10655396818707748631"/>
							      <plan:name type="column-def" view="E" column="einddatum" column-number="15" column-index="49" static-type="DATE"/>
							    </plan:column>
							    <plan:column nullable="false">
							      <plan:id column="Schema1.B.particulier" columnID="10817697733890324401"/>
							      <plan:name type="column-def" view="E" column="particulier" column-number="20" column-index="51" static-type="BOOLEAN"/>
							    </plan:column>
							    <plan:column nullable="false">
							      <plan:id column="Schema1.B.bronsysteem_nummer" columnID="6109371631239283656"/>
							      <plan:name type="column-def" view="E" column="bronsysteem_nummer" column-number="4" column-index="50" static-type="STRING"/>
							    </plan:column>
							    <plan:row type="column-def" view="E" column="rowid" column-number="40" column-index="52" hidden="true"/>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="E" column="particulier" column-number="20" column-index="51"/>
							      <plan:right-expr>
								<plan:literal>
								  <plan:value xsi:type="xs:boolean" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">true</plan:value>
								</plan:literal>
							      </plan:right-expr>
							    </plan:join-filter>
							    <plan:join-filter op="=">
							      <plan:left type="column-def" view="E" column="bronsysteem_nummer" column-number="4" column-index="50"/>
							      <plan:right-expr>
								<plan:literal>
								  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">2</plan:value>
								</plan:literal>
							      </plan:right-expr>
							    </plan:join-filter>
							  </plan:template-view>
							</plan:project>
						      </plan:bind>
						    </plan:bind>
						  </plan:bind>
						  <plan:bind>
						    <plan:column type="column-def" column="product_grp_id" column-number="0" column-index="28"/>
						    <plan:expr>
						      <plan:literal>
							<plan:value xsi:type="xs:integer" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">67</plan:value>
						      </plan:literal>
						    </plan:expr>
						    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/D" schemaID="12461121416219388462" viewID="7694803456231509637" allNullable="false" id="6170711034339345149" order="44" count="544639" local-time="252154955" remote-time="390719292" local-max-memory="8549376" remote-max-memory="18478848">
						      <plan:column nullable="false">
							<plan:id column="Schema1.D.klant_id" columnID="5628870842113798061"/>
							<plan:name type="column-def" view="D" column="klant_id" column-number="0" column-index="41" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.D.nummer" columnID="8207673227962541851"/>
							<plan:name type="column-def" view="D" column="nummer" column-number="2" column-index="42" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="false">
							<plan:id column="Schema1.D.type" columnID="14051612103111986510"/>
							<plan:name type="column-def" view="D" column="type" column-number="1" column-index="43" static-type="STRING"/>
						      </plan:column>
						      <plan:row type="column-def" view="D" column="rowid" column-number="3" column-index="44" hidden="true"/>
						      <plan:join-filter op="=">
							<plan:left type="column-def" view="D" column="type" column-number="1" column-index="43"/>
							<plan:right-expr>
							  <plan:literal>
							    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Lening</plan:value>
							  </plan:literal>
							</plan:right-expr>
						      </plan:join-filter>
						    </plan:template-view>
						  </plan:bind>
						  <plan:filters>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="D" column="nummer" column-number="1" column-index="42"/>
						      <plan:right type="column-def" view="E" column="leningnummer" column-number="1" column-index="46"/>
						    </plan:join-filter>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="D" column="klant_id" column-number="0" column-index="41"/>
						      <plan:right type="column-def" view="E" column="klant_id" column-number="0" column-index="45"/>
						    </plan:join-filter>
						  </plan:filters>
						</plan:join>
					      </plan:project>
					    </plan:sparql-union>
					    <plan:sparql-union type="concat-union" id="12155178433567743595" order="" count="1130068" local-time="0" remote-time="0" local-max-memory="0" remote-max-memory="0">
					      <plan:project id="13307884631834271045" order=",singletons(0,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
						<plan:column type="column-def" column="customercategory" column-number="3" column-index="0" static-type="STRING"/>
						<plan:column type="column-def" column="dateofbirth" column-number="5" column-index="2" static-type="DATE"/>
						<plan:column type="column-def" column="citizenservicenumber" column-number="7" column-index="3" static-type="STRING"/>
						<plan:column type="column-def" column="chamberofcommercenumber" column-number="9" column-index="8" static-type="STRING"/>
						<plan:column type="column-def" column="home_addresstype" column-number="11" column-index="10" static-type="STRING"/>
						<plan:column type="column-def" column="initials" column-number="13" column-index="4" static-type="STRING"/>
						<plan:column type="column-def" column="firstname" column-number="14" column-index="5" static-type="STRING"/>
						<plan:column type="column-def" column="lastname" column-number="15" column-index="6" static-type="STRING"/>
						<plan:column type="column-def" column="lastnameprefix" column-number="16" column-index="7" static-type="STRING"/>
						<plan:column type="column-def" column="home_city" column-number="17" column-index="11" static-type="STRING"/>
						<plan:column type="column-def" column="home_street" column-number="18" column-index="12" static-type="STRING"/>
						<plan:column type="column-def" column="home_housenumber" column-number="19" column-index="13" static-type="STRING"/>
						<plan:column type="column-def" column="home_housenumbersuffix" column-number="20" column-index="14" static-type="STRING"/>
						<plan:column type="column-def" column="home_postalcode" column-number="21" column-index="15" static-type="STRING"/>
						<plan:column type="column-def" column="home_country" column-number="22" column-index="17" static-type="STRING"/>
						<plan:column type="column-def" column="postal_city" column-number="23" column-index="20" static-type="STRING"/>
						<plan:column type="column-def" column="postal_street" column-number="24" column-index="21" static-type="STRING"/>
						<plan:column type="column-def" column="postal_housenumber" column-number="25" column-index="22" static-type="STRING"/>
						<plan:column type="column-def" column="postal_housenumbersuffix" column-number="26" column-index="23" static-type="STRING"/>
						<plan:column type="column-def" column="postal_postalcode" column-number="27" column-index="24" static-type="STRING"/>
						<plan:column type="column-def" column="postal_country" column-number="28" column-index="26" static-type="STRING"/>
						<plan:column type="column-def" column="gewijzigd_op_klant" column-number="29" column-index="38" static-type="DATE"/>
						<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="30" column-index="39" static-type="DATE"/>
						<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="18154635243388465017" order="41,singletons(0,8,10)" count="373285" local-time="7212586" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						  <plan:hash left="44" right="41" op="="/>
						  <plan:bind>
						    <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="" column="gewijzigd_op_persoon" column-index="39" column-number="22" in-match="false">
							<plan:qname name="gewijzigd_op_persoon" uri="" prfx="" ltrl="gewijzigd_op_persoon"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:project id="13307884631834271045" order=",singletons(0,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						      <plan:column type="column-def" view="G" column="id" column-number="0" column-index="44" static-type="STRING"/>
						      <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
						      <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
						      <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
						      <plan:column type="column-def" column="chamberofcommercenumber" column-number="4" column-index="8" static-type="STRING"/>
						      <plan:column type="column-def" column="home_addresstype" column-number="5" column-index="10" static-type="STRING"/>
						      <plan:column type="column-def" column="initials" column-number="6" column-index="4" static-type="STRING"/>
						      <plan:column type="column-def" column="firstname" column-number="7" column-index="5" static-type="STRING"/>
						      <plan:column type="column-def" column="lastname" column-number="8" column-index="6" static-type="STRING"/>
						      <plan:column type="column-def" column="lastnameprefix" column-number="9" column-index="7" static-type="STRING"/>
						      <plan:column type="column-def" column="home_city" column-number="10" column-index="11" static-type="STRING"/>
						      <plan:column type="column-def" column="home_street" column-number="11" column-index="12" static-type="STRING"/>
						      <plan:column type="column-def" column="home_housenumber" column-number="12" column-index="13" static-type="STRING"/>
						      <plan:column type="column-def" column="home_housenumbersuffix" column-number="13" column-index="14" static-type="STRING"/>
						      <plan:column type="column-def" column="home_postalcode" column-number="14" column-index="15" static-type="STRING"/>
						      <plan:column type="column-def" column="home_country" column-number="15" column-index="17" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_city" column-number="16" column-index="20" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_street" column-number="17" column-index="21" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_housenumber" column-number="18" column-index="22" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="19" column-index="23" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_postalcode" column-number="20" column-index="24" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_country" column-number="21" column-index="26" static-type="STRING"/>
						      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="22" column-index="39" static-type="DATE"/>
						      <plan:bind>
							<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
							<plan:expr>
							  <plan:column-ref schema="" view="G" column="gewijzigd_op" column-index="51" column-number="15" in-match="false">
							    <plan:qname name="natuurlijk-persoon.gewijzigd_op" uri="" prfx="" ltrl="natuurlijk-persoon.gewijzigd_op"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:bind>
							  <plan:column type="column-def" column="postal_country" column-number="0" column-index="26"/>
							  <plan:expr>
							    <plan:column-ref schema="" view="G" column="postadres_landcode" column-index="63" column-number="28" in-match="false">
							      <plan:qname name="natuurlijk-persoon.postadres_landcode" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_landcode"/>
							    </plan:column-ref>
							  </plan:expr>
							  <plan:bind>
							    <plan:column type="column-def" column="postal_postalcode" column-number="0" column-index="24"/>
							    <plan:expr>
							      <plan:column-ref schema="" view="G" column="postadres_postcode" column-index="61" column-number="26" in-match="false">
								<plan:qname name="natuurlijk-persoon.postadres_postcode" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_postcode"/>
							      </plan:column-ref>
							    </plan:expr>
							    <plan:bind>
							      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="0" column-index="23"/>
							      <plan:expr>
								<plan:column-ref schema="" view="G" column="postadres_huisnummertoevoeging" column-index="60" column-number="25" in-match="false">
								  <plan:qname name="natuurlijk-persoon.postadres_huisnummertoevoeging" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_huisnummertoevoeging"/>
								</plan:column-ref>
							      </plan:expr>
							      <plan:bind>
								<plan:column type="column-def" column="postal_housenumber" column-number="0" column-index="22"/>
								<plan:expr>
								  <plan:column-ref schema="" view="G" column="postadres_huisnummer" column-index="59" column-number="24" in-match="false">
								    <plan:qname name="natuurlijk-persoon.postadres_huisnummer" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_huisnummer"/>
								  </plan:column-ref>
								</plan:expr>
								<plan:bind>
								  <plan:column type="column-def" column="postal_street" column-number="0" column-index="21"/>
								  <plan:expr>
								    <plan:column-ref schema="" view="G" column="postadres_straat" column-index="58" column-number="23" in-match="false">
								      <plan:qname name="natuurlijk-persoon.postadres_straat" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_straat"/>
								    </plan:column-ref>
								  </plan:expr>
								  <plan:bind>
								    <plan:column type="column-def" column="postal_city" column-number="0" column-index="20"/>
								    <plan:expr>
								      <plan:column-ref schema="" view="G" column="postadres_plaats" column-index="62" column-number="27" in-match="false">
									<plan:qname name="natuurlijk-persoon.postadres_plaats" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_plaats"/>
								      </plan:column-ref>
								    </plan:expr>
								    <plan:bind>
								      <plan:column type="column-def" column="home_country" column-number="0" column-index="17"/>
								      <plan:expr>
									<plan:column-ref schema="" view="G" column="woonadres_landcode" column-index="57" column-number="21" in-match="false">
									  <plan:qname name="natuurlijk-persoon.woonadres_landcode" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_landcode"/>
									</plan:column-ref>
								      </plan:expr>
								      <plan:bind>
									<plan:column type="column-def" column="home_postalcode" column-number="0" column-index="15"/>
									<plan:expr>
									  <plan:column-ref schema="" view="G" column="woonadres_postcode" column-index="55" column-number="19" in-match="false">
									    <plan:qname name="natuurlijk-persoon.woonadres_postcode" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_postcode"/>
									  </plan:column-ref>
									</plan:expr>
									<plan:bind>
									  <plan:column type="column-def" column="home_housenumbersuffix" column-number="0" column-index="14"/>
									  <plan:expr>
									    <plan:column-ref schema="" view="G" column="woonadres_huisnummertoevoeging" column-index="54" column-number="18" in-match="false">
									      <plan:qname name="natuurlijk-persoon.woonadres_huisnummertoevoeging" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_huisnummertoevoeging"/>
									    </plan:column-ref>
									  </plan:expr>
									  <plan:bind>
									    <plan:column type="column-def" column="home_housenumber" column-number="0" column-index="13"/>
									    <plan:expr>
									      <plan:column-ref schema="" view="G" column="woonadres_huisnummer" column-index="53" column-number="17" in-match="false">
										<plan:qname name="natuurlijk-persoon.woonadres_huisnummer" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_huisnummer"/>
									      </plan:column-ref>
									    </plan:expr>
									    <plan:bind>
									      <plan:column type="column-def" column="home_street" column-number="0" column-index="12"/>
									      <plan:expr>
										<plan:column-ref schema="" view="G" column="woonadres_straat" column-index="52" column-number="16" in-match="false">
										  <plan:qname name="natuurlijk-persoon.woonadres_straat" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_straat"/>
										</plan:column-ref>
									      </plan:expr>
									      <plan:bind>
										<plan:column type="column-def" column="home_city" column-number="0" column-index="11"/>
										<plan:expr>
										  <plan:column-ref schema="" view="G" column="woonadres_plaats" column-index="56" column-number="20" in-match="false">
										    <plan:qname name="natuurlijk-persoon.woonadres_plaats" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_plaats"/>
										  </plan:column-ref>
										</plan:expr>
										<plan:bind>
										  <plan:column type="column-def" column="lastnameprefix" column-number="0" column-index="7"/>
										  <plan:expr>
										    <plan:column-ref schema="" view="G" column="tussenvoegsel" column-index="47" column-number="5" in-match="false">
										      <plan:qname name="natuurlijk-persoon.tussenvoegsel" uri="" prfx="" ltrl="natuurlijk-persoon.tussenvoegsel"/>
										    </plan:column-ref>
										  </plan:expr>
										  <plan:bind>
										    <plan:column type="column-def" column="lastname" column-number="0" column-index="6"/>
										    <plan:expr>
										      <plan:column-ref schema="" view="G" column="achternaam" column-index="48" column-number="6" in-match="false">
											<plan:qname name="natuurlijk-persoon.achternaam" uri="" prfx="" ltrl="natuurlijk-persoon.achternaam"/>
										      </plan:column-ref>
										    </plan:expr>
										    <plan:bind>
										      <plan:column type="column-def" column="firstname" column-number="0" column-index="5"/>
										      <plan:expr>
											<plan:column-ref schema="" view="G" column="voornaam" column-index="46" column-number="4" in-match="false">
											  <plan:qname name="natuurlijk-persoon.voornaam" uri="" prfx="" ltrl="natuurlijk-persoon.voornaam"/>
											</plan:column-ref>
										      </plan:expr>
										      <plan:bind>
											<plan:column type="column-def" column="initials" column-number="0" column-index="4"/>
											<plan:expr>
											  <plan:column-ref schema="" view="G" column="voorletters" column-index="45" column-number="3" in-match="false">
											    <plan:qname name="natuurlijk-persoon.voorletters" uri="" prfx="" ltrl="natuurlijk-persoon.voorletters"/>
											  </plan:column-ref>
											</plan:expr>
											<plan:bind>
											  <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
											  <plan:expr>
											    <plan:literal>
											      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Home</plan:value>
											    </plan:literal>
											  </plan:expr>
											  <plan:bind>
											    <plan:column type="column-def" column="chamberofcommercenumber" column-number="0" column-index="8"/>
											    <plan:expr>
											      <plan:literal>
												<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
											      </plan:literal>
											    </plan:expr>
											    <plan:bind>
											      <plan:column type="column-def" column="citizenservicenumber" column-number="0" column-index="3"/>
											      <plan:expr>
												<plan:column-ref schema="" view="G" column="bsn" column-index="50" column-number="10" in-match="false">
												  <plan:qname name="natuurlijk-persoon.bsn" uri="" prfx="" ltrl="natuurlijk-persoon.bsn"/>
												</plan:column-ref>
											      </plan:expr>
											      <plan:bind>
												<plan:column type="column-def" column="dateofbirth" column-number="0" column-index="2"/>
												<plan:expr>
												  <plan:column-ref schema="" view="G" column="geboortedatum" column-index="49" column-number="9" in-match="false">
												    <plan:qname name="natuurlijk-persoon.geboortedatum" uri="" prfx="" ltrl="natuurlijk-persoon.geboortedatum"/>
												  </plan:column-ref>
												</plan:expr>
												<plan:bind>
												  <plan:column type="column-def" column="customercategory" column-number="0" column-index="0"/>
												  <plan:expr>
												    <plan:literal>
												      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">accountHolderNaturalPersons</plan:value>
												    </plan:literal>
												  </plan:expr>
												  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/H" schemaID="12461121416219388462" viewID="13968452873791756530" allNullable="false" id="6142098997108455784" order="64" count="2278176" local-time="199262719" remote-time="402923216" local-max-memory="10579968" remote-max-memory="21862256">
												    <plan:column nullable="false">
												      <plan:id column="Schema1.H.id" columnID="2269332283740193252"/>
												      <plan:name type="column-def" view="G" column="id" column-number="0" column-index="44" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.voorletters" columnID="10663847120134103955"/>
												      <plan:name type="column-def" view="G" column="voorletters" column-number="3" column-index="45" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.voornaam" columnID="13101646669357427018"/>
												      <plan:name type="column-def" view="G" column="voornaam" column-number="4" column-index="46" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.tussenvoegsel" columnID="10860458230696742849"/>
												      <plan:name type="column-def" view="G" column="tussenvoegsel" column-number="5" column-index="47" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.achternaam" columnID="4911861486200911476"/>
												      <plan:name type="column-def" view="G" column="achternaam" column-number="6" column-index="48" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.geboortedatum" columnID="4318895951789267815"/>
												      <plan:name type="column-def" view="G" column="geboortedatum" column-number="9" column-index="49" static-type="DATE"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.bsn" columnID="16541296566533486526"/>
												      <plan:name type="column-def" view="G" column="bsn" column-number="10" column-index="50" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.gewijzigd_op" columnID="15747097219539404102"/>
												      <plan:name type="column-def" view="G" column="gewijzigd_op" column-number="15" column-index="51" static-type="DATE"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_straat" columnID="13905940175095996468"/>
												      <plan:name type="column-def" view="G" column="woonadres_straat" column-number="16" column-index="52" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_huisnummer" columnID="13155675805959606370"/>
												      <plan:name type="column-def" view="G" column="woonadres_huisnummer" column-number="17" column-index="53" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_huisnummertoevoeging" columnID="8515707449716936627"/>
												      <plan:name type="column-def" view="G" column="woonadres_huisnummertoevoeging" column-number="18" column-index="54" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_postcode" columnID="16084670478822038122"/>
												      <plan:name type="column-def" view="G" column="woonadres_postcode" column-number="19" column-index="55" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_plaats" columnID="6577887777916223514"/>
												      <plan:name type="column-def" view="G" column="woonadres_plaats" column-number="20" column-index="56" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_landcode" columnID="14139891273980418031"/>
												      <plan:name type="column-def" view="G" column="woonadres_landcode" column-number="21" column-index="57" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_straat" columnID="6951721510249974579"/>
												      <plan:name type="column-def" view="G" column="postadres_straat" column-number="23" column-index="58" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_huisnummer" columnID="16889446679320615756"/>
												      <plan:name type="column-def" view="G" column="postadres_huisnummer" column-number="24" column-index="59" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_huisnummertoevoeging" columnID="3552252239413880381"/>
												      <plan:name type="column-def" view="G" column="postadres_huisnummertoevoeging" column-number="25" column-index="60" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_postcode" columnID="307611415459386677"/>
												      <plan:name type="column-def" view="G" column="postadres_postcode" column-number="26" column-index="61" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_plaats" columnID="17637997253673265944"/>
												      <plan:name type="column-def" view="G" column="postadres_plaats" column-number="27" column-index="62" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_landcode" columnID="3550696990979854006"/>
												      <plan:name type="column-def" view="G" column="postadres_landcode" column-number="28" column-index="63" static-type="STRING"/>
												    </plan:column>
												    <plan:row type="column-def" view="G" column="rowid" column-number="30" column-index="64" hidden="true"/>
												  </plan:template-view>
												</plan:bind>
											      </plan:bind>
											    </plan:bind>
											  </plan:bind>
											</plan:bind>
										      </plan:bind>
										    </plan:bind>
										  </plan:bind>
										</plan:bind>
									      </plan:bind>
									    </plan:bind>
									  </plan:bind>
									</plan:bind>
								      </plan:bind>
								    </plan:bind>
								  </plan:bind>
								</plan:bind>
							      </plan:bind>
							    </plan:bind>
							  </plan:bind>
							</plan:bind>
						      </plan:bind>
						    </plan:project>
						  </plan:bind>
						  <plan:bind>
						    <plan:column type="column-def" column="gewijzigd_op_klant" column-number="0" column-index="38"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="C" column="gewijzigd_op" column-index="42" column-number="6" in-match="false">
							<plan:qname name="klant.gewijzigd_op" uri="" prfx="" ltrl="klant.gewijzigd_op"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/C" schemaID="12461121416219388462" viewID="9168834070795060460" allNullable="false" id="17506916954973918221" order="43" count="768370" local-time="44575670" remote-time="144842810" local-max-memory="9928704" remote-max-memory="20606976">
						      <plan:column nullable="false">
							<plan:id column="Schema1.C.id" columnID="13381157793951950771"/>
							<plan:name type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.C.persoon_2_id" columnID="13031168050674140154"/>
							<plan:name type="column-def" view="C" column="persoon_2_id" column-number="3" column-index="41" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.C.gewijzigd_op" columnID="14598689193384857406"/>
							<plan:name type="column-def" view="C" column="gewijzigd_op" column-number="6" column-index="42" static-type="DATE"/>
						      </plan:column>
						      <plan:row type="column-def" view="C" column="rowid" column-number="7" column-index="43" hidden="true"/>
						    </plan:template-view>
						  </plan:bind>
						  <plan:filters>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="C" column="persoon_2_id" column-number="6" column-index="41"/>
						      <plan:right type="column-def" view="G" column="id" column-number="0" column-index="44"/>
						    </plan:join-filter>
						  </plan:filters>
						</plan:join>
					      </plan:project>
					      <plan:project id="13307884631834271045" order=",singletons(0,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						<plan:column type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
						<plan:column type="column-def" column="customercategory" column-number="3" column-index="0" static-type="STRING"/>
						<plan:column type="column-def" column="dateofbirth" column-number="5" column-index="2" static-type="DATE"/>
						<plan:column type="column-def" column="citizenservicenumber" column-number="7" column-index="3" static-type="STRING"/>
						<plan:column type="column-def" column="chamberofcommercenumber" column-number="9" column-index="8" static-type="STRING"/>
						<plan:column type="column-def" column="home_addresstype" column-number="11" column-index="10" static-type="STRING"/>
						<plan:column type="column-def" column="initials" column-number="13" column-index="4" static-type="STRING"/>
						<plan:column type="column-def" column="firstname" column-number="14" column-index="5" static-type="STRING"/>
						<plan:column type="column-def" column="lastname" column-number="15" column-index="6" static-type="STRING"/>
						<plan:column type="column-def" column="lastnameprefix" column-number="16" column-index="7" static-type="STRING"/>
						<plan:column type="column-def" column="home_city" column-number="17" column-index="11" static-type="STRING"/>
						<plan:column type="column-def" column="home_street" column-number="18" column-index="12" static-type="STRING"/>
						<plan:column type="column-def" column="home_housenumber" column-number="19" column-index="13" static-type="STRING"/>
						<plan:column type="column-def" column="home_housenumbersuffix" column-number="20" column-index="14" static-type="STRING"/>
						<plan:column type="column-def" column="home_postalcode" column-number="21" column-index="15" static-type="STRING"/>
						<plan:column type="column-def" column="home_country" column-number="22" column-index="17" static-type="STRING"/>
						<plan:column type="column-def" column="postal_city" column-number="23" column-index="20" static-type="STRING"/>
						<plan:column type="column-def" column="postal_street" column-number="24" column-index="21" static-type="STRING"/>
						<plan:column type="column-def" column="postal_housenumber" column-number="25" column-index="22" static-type="STRING"/>
						<plan:column type="column-def" column="postal_housenumbersuffix" column-number="26" column-index="23" static-type="STRING"/>
						<plan:column type="column-def" column="postal_postalcode" column-number="27" column-index="24" static-type="STRING"/>
						<plan:column type="column-def" column="postal_country" column-number="28" column-index="26" static-type="STRING"/>
						<plan:column type="column-def" column="gewijzigd_op_klant" column-number="29" column-index="38" static-type="DATE"/>
						<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="30" column-index="39" static-type="DATE"/>
						<plan:join type="parallel-sort-merge-join" sparql-semantics="false" id="8264375888626505049" order="41,singletons(0,8,10)" count="756783" local-time="13626312" remote-time="0" local-max-memory="0" remote-max-memory="0" left-num-sorted="0" right-num-sorted="0">
						  <plan:hash left="44" right="41" op="="/>
						  <plan:bind>
						    <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="" column="gewijzigd_op_persoon" column-index="39" column-number="22" in-match="false">
							<plan:qname name="gewijzigd_op_persoon" uri="" prfx="" ltrl="gewijzigd_op_persoon"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:project id="13307884631834271045" order=",singletons(0,8,10)" count="953217" local-time="24435371" remote-time="42882750" local-max-memory="416502072" remote-max-memory="472155360">
						      <plan:column type="column-def" view="G" column="id" column-number="0" column-index="44" static-type="STRING"/>
						      <plan:column type="column-def" column="customercategory" column-number="1" column-index="0" static-type="STRING"/>
						      <plan:column type="column-def" column="dateofbirth" column-number="2" column-index="2" static-type="DATE"/>
						      <plan:column type="column-def" column="citizenservicenumber" column-number="3" column-index="3" static-type="STRING"/>
						      <plan:column type="column-def" column="chamberofcommercenumber" column-number="4" column-index="8" static-type="STRING"/>
						      <plan:column type="column-def" column="home_addresstype" column-number="5" column-index="10" static-type="STRING"/>
						      <plan:column type="column-def" column="initials" column-number="6" column-index="4" static-type="STRING"/>
						      <plan:column type="column-def" column="firstname" column-number="7" column-index="5" static-type="STRING"/>
						      <plan:column type="column-def" column="lastname" column-number="8" column-index="6" static-type="STRING"/>
						      <plan:column type="column-def" column="lastnameprefix" column-number="9" column-index="7" static-type="STRING"/>
						      <plan:column type="column-def" column="home_city" column-number="10" column-index="11" static-type="STRING"/>
						      <plan:column type="column-def" column="home_street" column-number="11" column-index="12" static-type="STRING"/>
						      <plan:column type="column-def" column="home_housenumber" column-number="12" column-index="13" static-type="STRING"/>
						      <plan:column type="column-def" column="home_housenumbersuffix" column-number="13" column-index="14" static-type="STRING"/>
						      <plan:column type="column-def" column="home_postalcode" column-number="14" column-index="15" static-type="STRING"/>
						      <plan:column type="column-def" column="home_country" column-number="15" column-index="17" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_city" column-number="16" column-index="20" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_street" column-number="17" column-index="21" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_housenumber" column-number="18" column-index="22" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="19" column-index="23" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_postalcode" column-number="20" column-index="24" static-type="STRING"/>
						      <plan:column type="column-def" column="postal_country" column-number="21" column-index="26" static-type="STRING"/>
						      <plan:column type="column-def" column="gewijzigd_op_persoon" column-number="22" column-index="39" static-type="DATE"/>
						      <plan:bind>
							<plan:column type="column-def" column="gewijzigd_op_persoon" column-number="0" column-index="39"/>
							<plan:expr>
							  <plan:column-ref schema="" view="G" column="gewijzigd_op" column-index="51" column-number="15" in-match="false">
							    <plan:qname name="natuurlijk-persoon.gewijzigd_op" uri="" prfx="" ltrl="natuurlijk-persoon.gewijzigd_op"/>
							  </plan:column-ref>
							</plan:expr>
							<plan:bind>
							  <plan:column type="column-def" column="postal_country" column-number="0" column-index="26"/>
							  <plan:expr>
							    <plan:column-ref schema="" view="G" column="postadres_landcode" column-index="63" column-number="28" in-match="false">
							      <plan:qname name="natuurlijk-persoon.postadres_landcode" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_landcode"/>
							    </plan:column-ref>
							  </plan:expr>
							  <plan:bind>
							    <plan:column type="column-def" column="postal_postalcode" column-number="0" column-index="24"/>
							    <plan:expr>
							      <plan:column-ref schema="" view="G" column="postadres_postcode" column-index="61" column-number="26" in-match="false">
								<plan:qname name="natuurlijk-persoon.postadres_postcode" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_postcode"/>
							      </plan:column-ref>
							    </plan:expr>
							    <plan:bind>
							      <plan:column type="column-def" column="postal_housenumbersuffix" column-number="0" column-index="23"/>
							      <plan:expr>
								<plan:column-ref schema="" view="G" column="postadres_huisnummertoevoeging" column-index="60" column-number="25" in-match="false">
								  <plan:qname name="natuurlijk-persoon.postadres_huisnummertoevoeging" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_huisnummertoevoeging"/>
								</plan:column-ref>
							      </plan:expr>
							      <plan:bind>
								<plan:column type="column-def" column="postal_housenumber" column-number="0" column-index="22"/>
								<plan:expr>
								  <plan:column-ref schema="" view="G" column="postadres_huisnummer" column-index="59" column-number="24" in-match="false">
								    <plan:qname name="natuurlijk-persoon.postadres_huisnummer" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_huisnummer"/>
								  </plan:column-ref>
								</plan:expr>
								<plan:bind>
								  <plan:column type="column-def" column="postal_street" column-number="0" column-index="21"/>
								  <plan:expr>
								    <plan:column-ref schema="" view="G" column="postadres_straat" column-index="58" column-number="23" in-match="false">
								      <plan:qname name="natuurlijk-persoon.postadres_straat" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_straat"/>
								    </plan:column-ref>
								  </plan:expr>
								  <plan:bind>
								    <plan:column type="column-def" column="postal_city" column-number="0" column-index="20"/>
								    <plan:expr>
								      <plan:column-ref schema="" view="G" column="postadres_plaats" column-index="62" column-number="27" in-match="false">
									<plan:qname name="natuurlijk-persoon.postadres_plaats" uri="" prfx="" ltrl="natuurlijk-persoon.postadres_plaats"/>
								      </plan:column-ref>
								    </plan:expr>
								    <plan:bind>
								      <plan:column type="column-def" column="home_country" column-number="0" column-index="17"/>
								      <plan:expr>
									<plan:column-ref schema="" view="G" column="woonadres_landcode" column-index="57" column-number="21" in-match="false">
									  <plan:qname name="natuurlijk-persoon.woonadres_landcode" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_landcode"/>
									</plan:column-ref>
								      </plan:expr>
								      <plan:bind>
									<plan:column type="column-def" column="home_postalcode" column-number="0" column-index="15"/>
									<plan:expr>
									  <plan:column-ref schema="" view="G" column="woonadres_postcode" column-index="55" column-number="19" in-match="false">
									    <plan:qname name="natuurlijk-persoon.woonadres_postcode" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_postcode"/>
									  </plan:column-ref>
									</plan:expr>
									<plan:bind>
									  <plan:column type="column-def" column="home_housenumbersuffix" column-number="0" column-index="14"/>
									  <plan:expr>
									    <plan:column-ref schema="" view="G" column="woonadres_huisnummertoevoeging" column-index="54" column-number="18" in-match="false">
									      <plan:qname name="natuurlijk-persoon.woonadres_huisnummertoevoeging" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_huisnummertoevoeging"/>
									    </plan:column-ref>
									  </plan:expr>
									  <plan:bind>
									    <plan:column type="column-def" column="home_housenumber" column-number="0" column-index="13"/>
									    <plan:expr>
									      <plan:column-ref schema="" view="G" column="woonadres_huisnummer" column-index="53" column-number="17" in-match="false">
										<plan:qname name="natuurlijk-persoon.woonadres_huisnummer" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_huisnummer"/>
									      </plan:column-ref>
									    </plan:expr>
									    <plan:bind>
									      <plan:column type="column-def" column="home_street" column-number="0" column-index="12"/>
									      <plan:expr>
										<plan:column-ref schema="" view="G" column="woonadres_straat" column-index="52" column-number="16" in-match="false">
										  <plan:qname name="natuurlijk-persoon.woonadres_straat" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_straat"/>
										</plan:column-ref>
									      </plan:expr>
									      <plan:bind>
										<plan:column type="column-def" column="home_city" column-number="0" column-index="11"/>
										<plan:expr>
										  <plan:column-ref schema="" view="G" column="woonadres_plaats" column-index="56" column-number="20" in-match="false">
										    <plan:qname name="natuurlijk-persoon.woonadres_plaats" uri="" prfx="" ltrl="natuurlijk-persoon.woonadres_plaats"/>
										  </plan:column-ref>
										</plan:expr>
										<plan:bind>
										  <plan:column type="column-def" column="lastnameprefix" column-number="0" column-index="7"/>
										  <plan:expr>
										    <plan:column-ref schema="" view="G" column="tussenvoegsel" column-index="47" column-number="5" in-match="false">
										      <plan:qname name="natuurlijk-persoon.tussenvoegsel" uri="" prfx="" ltrl="natuurlijk-persoon.tussenvoegsel"/>
										    </plan:column-ref>
										  </plan:expr>
										  <plan:bind>
										    <plan:column type="column-def" column="lastname" column-number="0" column-index="6"/>
										    <plan:expr>
										      <plan:column-ref schema="" view="G" column="achternaam" column-index="48" column-number="6" in-match="false">
											<plan:qname name="natuurlijk-persoon.achternaam" uri="" prfx="" ltrl="natuurlijk-persoon.achternaam"/>
										      </plan:column-ref>
										    </plan:expr>
										    <plan:bind>
										      <plan:column type="column-def" column="firstname" column-number="0" column-index="5"/>
										      <plan:expr>
											<plan:column-ref schema="" view="G" column="voornaam" column-index="46" column-number="4" in-match="false">
											  <plan:qname name="natuurlijk-persoon.voornaam" uri="" prfx="" ltrl="natuurlijk-persoon.voornaam"/>
											</plan:column-ref>
										      </plan:expr>
										      <plan:bind>
											<plan:column type="column-def" column="initials" column-number="0" column-index="4"/>
											<plan:expr>
											  <plan:column-ref schema="" view="G" column="voorletters" column-index="45" column-number="3" in-match="false">
											    <plan:qname name="natuurlijk-persoon.voorletters" uri="" prfx="" ltrl="natuurlijk-persoon.voorletters"/>
											  </plan:column-ref>
											</plan:expr>
											<plan:bind>
											  <plan:column type="column-def" column="home_addresstype" column-number="0" column-index="10"/>
											  <plan:expr>
											    <plan:literal>
											      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Home</plan:value>
											    </plan:literal>
											  </plan:expr>
											  <plan:bind>
											    <plan:column type="column-def" column="chamberofcommercenumber" column-number="0" column-index="8"/>
											    <plan:expr>
											      <plan:literal>
												<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"/>
											      </plan:literal>
											    </plan:expr>
											    <plan:bind>
											      <plan:column type="column-def" column="citizenservicenumber" column-number="0" column-index="3"/>
											      <plan:expr>
												<plan:column-ref schema="" view="G" column="bsn" column-index="50" column-number="10" in-match="false">
												  <plan:qname name="natuurlijk-persoon.bsn" uri="" prfx="" ltrl="natuurlijk-persoon.bsn"/>
												</plan:column-ref>
											      </plan:expr>
											      <plan:bind>
												<plan:column type="column-def" column="dateofbirth" column-number="0" column-index="2"/>
												<plan:expr>
												  <plan:column-ref schema="" view="G" column="geboortedatum" column-index="49" column-number="9" in-match="false">
												    <plan:qname name="natuurlijk-persoon.geboortedatum" uri="" prfx="" ltrl="natuurlijk-persoon.geboortedatum"/>
												  </plan:column-ref>
												</plan:expr>
												<plan:bind>
												  <plan:column type="column-def" column="customercategory" column-number="0" column-index="0"/>
												  <plan:expr>
												    <plan:literal>
												      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">accountHolderNaturalPersons</plan:value>
												    </plan:literal>
												  </plan:expr>
												  <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/H" schemaID="12461121416219388462" viewID="13968452873791756530" allNullable="false" id="6142098997108455784" order="64" count="2278176" local-time="199262719" remote-time="402923216" local-max-memory="10579968" remote-max-memory="21862256">
												    <plan:column nullable="false">
												      <plan:id column="Schema1.H.id" columnID="2269332283740193252"/>
												      <plan:name type="column-def" view="G" column="id" column-number="0" column-index="44" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.voorletters" columnID="10663847120134103955"/>
												      <plan:name type="column-def" view="G" column="voorletters" column-number="3" column-index="45" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.voornaam" columnID="13101646669357427018"/>
												      <plan:name type="column-def" view="G" column="voornaam" column-number="4" column-index="46" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.tussenvoegsel" columnID="10860458230696742849"/>
												      <plan:name type="column-def" view="G" column="tussenvoegsel" column-number="5" column-index="47" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.achternaam" columnID="4911861486200911476"/>
												      <plan:name type="column-def" view="G" column="achternaam" column-number="6" column-index="48" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.geboortedatum" columnID="4318895951789267815"/>
												      <plan:name type="column-def" view="G" column="geboortedatum" column-number="9" column-index="49" static-type="DATE"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.bsn" columnID="16541296566533486526"/>
												      <plan:name type="column-def" view="G" column="bsn" column-number="10" column-index="50" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.gewijzigd_op" columnID="15747097219539404102"/>
												      <plan:name type="column-def" view="G" column="gewijzigd_op" column-number="15" column-index="51" static-type="DATE"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_straat" columnID="13905940175095996468"/>
												      <plan:name type="column-def" view="G" column="woonadres_straat" column-number="16" column-index="52" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_huisnummer" columnID="13155675805959606370"/>
												      <plan:name type="column-def" view="G" column="woonadres_huisnummer" column-number="17" column-index="53" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_huisnummertoevoeging" columnID="8515707449716936627"/>
												      <plan:name type="column-def" view="G" column="woonadres_huisnummertoevoeging" column-number="18" column-index="54" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_postcode" columnID="16084670478822038122"/>
												      <plan:name type="column-def" view="G" column="woonadres_postcode" column-number="19" column-index="55" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_plaats" columnID="6577887777916223514"/>
												      <plan:name type="column-def" view="G" column="woonadres_plaats" column-number="20" column-index="56" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.woonadres_landcode" columnID="14139891273980418031"/>
												      <plan:name type="column-def" view="G" column="woonadres_landcode" column-number="21" column-index="57" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_straat" columnID="6951721510249974579"/>
												      <plan:name type="column-def" view="G" column="postadres_straat" column-number="23" column-index="58" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_huisnummer" columnID="16889446679320615756"/>
												      <plan:name type="column-def" view="G" column="postadres_huisnummer" column-number="24" column-index="59" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_huisnummertoevoeging" columnID="3552252239413880381"/>
												      <plan:name type="column-def" view="G" column="postadres_huisnummertoevoeging" column-number="25" column-index="60" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_postcode" columnID="307611415459386677"/>
												      <plan:name type="column-def" view="G" column="postadres_postcode" column-number="26" column-index="61" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_plaats" columnID="17637997253673265944"/>
												      <plan:name type="column-def" view="G" column="postadres_plaats" column-number="27" column-index="62" static-type="STRING"/>
												    </plan:column>
												    <plan:column nullable="true">
												      <plan:id column="Schema1.H.postadres_landcode" columnID="3550696990979854006"/>
												      <plan:name type="column-def" view="G" column="postadres_landcode" column-number="28" column-index="63" static-type="STRING"/>
												    </plan:column>
												    <plan:row type="column-def" view="G" column="rowid" column-number="30" column-index="64" hidden="true"/>
												  </plan:template-view>
												</plan:bind>
											      </plan:bind>
											    </plan:bind>
											  </plan:bind>
											</plan:bind>
										      </plan:bind>
										    </plan:bind>
										  </plan:bind>
										</plan:bind>
									      </plan:bind>
									    </plan:bind>
									  </plan:bind>
									</plan:bind>
								      </plan:bind>
								    </plan:bind>
								  </plan:bind>
								</plan:bind>
							      </plan:bind>
							    </plan:bind>
							  </plan:bind>
							</plan:bind>
						      </plan:bind>
						    </plan:project>
						  </plan:bind>
						  <plan:bind>
						    <plan:column type="column-def" column="gewijzigd_op_klant" column-number="0" column-index="38"/>
						    <plan:expr>
						      <plan:column-ref schema="" view="C" column="gewijzigd_op" column-index="42" column-number="6" in-match="false">
							<plan:qname name="klant.gewijzigd_op" uri="" prfx="" ltrl="klant.gewijzigd_op"/>
						      </plan:column-ref>
						    </plan:expr>
						    <plan:template-view type="column" iri="http://marklogic.com/view/Schema1/C" schemaID="12461121416219388462" viewID="9168834070795060460" allNullable="false" id="5169957886206599373" order="43" count="768370" local-time="123053971" remote-time="262943136" local-max-memory="9732096" remote-max-memory="20579328">
						      <plan:column nullable="false">
							<plan:id column="Schema1.C.id" columnID="13381157793951950771"/>
							<plan:name type="column-def" view="C" column="id" column-number="0" column-index="40" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.C.persoon_1_id" columnID="621130228927095484"/>
							<plan:name type="column-def" view="C" column="persoon_1_id" column-number="2" column-index="41" static-type="STRING"/>
						      </plan:column>
						      <plan:column nullable="true">
							<plan:id column="Schema1.C.gewijzigd_op" columnID="14598689193384857406"/>
							<plan:name type="column-def" view="C" column="gewijzigd_op" column-number="6" column-index="42" static-type="DATE"/>
						      </plan:column>
						      <plan:row type="column-def" view="C" column="rowid" column-number="7" column-index="43" hidden="true"/>
						    </plan:template-view>
						  </plan:bind>
						  <plan:filters>
						    <plan:join-filter op="=">
						      <plan:left type="column-def" view="C" column="persoon_1_id" column-number="4" column-index="41"/>
						      <plan:right type="column-def" view="G" column="id" column-number="0" column-index="44"/>
						    </plan:join-filter>
						  </plan:filters>
						</plan:join>
					      </plan:project>
					    </plan:sparql-union>
					    <plan:filters>
					      <plan:join-filter op="=">
						<plan:left type="column-def" view="D" column="klant_id" column-number="0" column-index="41"/>
						<plan:right type="column-def" view="C" column="id" column-number="0" column-index="40"/>
					      </plan:join-filter>
					    </plan:filters>
					  </plan:join>
					  <plan:filters/>
					  <plan:ljfilters>
					    <plan:value-compare op="EQ">
					      <plan:expr>
						<plan:column-ref schema="" view="D" column="klant_id" column-index="41" column-number="0" in-match="false">
						  <plan:qname name="klantproduct.klant_id" uri="" prfx="" ltrl="klantproduct.klant_id"/>
						</plan:column-ref>
					      </plan:expr>
					      <plan:term>
						<plan:column-ref schema="" view="A" column="klant_id" column-index="43" column-number="0" in-match="false">
						  <plan:qname name="A.klant_id" uri="" prfx="" ltrl="A.klant_id"/>
						</plan:column-ref>
					      </plan:term>
					    </plan:value-compare>
					  </plan:ljfilters>
					</plan:right-join>
				      </plan:bind>
				    </plan:bind>
				  </plan:bind>
				</plan:bind>
			      </plan:bind>
			    </plan:bind>
			  </plan:bind>
			</plan:bind>
		      </plan:bind>
		    </plan:project>
		  </plan:sparql-union>
		</plan:sparql-union>
	      </plan:bind>
	    </plan:bind>
	  </plan:bind>
	</plan:bind>
      </plan:bind>
    </plan:project>
  </plan:project>
</plan:plan>
)
=>map:with("expected",(
'{"order":",singletons(30,33)", "_id":"N", "_name":"project", "column":["0 (customercategory)", "1 (activecustomer)", "2 (dateofbirth)", "3 (citizenservicenumber)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "8 (chamberofcommercenumber)", "9 (organisationname)", "10 (home_addresstype)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "16 (home_pobox)", "17 (home_country)", "18 (home_otheraddressdata)", "19 (postal_addresstype)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "25 (postal_pobox)", "26 (postal_country)", "27 (postal_otheraddressdata)", "28 (product_grp_id)", "29 (productnumber)", "30 (contractparty)", "31 (status)", "32 (last_modified_date)", "33 (authstatus)", "34 (start_date)", "35 (end_date)"], "id":"2305728392451283042"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(30,33)", "count":"953217", "_id":"N_1", "_parent":"N", "_name":"project", "column":["0 (customercategory)", "1 (activecustomer)", "2 (dateofbirth)", "3 (citizenservicenumber)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "8 (chamberofcommercenumber)", "9 (organisationname)", "10 (home_addresstype)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "16 (home_pobox)", "17 (home_country)", "18 (home_otheraddressdata)", "19 (postal_addresstype)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "25 (postal_pobox)", "26 (postal_country)", "27 (postal_otheraddressdata)", "28 (product_grp_id)", "29 (productnumber)", "30 (contractparty)", "31 (status)", "32 (last_modified_date)", "33 (authstatus)", "34 (start_date)", "35 (end_date)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1", "expr":"einddatum_product as end_date", "_parent":"N_1", "_name":"bind"}',
'{"_id":"N_1_1_1", "expr":"ingangsdatum_product as start_date", "_parent":"N_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1", "expr":"\"N\" as authstatus", "_parent":"N_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1", "expr":"if(fn:max((fn:format-dateTime(ingangsdatum_product cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"), fn:format-dateTime(gewijzigd_op_klant cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"), fn:format-dateTime(gewijzigd_op_persoon cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"))) cast as xs:dateTime* gt fn:current-dateTime()) then fn:current-dateTime() else fn:max((fn:format-dateTime(ingangsdatum_product cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"), fn:format-dateTime(gewijzigd_op_klant cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"), fn:format-dateTime(gewijzigd_op_persoon cast as xs:dateTime*, \"[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]\"))) as last_modified_date", "_parent":"N_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1", "expr":"\"AAHG\" as contractparty", "_parent":"N_1_1_1_1_1", "_name":"bind"}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"910048", "_id":"N_1_1_1_1_1_1_1", "type":"concat-union", "_parent":"N_1_1_1_1_1_1", "_name":"sparql-union", "id":"14000555563090560528"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,1,3,8,9,10,16,18,19,20,21,22,23,24,25,26,27,28,39)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1", "_name":"project", "column":["1 (activecustomer)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "8 (chamberofcommercenumber)", "9 (organisationname)", "10 (home_addresstype)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "16 (home_pobox)", "17 (home_country)", "18 (home_otheraddressdata)", "19 (postal_addresstype)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "25 (postal_pobox)", "26 (postal_country)", "27 (postal_otheraddressdata)", "28 (product_grp_id)", "29 (productnumber)", "31 (status)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"local-max-memory":"457.98Kb", "order":",singletons(0,1,3,8,9,10,16,18,19,20,21,22,23,24,25,26,27,28,39)", "count":"0", "condition":"10=10 and 39=39 and 40=43", "join-filter":"B.id=I.lening_id", "_name":"scatter-join", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"0.6ms", "id":"7346248796880058282", "_id":"N_1_1_1_1_1_1_1_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_1"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,3,8,10,20,21,22,23,24,26,39)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1_1_1_1_1", "_parentLabel":"left", "_name":"project", "column":["40 (I.lening_id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1", "expr":"\"\" as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_1_1_L", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1", "expr":"\"\" as postal_country", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1", "expr":"\"\" as postal_postalcode", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1", "expr":"\"\" as postal_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1", "expr":"\"\" as postal_housenumber", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1", "expr":"\"\" as postal_street", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1", "expr":"\"\" as postal_city", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1", "expr":"I.landcode as home_country", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1", "expr":"I.postcode as home_postalcode", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1", "expr":"I.huisnummertoevoeging as home_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.huisnummer as home_housenumber", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.straat as home_street", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.plaats as home_city", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.tussenvoegsel as lastnameprefix", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.achternaam as lastname", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.voornaam as firstname", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.voorletters as initials", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"Home\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as chamberofcommercenumber", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as citizenservicenumber", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"I.geboortedatum as dateofbirth", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"accountHolderNaturalPersons\" as customercategory", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"local-max-memory":"560Kb", "allNullable":"false", "order":"52", "count":"0", "row":"52 (I.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"518.25ms", "id":"9203952158901207756", "iri":"http://marklogic.com/view/Schema1/I", "local-time":"93.3ms", "remote-max-memory":"1.67Mb", "_id":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "type":"row", "viewID":"11684200299354735792", "_parent":"N_1_1_1_1_1_1_1_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "column":["40 (I.lening_id)", "41 (I.voorletters) [nullable]", "42 (I.voornaam) [nullable]", "43 (I.tussenvoegsel) [nullable]", "44 (I.achternaam) [nullable]", "45 (I.geboortedatum) [nullable]", "46 (I.straat) [nullable]", "47 (I.huisnummer) [nullable]", "48 (I.huisnummertoevoeging) [nullable]", "49 (I.postcode) [nullable]", "50 (I.plaats) [nullable]", "51 (I.landcode) [nullable]"]}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_1_1_R", "expr":"B.ingangsdatum as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1", "expr":"B.ingangsdatum as gewijzigd_op_klant", "_parent":"N_1_1_1_1_1_1_1_1_1_R", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1", "expr":"B.einddatum as einddatum_product", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1", "expr":"B.ingangsdatum as ingangsdatum_product", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1", "expr":"if(B.in_beheer eq xs:boolean(\"true\")) then \"active\" else \"inactive\" as status", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1", "expr":"B.leningnummer as productnumber", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1", "expr":"\"\" as postal_pobox", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1", "expr":"\"\" as postal_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1", "expr":"\"\" as organisationname", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1", "expr":"\"67\" as product_grp_id", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1", "expr":"\"Postal\" as postal_addresstype", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as home_pobox", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as home_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"Home\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"TRUE\" as activecustomer", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"project", "column":["41 (B.leningnummer)", "42 (B.in_beheer)", "43 (B.id)", "44 (B.ingangsdatum)", "45 (B.einddatum)"], "id":"13307884631834271045"}',
'{"remote-time":"1.22ms", "local-time":"0.92ms", "remote-max-memory":"2.39Mb", "local-max-memory":"2.12Mb", "order":"47", "count":"0", "_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "condition":"47=47", "_name":"scatter-join", "id":"12660193031065545662"}',
'{"local-max-memory":"0b", "order":"43,47", "count":"191", "subject":"47 (B.rowid)", "_name":"triple-index", "is-column":"true", "remote-time":"1.01628479E9s", "remote-max-memory":"0b", "local-time":"3864.26ms", "id":"5679212315079075389", "predicate":"Schema1.B.id (6142613893342910547)", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "permutation":"POS", "object":"43 (B.id)"}',
'{"local-max-memory":"0b", "allNullable":"false", "order":"47", "count":"191", "row":"47 (B.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"278.42ms", "id":"3888528629393418833", "iri":"http://marklogic.com/view/Schema1/B", "local-time":"134.94ms", "remote-max-memory":"0b", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_R", "type":"row", "viewID":"7074164397311574073", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "column":["41 (B.leningnummer) [nullable]", "42 (B.in_beheer) [nullable]", "44 (B.ingangsdatum) [nullable]", "45 (B.einddatum) [nullable]", "46 (B.bronsysteem_nummer)"]}',
'{"_id":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_R_1", "_parent":"N_1_1_1_1_1_1_1_1_1_R_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_R", "condition":"B.bronsysteem_nummer=\"2\"", "left":{"view":"B", "type":"column-def", "column-index":"46", "column":"bronsysteem_nummer"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"910048", "_id":"N_1_1_1_1_1_1_1_2", "type":"concat-union", "_parent":"N_1_1_1_1_1_1_1", "_name":"sparql-union", "id":"9830160080497550964"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,2,3,4,5,6,7,8,10,16,18,19,25,27,28)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1", "_parent":"N_1_1_1_1_1_1_1_2", "_name":"project", "column":["1 (activecustomer)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "8 (chamberofcommercenumber)", "9 (organisationname)", "10 (home_addresstype)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "16 (home_pobox)", "17 (home_country)", "18 (home_otheraddressdata)", "19 (postal_addresstype)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "25 (postal_pobox)", "26 (postal_country)", "27 (postal_otheraddressdata)", "28 (product_grp_id)", "29 (productnumber)", "31 (status)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1", "expr":"D.nummer as productnumber", "_parent":"N_1_1_1_1_1_1_1_2_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1", "expr":"\"\" as postal_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_2_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1", "expr":"\"\" as postal_pobox", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1", "expr":"\"Postal\" as postal_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1", "expr":"\"\" as home_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1", "expr":"\"\" as home_pobox", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1", "expr":"\"RegisteredOffice\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1", "expr":"C.naam as organisationname", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1", "expr":"if(fn:exists(A.klant_id)) then \"TRUE\" else \"FALSE\" as activecustomer", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"remote-time":"0ms", "local-time":"4357.44ms", "remote-max-memory":"0b", "local-max-memory":"148.55Mb", "order":",singletons(0,2,3,4,5,6,7,8,10,28)", "count":"910048", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1", "condition":"44=42", "_name":"right-hash-join", "id":"13845204666095840599"}',
'{"local-max-memory":"0b", "order":"", "count":"954542", "_name":"group", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"3197.18ms", "id":"7341342517891107704", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L", "type":"hash-group", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1", "order-spec":"0 (A.klant_id)", "aggregate":"sample(A.klant_id) as A.klant_id"}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"483985", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1", "type":"parallel-concat-union", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L", "_name":"sparql-union", "id":"15000683629475751348"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1", "_name":"project", "column":"0 (A.klant_id)", "id":"13307884631834271045"}',
'{"local-max-memory":"3.06Mb", "allNullable":"false", "order":"2", "count":"0", "row":"2 (A.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"482.61ms", "id":"100413395116921395", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"170.39ms", "remote-max-memory":"9.85Mb", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_1_1", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_1", "column":["1 (A.type)", "0 (A.klant_id)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_1_1", "condition":"A.type=\"Verzekering\"", "left":{"view":"A", "type":"column-def", "column-index":"1", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1", "_name":"project", "column":"0 (A.klant_id)", "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"2,0", "count":"328736", "right-num-sorted":"0", "condition":"5=2 and 4=0", "join-filter":["A.nummer=B.leningnummer", "A.klant_id=B.klant_id"], "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"164.95ms", "id":"6955365578722491788", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "_parentLabel":"left", "_name":"project", "column":["4 (B.klant_id)", "5 (B.leningnummer)"], "id":"13307884631834271045"}',
'{"local-max-memory":"672Kb", "allNullable":"false", "order":"8", "count":"328902", "row":"8 (B.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"2934.57ms", "id":"6750339825475223703", "iri":"http://marklogic.com/view/Schema1/B", "local-time":"1454.98ms", "remote-max-memory":"1.41Mb", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1", "type":"column", "viewID":"7074164397311574073", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L", "column":["5 (B.leningnummer) [nullable]", "4 (B.klant_id) [nullable]", "6 (B.bronsysteem_nummer)", "7 (B.in_beheer)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1", "condition":"B.bronsysteem_nummer=\"2\"", "left":{"view":"B", "type":"column-def", "column-index":"6", "column":"bronsysteem_nummer"}, "_name":"join-filter", "op":"="}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1_2", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1", "condition":"B.in_beheer=xs:boolean(\"true\")", "left":{"view":"B", "type":"column-def", "column-index":"7", "column":"in_beheer"}, "_name":"join-filter", "op":"="}',
'{"local-max-memory":"153.68Mb", "allNullable":"false", "order":"3", "count":"1089278", "row":"3 (A.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"6912.63ms", "id":"2894569725455290269", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"2617.62ms", "remote-max-memory":"100.3Mb", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "column":["0 (A.klant_id)", "2 (A.nummer) [nullable]", "1 (A.type)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R", "condition":"A.type=\"Lening\"", "left":{"view":"A", "type":"column-def", "column-index":"1", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"local-max-memory":"40.84Mb", "order":",singletons(0,2,3,4,5,6,7,8,10,28)", "count":"107403", "condition":"42=40", "join-filter":"D.klant_id=C.id", "_name":"hash-join", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"473.21ms", "id":"13411038638405633753", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"43,42,singletons(28)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R", "_parentLabel":"left", "_name":"project", "column":["42 (D.klant_id)", "43 (D.nummer)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "31 (status)", "28 (product_grp_id)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1", "expr":"67 as product_grp_id", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1", "expr":"if(F.in_beheer eq xs:boolean(\"true\")) then \"active\" else \"inactive\" as status", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1", "expr":"F.einddatum as einddatum_product", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1", "expr":"F.ingangsdatum as ingangsdatum_product", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1", "_name":"bind"}',
'{"local-max-memory":"0b", "order":"43,42", "count":"107507", "right-num-sorted":"0", "condition":"47=43 and 46=42", "join-filter":["D.nummer=F.leningnummer", "D.klant_id=F.klant_id"], "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"127.17ms", "id":"14188322958503153950", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1", "_parentLabel":"left", "_name":"project", "column":["46 (F.klant_id)", "47 (F.leningnummer)", "48 (F.in_beheer)", "49 (F.ingangsdatum)", "50 (F.einddatum)"], "id":"13307884631834271045"}',
'{"local-max-memory":"1.31Mb", "allNullable":"false", "order":"53", "count":"140145", "row":"53 (F.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"5153.03ms", "id":"13308553206001220040", "iri":"http://marklogic.com/view/Schema1/B", "local-time":"2204.59ms", "remote-max-memory":"2.19Mb", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L_1", "type":"column", "viewID":"7074164397311574073", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L", "column":["47 (F.leningnummer) [nullable]", "48 (F.in_beheer) [nullable]", "46 (F.klant_id) [nullable]", "49 (F.ingangsdatum) [nullable]", "50 (F.einddatum) [nullable]", "52 (F.particulier)", "51 (F.bronsysteem_nummer)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L_1_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L_1", "condition":"F.particulier=xs:boolean(\"false\")", "left":{"view":"F", "type":"column-def", "column-index":"52", "column":"particulier"}, "_name":"join-filter", "op":"="}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L_1_2", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_L_1", "condition":"F.bronsysteem_nummer=\"2\"", "left":{"view":"F", "type":"column-def", "column-index":"51", "column":"bronsysteem_nummer"}, "_name":"join-filter", "op":"="}',
'{"local-max-memory":"230.93Mb", "allNullable":"false", "order":"45", "count":"1089278", "row":"45 (D.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"1.09416355E9s", "id":"8361258601629875522", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"3352.67ms", "remote-max-memory":"461.12Mb", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_R", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1", "column":["42 (D.klant_id)", "43 (D.nummer) [nullable]", "44 (D.type)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_R_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_R", "condition":"D.type=\"Lening\"", "left":{"view":"D", "type":"column-def", "column-index":"44", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,2,3,4,5,6,7,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R", "_parentLabel":"right", "_name":"project", "column":["40 (C.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "41 (C.naam)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"42,singletons(0,2,3,4,5,6,7,8,10)", "count":"756807", "right-num-sorted":"0", "condition":"45=42", "join-filter":"C.persoon_1_id=H.id", "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"866.1ms", "id":"15483178976438565012", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R"}',
'{"_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L", "expr":"gewijzigd_op_persoon as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1", "_name":"bind"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,2,3,4,5,6,7,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L", "_name":"project", "column":["45 (H.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1", "expr":"H.gewijzigd_op as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1", "expr":"H.postadres_landcode as postal_country", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1", "expr":"H.postadres_postcode as postal_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1", "expr":"H.postadres_huisnummertoevoeging as postal_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1", "expr":"H.postadres_huisnummer as postal_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1", "expr":"H.postadres_straat as postal_street", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1", "expr":"H.postadres_plaats as postal_city", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_landcode as home_country", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_postcode as home_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_huisnummertoevoeging as home_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_huisnummer as home_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_straat as home_street", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"H.woonadres_plaats as home_city", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as lastnameprefix", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as lastname", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as firstname", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as initials", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"RegisteredOffice\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as chamberofcommercenumber", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as citizenservicenumber", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as dateofbirth", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"accountHolderLegalEntities\" as customercategory", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"local-max-memory":"11.44Mb", "allNullable":"false", "order":"59", "count":"1139088", "row":"59 (H.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"8746.77ms", "id":"2384317470289680612", "iri":"http://marklogic.com/view/Schema1/H", "local-time":"1291.98ms", "remote-max-memory":"23.04Mb", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "type":"column", "viewID":"13968452873791756530", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "column":["45 (H.id)", "46 (H.gewijzigd_op) [nullable]", "47 (H.woonadres_straat) [nullable]", "48 (H.woonadres_huisnummer) [nullable]", "49 (H.woonadres_huisnummertoevoeging) [nullable]", "50 (H.woonadres_postcode) [nullable]", "51 (H.woonadres_plaats) [nullable]", "52 (H.woonadres_landcode) [nullable]", "53 (H.postadres_straat) [nullable]", "54 (H.postadres_huisnummer) [nullable]", "55 (H.postadres_huisnummertoevoeging) [nullable]", "56 (H.postadres_postcode) [nullable]", "57 (H.postadres_plaats) [nullable]", "58 (H.postadres_landcode) [nullable]"]}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_R", "expr":"C.gewijzigd_op as gewijzigd_op_klant", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1", "_name":"bind"}',
'{"local-max-memory":"9.81Mb", "allNullable":"false", "order":"44", "count":"768370", "row":"44 (C.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"4512.78ms", "id":"2807263614040861052", "iri":"http://marklogic.com/view/Schema1/C", "local-time":"756.12ms", "remote-max-memory":"19.74Mb", "_id":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_R_1", "type":"column", "viewID":"9168834070795060460", "_parent":"N_1_1_1_1_1_1_1_2_1_1_1_1_1_1_1_1_1_1_1_R_R_1_R", "column":["40 (C.id)", "42 (C.persoon_1_id) [nullable]", "41 (C.naam) [nullable]", "43 (C.gewijzigd_op) [nullable]"]}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(9,10,16,18,19,25,27)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2", "_parent":"N_1_1_1_1_1_1_1_2", "_name":"project", "column":["1 (activecustomer)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "8 (chamberofcommercenumber)", "9 (organisationname)", "10 (home_addresstype)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "16 (home_pobox)", "17 (home_country)", "18 (home_otheraddressdata)", "19 (postal_addresstype)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "25 (postal_pobox)", "26 (postal_country)", "27 (postal_otheraddressdata)", "28 (product_grp_id)", "29 (productnumber)", "31 (status)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1", "expr":"D.nummer as productnumber", "_parent":"N_1_1_1_1_1_1_1_2_2", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1", "expr":"\"\" as postal_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_2_2_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1", "expr":"\"\" as postal_pobox", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1", "expr":"\"Postal\" as postal_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1", "expr":"\"\" as home_otheraddressdata", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1", "expr":"\"\" as home_pobox", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1", "expr":"\"Home\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1", "expr":"\"\" as organisationname", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1", "expr":"if(fn:exists(A.klant_id)) then \"TRUE\" else \"FALSE\" as activecustomer", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"remote-time":"0ms", "local-time":"4357.44ms", "remote-max-memory":"0b", "local-max-memory":"148.55Mb", "order":"", "count":"910048", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1", "condition":"43=41", "_name":"right-hash-join", "id":"13845204666095840599"}',
'{"local-max-memory":"0b", "order":"", "count":"954542", "_name":"group", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"3197.18ms", "id":"7341342517891107704", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L", "type":"hash-group", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1", "order-spec":"0 (A.klant_id)", "aggregate":"sample(A.klant_id) as A.klant_id"}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"483985", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1", "type":"concat-union", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L", "_name":"sparql-union", "id":"15877588049092803116"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1", "_name":"project", "column":"0 (A.klant_id)", "id":"13307884631834271045"}',
'{"local-max-memory":"3.45Mb", "allNullable":"false", "order":"2", "count":"0", "row":"2 (A.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"3850.84ms", "id":"10604184446121253224", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"1948.29ms", "remote-max-memory":"10.04Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_1_1", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_1", "column":["1 (A.type)", "0 (A.klant_id)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_1_1", "condition":"A.type=\"Verzekering\"", "left":{"view":"A", "type":"column-def", "column-index":"1", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1", "_name":"project", "column":"0 (A.klant_id)", "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"5,4", "count":"328736", "right-num-sorted":"0", "condition":"2=5 and 0=4", "join-filter":["A.nummer=B.leningnummer", "A.klant_id=B.klant_id"], "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"198.81ms", "id":"8235159521565502166", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2"}',
'{"local-max-memory":"202.4Mb", "allNullable":"false", "order":"3", "count":"1089278", "row":"3 (A.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"1.083822129E10s", "id":"12042473626095655892", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"5.95035742E9s", "remote-max-memory":"193.95Mb", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "column":["0 (A.klant_id)", "2 (A.nummer) [nullable]", "1 (A.type)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_L", "condition":"A.type=\"Lening\"", "left":{"view":"A", "type":"column-def", "column-index":"1", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1", "_parentLabel":"right", "_name":"project", "column":["4 (B.klant_id)", "5 (B.leningnummer)"], "id":"13307884631834271045"}',
'{"local-max-memory":"768Kb", "allNullable":"false", "order":"8", "count":"328902", "row":"8 (B.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"5.35323545E9s", "id":"10227954036311052402", "iri":"http://marklogic.com/view/Schema1/B", "local-time":"2.37630415E9s", "remote-max-memory":"1.31Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1", "type":"column", "viewID":"7074164397311574073", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R", "column":["5 (B.leningnummer) [nullable]", "4 (B.klant_id) [nullable]", "6 (B.bronsysteem_nummer)", "7 (B.in_beheer)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1", "condition":"B.bronsysteem_nummer=\"2\"", "left":{"view":"B", "type":"column-def", "column-index":"6", "column":"bronsysteem_nummer"}, "_name":"join-filter", "op":"="}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1_2", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_L_1_2_1_R_1", "condition":"B.in_beheer=xs:boolean(\"true\")", "left":{"view":"B", "type":"column-def", "column-index":"7", "column":"in_beheer"}, "_name":"join-filter", "op":"="}',
'{"local-max-memory":"204.22Mb", "order":"", "count":"802645", "condition":"41=40", "join-filter":"D.klant_id=C.id", "_name":"hash-join", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"2913.47ms", "id":"16203115793113152047", "_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1"}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"543287", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L", "type":"concat-union", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R", "_parentLabel":"left", "_name":"sparql-union", "id":"819186525024280775"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(28,31,37)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L", "_name":"project", "column":["41 (D.klant_id)", "42 (D.nummer)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "31 (status)", "28 (product_grp_id)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1", "expr":"J.gewijzigd_op as ingangsdatum_product", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1", "expr":"120 as product_grp_id", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1", "expr":"\"\" as einddatum_product", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1", "expr":"\"active\" as status", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1", "_name":"bind"}',
'{"local-max-memory":"0b", "order":"46,45", "count":"155245", "right-num-sorted":"0", "condition":"42=46 and 41=45", "join-filter":["D.nummer=J.polisnummer", "D.klant_id=J.klant_id"], "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"109.39ms", "id":"8507629119614875677", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1"}',
'{"local-max-memory":"130.91Mb", "allNullable":"false", "order":"44", "count":"310498", "row":"44 (D.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"3.26832146E9s", "id":"16447950985349474348", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"2.37310088E9s", "remote-max-memory":"240.79Mb", "_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_L", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1", "column":["41 (D.klant_id)", "43 (D.type)", "42 (D.nummer) [nullable]"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_L_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_L", "condition":"D.type=\"Verzekering\"", "left":{"view":"D", "type":"column-def", "column-index":"43", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_R", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1", "_parentLabel":"right", "_name":"project", "column":["45 (J.klant_id)", "46 (J.polisnummer)", "47 (J.gewijzigd_op)"], "id":"13307884631834271045"}',
'{"local-max-memory":"1.14Mb", "allNullable":"false", "order":"48", "count":"155266", "row":"48 (J.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"2.7797104E9s", "id":"11761261954459179948", "iri":"http://marklogic.com/view/Schema1/J", "local-time":"1.64117275E9s", "remote-max-memory":"2.29Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_R_1", "type":"column", "viewID":"5597861784133947290", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_1_1_1_1_1_1_R", "column":["45 (J.klant_id) [nullable]", "46 (J.polisnummer) [nullable]", "47 (J.gewijzigd_op) [nullable]", "??"]}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"42,41,singletons(28)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L", "_name":"project", "column":["41 (D.klant_id)", "42 (D.nummer)", "36 (ingangsdatum_product)", "37 (einddatum_product)", "31 (status)", "28 (product_grp_id)"], "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"42,41,singletons(28)", "count":"388042", "right-num-sorted":"0", "condition":"46=42 and 45=41", "join-filter":["D.nummer=E.leningnummer", "D.klant_id=E.klant_id"], "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"332.77ms", "id":"6842602922870446350", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2"}',
'{"_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L", "expr":"if(E.in_beheer eq xs:boolean(\"true\")) then \"active\" else \"inactive\" as status", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1", "expr":"E.einddatum as einddatum_product", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1", "expr":"E.ingangsdatum as ingangsdatum_product", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1", "_name":"bind"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":"", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1", "_name":"project", "column":["45 (E.klant_id)", "46 (E.leningnummer)", "47 (E.in_beheer)", "48 (E.ingangsdatum)", "49 (E.einddatum)"], "id":"13307884631834271045"}',
'{"local-max-memory":"1.31Mb", "allNullable":"false", "order":"52", "count":"388228", "row":"52 (E.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"4.97400569E9s", "id":"483569501253160827", "iri":"http://marklogic.com/view/Schema1/B", "local-time":"2.40838814E9s", "remote-max-memory":"3.12Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1_1", "type":"column", "viewID":"7074164397311574073", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1", "column":["46 (E.leningnummer) [nullable]", "47 (E.in_beheer) [nullable]", "45 (E.klant_id) [nullable]", "48 (E.ingangsdatum) [nullable]", "49 (E.einddatum) [nullable]", "51 (E.particulier)", "50 (E.bronsysteem_nummer)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1_1", "condition":"E.particulier=xs:boolean(\"true\")", "left":{"view":"E", "type":"column-def", "column-index":"51", "column":"particulier"}, "_name":"join-filter", "op":"="}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1_1_2", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_L_1_1_1_1", "condition":"E.bronsysteem_nummer=\"2\"", "left":{"view":"E", "type":"column-def", "column-index":"50", "column":"bronsysteem_nummer"}, "_name":"join-filter", "op":"="}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_R", "expr":"67 as product_grp_id", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1", "_name":"bind"}',
'{"local-max-memory":"8.15Mb", "allNullable":"false", "order":"44", "count":"544639", "row":"44 (D.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"3.90719292E9s", "id":"6170711034339345149", "iri":"http://marklogic.com/view/Schema1/D", "local-time":"2.52154955E9s", "remote-max-memory":"17.62Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_R_1", "type":"column", "viewID":"7694803456231509637", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_R", "column":["41 (D.klant_id)", "42 (D.nummer) [nullable]", "43 (D.type)"]}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_R_1_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_L_2_1_R_1", "condition":"D.type=\"Lening\"", "left":{"view":"D", "type":"column-def", "column-index":"43", "column":"type"}, "_name":"join-filter", "op":"="}',
'{"remote-time":"0ms", "local-time":"0ms", "remote-max-memory":"0b", "local-max-memory":"0b", "order":"", "count":"1130068", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R", "type":"concat-union", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R", "_parentLabel":"right", "_name":"sparql-union", "id":"12155178433567743595"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R", "_name":"project", "column":["40 (C.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"41,singletons(0,8,10)", "count":"373285", "right-num-sorted":"0", "condition":"44=41", "join-filter":"C.persoon_2_id=G.id", "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"721.26ms", "id":"18154635243388465017", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1"}',
'{"_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L", "expr":"gewijzigd_op_persoon as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1", "_name":"bind"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L", "_name":"project", "column":["44 (G.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1", "expr":"G.gewijzigd_op as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1", "expr":"G.postadres_landcode as postal_country", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1", "expr":"G.postadres_postcode as postal_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1", "expr":"G.postadres_huisnummertoevoeging as postal_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1", "expr":"G.postadres_huisnummer as postal_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1", "expr":"G.postadres_straat as postal_street", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1", "expr":"G.postadres_plaats as postal_city", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_landcode as home_country", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_postcode as home_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_huisnummertoevoeging as home_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_huisnummer as home_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_straat as home_street", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_plaats as home_city", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.tussenvoegsel as lastnameprefix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.achternaam as lastname", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.voornaam as firstname", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.voorletters as initials", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"Home\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as chamberofcommercenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.bsn as citizenservicenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.geboortedatum as dateofbirth", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"accountHolderNaturalPersons\" as customercategory", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"local-max-memory":"10.09Mb", "allNullable":"false", "order":"64", "count":"2278176", "row":"64 (G.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"4.02923216E9s", "id":"6142098997108455784", "iri":"http://marklogic.com/view/Schema1/H", "local-time":"1.99262719E9s", "remote-max-memory":"20.85Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "type":"column", "viewID":"13968452873791756530", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "column":["44 (G.id)", "45 (G.voorletters) [nullable]", "46 (G.voornaam) [nullable]", "47 (G.tussenvoegsel) [nullable]", "48 (G.achternaam) [nullable]", "49 (G.geboortedatum) [nullable]", "50 (G.bsn) [nullable]", "51 (G.gewijzigd_op) [nullable]", "52 (G.woonadres_straat) [nullable]", "53 (G.woonadres_huisnummer) [nullable]", "54 (G.woonadres_huisnummertoevoeging) [nullable]", "55 (G.woonadres_postcode) [nullable]", "56 (G.woonadres_plaats) [nullable]", "57 (G.woonadres_landcode) [nullable]", "58 (G.postadres_straat) [nullable]", "59 (G.postadres_huisnummer) [nullable]", "60 (G.postadres_huisnummertoevoeging) [nullable]", "61 (G.postadres_postcode) [nullable]", "62 (G.postadres_plaats) [nullable]", "63 (G.postadres_landcode) [nullable]"]}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_R", "expr":"C.gewijzigd_op as gewijzigd_op_klant", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1", "_name":"bind"}',
'{"local-max-memory":"9.47Mb", "allNullable":"false", "order":"43", "count":"768370", "row":"43 (C.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"1.4484281E9s", "id":"17506916954973918221", "iri":"http://marklogic.com/view/Schema1/C", "local-time":"4457.57ms", "remote-max-memory":"19.65Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_R_1", "type":"column", "viewID":"9168834070795060460", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_1_1_R", "column":["40 (C.id)", "41 (C.persoon_2_id) [nullable]", "42 (C.gewijzigd_op) [nullable]"]}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R", "_name":"project", "column":["40 (C.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "38 (gewijzigd_op_klant)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"local-max-memory":"0b", "order":"41,singletons(0,8,10)", "count":"756783", "right-num-sorted":"0", "condition":"44=41", "join-filter":"C.persoon_1_id=G.id", "_name":"parallel-sort-merge-join", "left-num-sorted":"0", "remote-time":"0ms", "remote-max-memory":"0b", "local-time":"1362.63ms", "id":"8264375888626505049", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1", "sparql-semantics":"false", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2"}',
'{"_parentLabel":"left", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L", "expr":"gewijzigd_op_persoon as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1", "_name":"bind"}',
'{"remote-time":"4288.27ms", "local-time":"2443.54ms", "remote-max-memory":"450.28Mb", "local-max-memory":"397.21Mb", "order":",singletons(0,8,10)", "count":"953217", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L", "_name":"project", "column":["44 (G.id)", "0 (customercategory)", "2 (dateofbirth)", "3 (citizenservicenumber)", "8 (chamberofcommercenumber)", "10 (home_addresstype)", "4 (initials)", "5 (firstname)", "6 (lastname)", "7 (lastnameprefix)", "11 (home_city)", "12 (home_street)", "13 (home_housenumber)", "14 (home_housenumbersuffix)", "15 (home_postalcode)", "17 (home_country)", "20 (postal_city)", "21 (postal_street)", "22 (postal_housenumber)", "23 (postal_housenumbersuffix)", "24 (postal_postalcode)", "26 (postal_country)", "39 (gewijzigd_op_persoon)"], "id":"13307884631834271045"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1", "expr":"G.gewijzigd_op as gewijzigd_op_persoon", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1", "expr":"G.postadres_landcode as postal_country", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1", "expr":"G.postadres_postcode as postal_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1", "expr":"G.postadres_huisnummertoevoeging as postal_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1", "expr":"G.postadres_huisnummer as postal_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1", "expr":"G.postadres_straat as postal_street", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1", "expr":"G.postadres_plaats as postal_city", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_landcode as home_country", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_postcode as home_postalcode", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_huisnummertoevoeging as home_housenumbersuffix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_huisnummer as home_housenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_straat as home_street", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.woonadres_plaats as home_city", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.tussenvoegsel as lastnameprefix", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.achternaam as lastname", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.voornaam as firstname", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.voorletters as initials", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"Home\" as home_addresstype", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"\" as chamberofcommercenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.bsn as citizenservicenumber", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"G.geboortedatum as dateofbirth", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "expr":"\"accountHolderNaturalPersons\" as customercategory", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "_name":"bind"}',
'{"local-max-memory":"10.09Mb", "allNullable":"false", "order":"64", "count":"2278176", "row":"64 (G.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"4.02923216E9s", "id":"6142098997108455784", "iri":"http://marklogic.com/view/Schema1/H", "local-time":"1.99262719E9s", "remote-max-memory":"20.85Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "type":"column", "viewID":"13968452873791756530", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_L_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1_1", "column":["44 (G.id)", "45 (G.voorletters) [nullable]", "46 (G.voornaam) [nullable]", "47 (G.tussenvoegsel) [nullable]", "48 (G.achternaam) [nullable]", "49 (G.geboortedatum) [nullable]", "50 (G.bsn) [nullable]", "51 (G.gewijzigd_op) [nullable]", "52 (G.woonadres_straat) [nullable]", "53 (G.woonadres_huisnummer) [nullable]", "54 (G.woonadres_huisnummertoevoeging) [nullable]", "55 (G.woonadres_postcode) [nullable]", "56 (G.woonadres_plaats) [nullable]", "57 (G.woonadres_landcode) [nullable]", "58 (G.postadres_straat) [nullable]", "59 (G.postadres_huisnummer) [nullable]", "60 (G.postadres_huisnummertoevoeging) [nullable]", "61 (G.postadres_postcode) [nullable]", "62 (G.postadres_plaats) [nullable]", "63 (G.postadres_landcode) [nullable]"]}',
'{"_parentLabel":"right", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_R", "expr":"C.gewijzigd_op as gewijzigd_op_klant", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1", "_name":"bind"}',
'{"local-max-memory":"9.28Mb", "allNullable":"false", "order":"43", "count":"768370", "row":"43 (C.rowid)", "schemaID":"12461121416219388462", "_name":"template-view", "remote-time":"2.62943136E9s", "id":"5169957886206599373", "iri":"http://marklogic.com/view/Schema1/C", "local-time":"1.23053971E9s", "remote-max-memory":"19.63Mb", "_id":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_R_1", "type":"column", "viewID":"9168834070795060460", "_parent":"N_1_1_1_1_1_1_1_2_2_1_1_1_1_1_1_1_1_1_1_R_R_2_1_R", "column":["40 (C.id)", "41 (C.persoon_1_id) [nullable]", "42 (C.gewijzigd_op) [nullable]"]}'
))
};

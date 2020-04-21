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

module namespace t = "http://marklogic.com/optic/qputils/exprs";
declare default function namespace "http://marklogic.com/optic/qputils/exprs";
declare namespace plan="http://marklogic.com/plan";
declare namespace qputils="http://marklogic.com/optic/qputils";

declare %qputils:test function exprs()
{
map:entry("name","exprs1")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:project order=",singletons(17)">
      <plan:vars>
	<plan:graph-node type="column-def" name="Facility.Facilities.reportDate" schema="Facility" column="reportDate" view="Facilities" column-number="0" column-index="0" static-type="DATE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.systemStart" schema="Facility" column="systemStart" view="Facilities" column-number="1" column-index="1" static-type="DATE_TIME"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.systemEnd" schema="Facility" column="systemEnd" view="Facilities" column-number="2" column-index="2" static-type="DATE_TIME"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ID" schema="Facility" column="ID" view="Facilities" column-number="3" column-index="3" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.EndOfMonth" schema="Facility" column="EndOfMonth" view="Facilities" column-number="4" column-index="4" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ContinentAbbreviation" schema="Facility" column="ContinentAbbreviation" view="Facilities" column-number="5" column-index="5" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.DepartmentAbbreviation" schema="Facility" column="DepartmentAbbreviation" view="Facilities" column-number="6" column-index="6" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.RegionAbbreviation" schema="Facility" column="RegionAbbreviation" view="Facilities" column-number="7" column-index="7" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.Office" schema="Facility" column="Office" view="Facilities" column-number="8" column-index="8" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.MarketGroup" schema="Facility" column="MarketGroup" view="Facilities" column-number="9" column-index="9" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.AACNumber" schema="Facility" column="AACNumber" view="Facilities" column-number="10" column-index="10" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.BCIDMainBorrower" schema="Facility" column="BCIDMainBorrower" view="Facilities" column-number="11" column-index="11" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.MainBorrower" schema="Facility" column="MainBorrower" view="Facilities" column-number="12" column-index="12" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.MainClientNumber" schema="Facility" column="MainClientNumber" view="Facilities" column-number="13" column-index="13" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.BCIDMainClient" schema="Facility" column="BCIDMainClient" view="Facilities" column-number="14" column-index="14" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ClientName" schema="Facility" column="ClientName" view="Facilities" column-number="15" column-index="15" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.GlobalFacilityId" schema="Facility" column="GlobalFacilityId" view="Facilities" column-number="16" column-index="16" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.SubFacility" schema="Facility" column="SubFacility" view="Facilities" column-number="17" column-index="17" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityNumber" schema="Facility" column="FacilityNumber" view="Facilities" column-number="18" column-index="18" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityName" schema="Facility" column="FacilityName" view="Facilities" column-number="19" column-index="19" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityStartDate" schema="Facility" column="FacilityStartDate" view="Facilities" column-number="20" column-index="20" static-type="DATE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityMaturityDate" schema="Facility" column="FacilityMaturityDate" view="Facilities" column-number="21" column-index="21" static-type="DATE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.InitialTenor" schema="Facility" column="InitialTenor" view="Facilities" column-number="22" column-index="22" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.RemainingTenor" schema="Facility" column="RemainingTenor" view="Facilities" column-number="23" column-index="23" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityType" schema="Facility" column="FacilityType" view="Facilities" column-number="24" column-index="24" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityCurrency" schema="Facility" column="FacilityCurrency" view="Facilities" column-number="25" column-index="25" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.CfwCurrency" schema="Facility" column="CfwCurrency" view="Facilities" column-number="26" column-index="26" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.RegionCurrency" schema="Facility" column="RegionCurrency" view="Facilities" column-number="27" column-index="27" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.XrateFacToEUR" schema="Facility" column="XrateFacToEUR" view="Facilities" column-number="28" column-index="28" static-type="DOUBLE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.XrateCfwToEUR" schema="Facility" column="XrateCfwToEUR" view="Facilities" column-number="29" column-index="29" static-type="DOUBLE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.XrateCfwToRegionCcy" schema="Facility" column="XrateCfwToRegionCcy" view="Facilities" column-number="30" column-index="30" static-type="DOUBLE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.LimitFacilityCcy" schema="Facility" column="LimitFacilityCcy" view="Facilities" column-number="31" column-index="31" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.LimitInEUR" schema="Facility" column="LimitInEUR" view="Facilities" column-number="32" column-index="32" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitCfwCcy" schema="Facility" column="EffectiveLimitCfwCcy" view="Facilities" column-number="33" column-index="33" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitRegionCcy" schema="Facility" column="EffectiveLimitRegionCcy" view="Facilities" column-number="34" column-index="34" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitEur" schema="Facility" column="EffectiveLimitEur" view="Facilities" column-number="35" column-index="35" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ControlLimit" schema="Facility" column="ControlLimit" view="Facilities" column-number="36" column-index="36" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ControlLimitInEUR" schema="Facility" column="ControlLimitInEUR" view="Facilities" column-number="37" column-index="37" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.TempLimitAdj" schema="Facility" column="TempLimitAdj" view="Facilities" column-number="38" column-index="38" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.TempLimitAdjEur" schema="Facility" column="TempLimitAdjEur" view="Facilities" column-number="39" column-index="39" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.SumSwingAmt" schema="Facility" column="SumSwingAmt" view="Facilities" column-number="40" column-index="40" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.SumSwingAmtEur" schema="Facility" column="SumSwingAmtEur" view="Facilities" column-number="41" column-index="41" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiability" schema="Facility" column="ValueOfLiability" view="Facilities" column-number="42" column-index="42" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityLimitCcy" schema="Facility" column="ValueOfLiabilityLimitCcy" view="Facilities" column-number="43" column-index="43" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityRegionCcy" schema="Facility" column="ValueOfLiabilityRegionCcy" view="Facilities" column-number="44" column-index="44" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityInEUR" schema="Facility" column="ValueOfLiabilityInEUR" view="Facilities" column-number="45" column-index="45" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralNett" schema="Facility" column="ValueOfCollateralNett" view="Facilities" column-number="46" column-index="46" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollNettRegionCcy" schema="Facility" column="ValueOfCollNettRegionCcy" view="Facilities" column-number="47" column-index="47" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralNettInEUR" schema="Facility" column="ValueOfCollateralNettInEUR" view="Facilities" column-number="48" column-index="48" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralGross" schema="Facility" column="ValueOfCollateralGross" view="Facilities" column-number="49" column-index="49" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollGrossRegionCcy" schema="Facility" column="ValueOfCollGrossRegionCcy" view="Facilities" column-number="50" column-index="50" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralGrossInEUR" schema="Facility" column="ValueOfCollateralGrossInEUR" view="Facilities" column-number="51" column-index="51" static-type="DECIMAL"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.TypeFacility" schema="Facility" column="TypeFacility" view="Facilities" column-number="52" column-index="52" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.AbnPart" schema="Facility" column="AbnPart" view="Facilities" column-number="53" column-index="53" static-type="DOUBLE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.IndCommitted" schema="Facility" column="IndCommitted" view="Facilities" column-number="54" column-index="54" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.Market" schema="Facility" column="Market" view="Facilities" column-number="55" column-index="55" static-type="STRING"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.OurParticipation" schema="Facility" column="OurParticipation" view="Facilities" column-number="56" column-index="56" static-type="DOUBLE"/>
	<plan:graph-node type="column-def" name="Facility.Facilities.FacilityInterestMargin" schema="Facility" column="FacilityInterestMargin" view="Facilities" column-number="57" column-index="57" static-type="DOUBLE"/>
      </plan:vars>
      <plan:expr>
	<plan:filter is-empty="false">
	  <plan:filters>
	    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="exists">
	      <plan:column-ref schema="Facility" view="Facilities" column="SubFacility" column-index="17" column-number="17" in-match="false">
		<plan:qname name="Facility.Facilities.SubFacility" uri="" prfx="" ltrl="Facility.Facilities.SubFacility"/>
	      </plan:column-ref>
	    </plan:builtin>
	  </plan:filters>
	  <plan:join join-type="sort-merge-join" order="58[NULLS_IRRELEVANT],singletons(17)">
	    <plan:join-info>
	      <plan:hash left="58" right="58" operator="="/>
	    </plan:join-info>
	    <plan:elems>
	      <plan:triple-index order="58[NULLS_IRRELEVANT],singletons(17)" permutation="PSO" dedup="false" descending="false" is-column="true">
		<plan:subject>
		  <plan:graph-node type="column-def" name="Facility.Facilities.rowid" schema="Facility" column="rowid" view="Facilities" column-number="58" column-index="58" static-type="UNKNOWN" hidden="true"/>
		</plan:subject>
		<plan:predicate>
		  <plan:graph-node type="literal">
		    <plan:rdf-val column="Facility.Facilities.SubFacility" columnID="11388176825022016573"/>
		  </plan:graph-node>
		</plan:predicate>
		<plan:object>
		  <plan:graph-node type="column-def" name="Facility.Facilities.SubFacility" schema="Facility" column="SubFacility" view="Facilities" column-number="17" column-index="17" static-type="STRING"/>
		</plan:object>
		<plan:join-filter op="=">
		  <plan:left-graph-node>
		    <plan:graph-node type="column-def" name="Facility.Facilities.SubFacility" schema="Facility" column="SubFacility" view="Facilities" column-number="17" column-index="17" static-type="UNKNOWN"/>
		  </plan:left-graph-node>
		  <plan:right-expr>
		    <plan:literal>
		      <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">N</plan:value>
		    </plan:literal>
		  </plan:right-expr>
		</plan:join-filter>
	      </plan:triple-index>
	      <plan:template-view permutation="PSO" iri="http://marklogic.com/view/Facility/Facilities" schemaID="3792136787781488268" viewID="253620236761853331">
		<plan:template-column nullable="false">
		  <plan:rdf-val column="Facility.Facilities.reportDate" columnID="3773989072801574136"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.reportDate" schema="Facility" column="reportDate" view="Facilities" column-number="0" column-index="0" static-type="DATE"/>
		</plan:template-column>
		<plan:template-column nullable="false">
		  <plan:rdf-val column="Facility.Facilities.systemStart" columnID="7754392321609815461"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.systemStart" schema="Facility" column="systemStart" view="Facilities" column-number="1" column-index="1" static-type="DATE_TIME"/>
		</plan:template-column>
		<plan:template-column nullable="false">
		  <plan:rdf-val column="Facility.Facilities.systemEnd" columnID="11435486092198921915"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.systemEnd" schema="Facility" column="systemEnd" view="Facilities" column-number="2" column-index="2" static-type="DATE_TIME"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ID" columnID="10423506994514861674"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ID" schema="Facility" column="ID" view="Facilities" column-number="3" column-index="3" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.EndOfMonth" columnID="1360989085780997093"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.EndOfMonth" schema="Facility" column="EndOfMonth" view="Facilities" column-number="4" column-index="4" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ContinentAbbreviation" columnID="16516389387714891217"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ContinentAbbreviation" schema="Facility" column="ContinentAbbreviation" view="Facilities" column-number="5" column-index="5" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.DepartmentAbbreviation" columnID="118992127673359846"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.DepartmentAbbreviation" schema="Facility" column="DepartmentAbbreviation" view="Facilities" column-number="6" column-index="6" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.RegionAbbreviation" columnID="17319985803292788696"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.RegionAbbreviation" schema="Facility" column="RegionAbbreviation" view="Facilities" column-number="7" column-index="7" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.Office" columnID="3742668680343965964"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.Office" schema="Facility" column="Office" view="Facilities" column-number="8" column-index="8" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.MarketGroup" columnID="3443265859077936152"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.MarketGroup" schema="Facility" column="MarketGroup" view="Facilities" column-number="9" column-index="9" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.AACNumber" columnID="3346589291247429509"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.AACNumber" schema="Facility" column="AACNumber" view="Facilities" column-number="10" column-index="10" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.BCIDMainBorrower" columnID="13126220439625566778"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.BCIDMainBorrower" schema="Facility" column="BCIDMainBorrower" view="Facilities" column-number="11" column-index="11" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.MainBorrower" columnID="4143511831078123048"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.MainBorrower" schema="Facility" column="MainBorrower" view="Facilities" column-number="12" column-index="12" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.MainClientNumber" columnID="12080219834822731990"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.MainClientNumber" schema="Facility" column="MainClientNumber" view="Facilities" column-number="13" column-index="13" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.BCIDMainClient" columnID="16886469898055880189"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.BCIDMainClient" schema="Facility" column="BCIDMainClient" view="Facilities" column-number="14" column-index="14" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ClientName" columnID="1020681363831579507"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ClientName" schema="Facility" column="ClientName" view="Facilities" column-number="15" column-index="15" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.GlobalFacilityId" columnID="10172287412451886080"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.GlobalFacilityId" schema="Facility" column="GlobalFacilityId" view="Facilities" column-number="16" column-index="16" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityNumber" columnID="17775798237018532332"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityNumber" schema="Facility" column="FacilityNumber" view="Facilities" column-number="18" column-index="18" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityName" columnID="6046222726583558941"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityName" schema="Facility" column="FacilityName" view="Facilities" column-number="19" column-index="19" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityStartDate" columnID="16859934251398823323"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityStartDate" schema="Facility" column="FacilityStartDate" view="Facilities" column-number="20" column-index="20" static-type="DATE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityMaturityDate" columnID="1925762970791222354"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityMaturityDate" schema="Facility" column="FacilityMaturityDate" view="Facilities" column-number="21" column-index="21" static-type="DATE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.InitialTenor" columnID="1648167280534384617"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.InitialTenor" schema="Facility" column="InitialTenor" view="Facilities" column-number="22" column-index="22" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.RemainingTenor" columnID="16048804668161186292"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.RemainingTenor" schema="Facility" column="RemainingTenor" view="Facilities" column-number="23" column-index="23" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityType" columnID="3133377155716931793"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityType" schema="Facility" column="FacilityType" view="Facilities" column-number="24" column-index="24" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityCurrency" columnID="14320378082069756231"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityCurrency" schema="Facility" column="FacilityCurrency" view="Facilities" column-number="25" column-index="25" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.CfwCurrency" columnID="7264160597554366189"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.CfwCurrency" schema="Facility" column="CfwCurrency" view="Facilities" column-number="26" column-index="26" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.RegionCurrency" columnID="7096778577450641553"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.RegionCurrency" schema="Facility" column="RegionCurrency" view="Facilities" column-number="27" column-index="27" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.XrateFacToEUR" columnID="17162952970460200816"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.XrateFacToEUR" schema="Facility" column="XrateFacToEUR" view="Facilities" column-number="28" column-index="28" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.XrateCfwToEUR" columnID="12075205597457753075"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.XrateCfwToEUR" schema="Facility" column="XrateCfwToEUR" view="Facilities" column-number="29" column-index="29" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.XrateCfwToRegionCcy" columnID="1734541239922493170"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.XrateCfwToRegionCcy" schema="Facility" column="XrateCfwToRegionCcy" view="Facilities" column-number="30" column-index="30" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.LimitFacilityCcy" columnID="7913561124506476599"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.LimitFacilityCcy" schema="Facility" column="LimitFacilityCcy" view="Facilities" column-number="31" column-index="31" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.LimitInEUR" columnID="13176853712845853175"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.LimitInEUR" schema="Facility" column="LimitInEUR" view="Facilities" column-number="32" column-index="32" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.EffectiveLimitCfwCcy" columnID="7989460907002714759"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitCfwCcy" schema="Facility" column="EffectiveLimitCfwCcy" view="Facilities" column-number="33" column-index="33" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.EffectiveLimitRegionCcy" columnID="16312206623329232016"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitRegionCcy" schema="Facility" column="EffectiveLimitRegionCcy" view="Facilities" column-number="34" column-index="34" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.EffectiveLimitEur" columnID="2135957646555901784"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.EffectiveLimitEur" schema="Facility" column="EffectiveLimitEur" view="Facilities" column-number="35" column-index="35" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ControlLimit" columnID="2361631592864611810"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ControlLimit" schema="Facility" column="ControlLimit" view="Facilities" column-number="36" column-index="36" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ControlLimitInEUR" columnID="17687658765127413409"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ControlLimitInEUR" schema="Facility" column="ControlLimitInEUR" view="Facilities" column-number="37" column-index="37" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.TempLimitAdj" columnID="9946093786821780279"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.TempLimitAdj" schema="Facility" column="TempLimitAdj" view="Facilities" column-number="38" column-index="38" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.TempLimitAdjEur" columnID="7504103309470219009"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.TempLimitAdjEur" schema="Facility" column="TempLimitAdjEur" view="Facilities" column-number="39" column-index="39" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.SumSwingAmt" columnID="13245474807046856877"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.SumSwingAmt" schema="Facility" column="SumSwingAmt" view="Facilities" column-number="40" column-index="40" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.SumSwingAmtEur" columnID="3622539918371083790"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.SumSwingAmtEur" schema="Facility" column="SumSwingAmtEur" view="Facilities" column-number="41" column-index="41" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfLiability" columnID="828397539364857387"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiability" schema="Facility" column="ValueOfLiability" view="Facilities" column-number="42" column-index="42" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfLiabilityLimitCcy" columnID="9504188168323323905"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityLimitCcy" schema="Facility" column="ValueOfLiabilityLimitCcy" view="Facilities" column-number="43" column-index="43" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfLiabilityRegionCcy" columnID="13102833247736661493"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityRegionCcy" schema="Facility" column="ValueOfLiabilityRegionCcy" view="Facilities" column-number="44" column-index="44" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfLiabilityInEUR" columnID="867326449679527401"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfLiabilityInEUR" schema="Facility" column="ValueOfLiabilityInEUR" view="Facilities" column-number="45" column-index="45" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollateralNett" columnID="5605191780978206537"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralNett" schema="Facility" column="ValueOfCollateralNett" view="Facilities" column-number="46" column-index="46" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollNettRegionCcy" columnID="2111579144691603902"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollNettRegionCcy" schema="Facility" column="ValueOfCollNettRegionCcy" view="Facilities" column-number="47" column-index="47" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollateralNettInEUR" columnID="3052892351843554393"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralNettInEUR" schema="Facility" column="ValueOfCollateralNettInEUR" view="Facilities" column-number="48" column-index="48" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollateralGross" columnID="13209055682981645852"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralGross" schema="Facility" column="ValueOfCollateralGross" view="Facilities" column-number="49" column-index="49" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollGrossRegionCcy" columnID="7002349897812801742"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollGrossRegionCcy" schema="Facility" column="ValueOfCollGrossRegionCcy" view="Facilities" column-number="50" column-index="50" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.ValueOfCollateralGrossInEUR" columnID="17088308308584056127"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.ValueOfCollateralGrossInEUR" schema="Facility" column="ValueOfCollateralGrossInEUR" view="Facilities" column-number="51" column-index="51" static-type="DECIMAL"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.TypeFacility" columnID="15704548471688249449"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.TypeFacility" schema="Facility" column="TypeFacility" view="Facilities" column-number="52" column-index="52" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.AbnPart" columnID="4915813629343777905"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.AbnPart" schema="Facility" column="AbnPart" view="Facilities" column-number="53" column-index="53" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.IndCommitted" columnID="259358512489134285"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.IndCommitted" schema="Facility" column="IndCommitted" view="Facilities" column-number="54" column-index="54" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.Market" columnID="13074668707195564409"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.Market" schema="Facility" column="Market" view="Facilities" column-number="55" column-index="55" static-type="STRING"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.OurParticipation" columnID="7449293405941233490"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.OurParticipation" schema="Facility" column="OurParticipation" view="Facilities" column-number="56" column-index="56" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:template-column nullable="true">
		  <plan:rdf-val column="Facility.Facilities.FacilityInterestMargin" columnID="7655159199248972217"/>
		  <plan:graph-node type="column-def" name="Facility.Facilities.FacilityInterestMargin" schema="Facility" column="FacilityInterestMargin" view="Facilities" column-number="57" column-index="57" static-type="DOUBLE"/>
		</plan:template-column>
		<plan:row>
		  <plan:graph-node type="column-def" name="Facility.Facilities.rowid" schema="Facility" column="rowid" view="Facilities" column-number="58" column-index="58" static-type="UNKNOWN" hidden="true"/>
		</plan:row>
	      </plan:template-view>
	    </plan:elems>
	  </plan:join>
	</plan:filter>
      </plan:expr>
    </plan:project>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"order":",singletons(17)", "_id":"N_1", "_parent":"N", "_name":"project", "column":["0 (Facility.Facilities.reportDate)", "1 (Facility.Facilities.systemStart)", "2 (Facility.Facilities.systemEnd)", "3 (Facility.Facilities.ID)", "4 (Facility.Facilities.EndOfMonth)", "5 (Facility.Facilities.ContinentAbbreviation)", "6 (Facility.Facilities.DepartmentAbbreviation)", "7 (Facility.Facilities.RegionAbbreviation)", "8 (Facility.Facilities.Office)", "9 (Facility.Facilities.MarketGroup)", "10 (Facility.Facilities.AACNumber)", "11 (Facility.Facilities.BCIDMainBorrower)", "12 (Facility.Facilities.MainBorrower)", "13 (Facility.Facilities.MainClientNumber)", "14 (Facility.Facilities.BCIDMainClient)", "15 (Facility.Facilities.ClientName)", "16 (Facility.Facilities.GlobalFacilityId)", "17 (Facility.Facilities.SubFacility)", "18 (Facility.Facilities.FacilityNumber)", "19 (Facility.Facilities.FacilityName)", "20 (Facility.Facilities.FacilityStartDate)", "21 (Facility.Facilities.FacilityMaturityDate)", "22 (Facility.Facilities.InitialTenor)", "23 (Facility.Facilities.RemainingTenor)", "24 (Facility.Facilities.FacilityType)", "25 (Facility.Facilities.FacilityCurrency)", "26 (Facility.Facilities.CfwCurrency)", "27 (Facility.Facilities.RegionCurrency)", "28 (Facility.Facilities.XrateFacToEUR)", "29 (Facility.Facilities.XrateCfwToEUR)", "30 (Facility.Facilities.XrateCfwToRegionCcy)", "31 (Facility.Facilities.LimitFacilityCcy)", "32 (Facility.Facilities.LimitInEUR)", "33 (Facility.Facilities.EffectiveLimitCfwCcy)", "34 (Facility.Facilities.EffectiveLimitRegionCcy)", "35 (Facility.Facilities.EffectiveLimitEur)", "36 (Facility.Facilities.ControlLimit)", "37 (Facility.Facilities.ControlLimitInEUR)", "38 (Facility.Facilities.TempLimitAdj)", "39 (Facility.Facilities.TempLimitAdjEur)", "40 (Facility.Facilities.SumSwingAmt)", "41 (Facility.Facilities.SumSwingAmtEur)", "42 (Facility.Facilities.ValueOfLiability)", "43 (Facility.Facilities.ValueOfLiabilityLimitCcy)", "44 (Facility.Facilities.ValueOfLiabilityRegionCcy)", "45 (Facility.Facilities.ValueOfLiabilityInEUR)", "46 (Facility.Facilities.ValueOfCollateralNett)", "47 (Facility.Facilities.ValueOfCollNettRegionCcy)", "48 (Facility.Facilities.ValueOfCollateralNettInEUR)", "49 (Facility.Facilities.ValueOfCollateralGross)", "50 (Facility.Facilities.ValueOfCollGrossRegionCcy)", "51 (Facility.Facilities.ValueOfCollateralGrossInEUR)", "52 (Facility.Facilities.TypeFacility)", "53 (Facility.Facilities.AbnPart)", "54 (Facility.Facilities.IndCommitted)", "55 (Facility.Facilities.Market)", "56 (Facility.Facilities.OurParticipation)", "57 (Facility.Facilities.FacilityInterestMargin)"]}',
'{"_id":"N_1_1", "_parent":"N_1", "condition":"fn:exists(Facility.Facilities.SubFacility)", "_name":"filter", "is-empty":"false"}',
'{"order":"58[NULLS_IRRELEVANT],singletons(17)", "_id":"N_1_1_1", "_parent":"N_1_1", "condition":"58=58", "_name":"sort-merge-join"}',
'{"dedup":"false", "_parentLabel":"left", "predicate":"Facility.Facilities.SubFacility (11388176825022016573)", "order":"58[NULLS_IRRELEVANT],singletons(17)", "_id":"N_1_1_1_L", "_parent":"N_1_1_1", "permutation":"PSO", "subject":"58 (Facility.Facilities.rowid)", "_name":"triple-index", "is-column":"true", "descending":"false", "object":"17 (Facility.Facilities.SubFacility)"}',
'{"left-graph-node":{"view":"Facilities", "type":"column-def", "column-index":"17", "schema":"Facility", "column":"SubFacility", "name":"Facility.Facilities.SubFacility"}, "_id":"N_1_1_1_L_1", "_parent":"N_1_1_1_L", "condition":"Facility.Facilities.SubFacility=\"N\"", "_name":"join-filter", "op":"="}',
'{"iri":"http://marklogic.com/view/Facility/Facilities", "_parentLabel":"right", "_id":"N_1_1_1_R", "viewID":"253620236761853331", "row":"58 (Facility.Facilities.rowid)", "schemaID":"3792136787781488268", "permutation":"PSO", "_parent":"N_1_1_1", "_name":"template-view", "column":["0 (Facility.Facilities.reportDate)", "1 (Facility.Facilities.systemStart)", "2 (Facility.Facilities.systemEnd)", "3 (Facility.Facilities.ID) [nullable]", "4 (Facility.Facilities.EndOfMonth) [nullable]", "5 (Facility.Facilities.ContinentAbbreviation) [nullable]", "6 (Facility.Facilities.DepartmentAbbreviation) [nullable]", "7 (Facility.Facilities.RegionAbbreviation) [nullable]", "8 (Facility.Facilities.Office) [nullable]", "9 (Facility.Facilities.MarketGroup) [nullable]", "10 (Facility.Facilities.AACNumber) [nullable]", "11 (Facility.Facilities.BCIDMainBorrower) [nullable]", "12 (Facility.Facilities.MainBorrower) [nullable]", "13 (Facility.Facilities.MainClientNumber) [nullable]", "14 (Facility.Facilities.BCIDMainClient) [nullable]", "15 (Facility.Facilities.ClientName) [nullable]", "16 (Facility.Facilities.GlobalFacilityId) [nullable]", "18 (Facility.Facilities.FacilityNumber) [nullable]", "19 (Facility.Facilities.FacilityName) [nullable]", "20 (Facility.Facilities.FacilityStartDate) [nullable]", "21 (Facility.Facilities.FacilityMaturityDate) [nullable]", "22 (Facility.Facilities.InitialTenor) [nullable]", "23 (Facility.Facilities.RemainingTenor) [nullable]", "24 (Facility.Facilities.FacilityType) [nullable]", "25 (Facility.Facilities.FacilityCurrency) [nullable]", "26 (Facility.Facilities.CfwCurrency) [nullable]", "27 (Facility.Facilities.RegionCurrency) [nullable]", "28 (Facility.Facilities.XrateFacToEUR) [nullable]", "29 (Facility.Facilities.XrateCfwToEUR) [nullable]", "30 (Facility.Facilities.XrateCfwToRegionCcy) [nullable]", "31 (Facility.Facilities.LimitFacilityCcy) [nullable]", "32 (Facility.Facilities.LimitInEUR) [nullable]", "33 (Facility.Facilities.EffectiveLimitCfwCcy) [nullable]", "34 (Facility.Facilities.EffectiveLimitRegionCcy) [nullable]", "35 (Facility.Facilities.EffectiveLimitEur) [nullable]", "36 (Facility.Facilities.ControlLimit) [nullable]", "37 (Facility.Facilities.ControlLimitInEUR) [nullable]", "38 (Facility.Facilities.TempLimitAdj) [nullable]", "39 (Facility.Facilities.TempLimitAdjEur) [nullable]", "40 (Facility.Facilities.SumSwingAmt) [nullable]", "41 (Facility.Facilities.SumSwingAmtEur) [nullable]", "42 (Facility.Facilities.ValueOfLiability) [nullable]", "43 (Facility.Facilities.ValueOfLiabilityLimitCcy) [nullable]", "44 (Facility.Facilities.ValueOfLiabilityRegionCcy) [nullable]", "45 (Facility.Facilities.ValueOfLiabilityInEUR) [nullable]", "46 (Facility.Facilities.ValueOfCollateralNett) [nullable]", "47 (Facility.Facilities.ValueOfCollNettRegionCcy) [nullable]", "48 (Facility.Facilities.ValueOfCollateralNettInEUR) [nullable]", "49 (Facility.Facilities.ValueOfCollateralGross) [nullable]", "50 (Facility.Facilities.ValueOfCollGrossRegionCcy) [nullable]", "51 (Facility.Facilities.ValueOfCollateralGrossInEUR) [nullable]", "52 (Facility.Facilities.TypeFacility) [nullable]", "53 (Facility.Facilities.AbnPart) [nullable]", "54 (Facility.Facilities.IndCommitted) [nullable]", "55 (Facility.Facilities.Market) [nullable]", "56 (Facility.Facilities.OurParticipation) [nullable]", "57 (Facility.Facilities.FacilityInterestMargin) [nullable]"]}'
)),
map:entry("name","exprs2")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="">
	<plan:vars>
	  <plan:graph-node type="var" name="rep" column-index="0" static-type="NONE"/>
	  <plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
	</plan:vars>
	<plan:expr>
	  <plan:sparql-union type="parallel-concat-union" order="">
	    <plan:triple-index order="0[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
	      <plan:subject>
		<plan:graph-node type="var" name="rep" column-index="0" static-type="NONE"/>
	      </plan:subject>
	      <plan:predicate>
		<plan:graph-node type="iri" name="http://one.redacted.org/Model#representationOf" static-type="NONE">
		  <plan:rdf-val>http://one.redacted.org/Model#representationOf</plan:rdf-val>
		</plan:graph-node>
	      </plan:predicate>
	      <plan:object>
		<plan:graph-node type="global-variable" name="entityIri" static-type="NONE"/>
	      </plan:object>
	    </plan:triple-index>
	    <plan:filter is-empty="false">
	      <plan:filters>
		<plan:or>
		  <plan:expr>
		    <plan:builtin uri="http://www.w3.org/2005/xpath-functions" name="not">
		      <plan:builtin uri="http://marklogic.com/semantics" name="isIRI">
			<plan:global-variable qname="language"/>
		      </plan:builtin>
		    </plan:builtin>
		  </plan:expr>
		  <plan:term>
		    <plan:value-compare op="EQ">
		      <plan:expr>
			<plan:global-variable qname="language"/>
		      </plan:expr>
		      <plan:term>
			<plan:sparql-variable column-index="9">
			  <plan:qname name="doclang" uri="" prfx="" ltrl="doclang"/>
			</plan:sparql-variable>
		      </plan:term>
		    </plan:value-compare>
		  </plan:term>
		</plan:or>
	      </plan:filters>
	      <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]">
		<plan:join-info>
		  <plan:hash left="4" right="4" operator="="/>
		  <plan:filters>
		    <plan:join-filter op="=">
		      <plan:left-graph-node>
			<plan:graph-node type="column-def" name="ANON5668863313099893101" schema="" column="ANON5668863313099893101" view="" column-number="0" column-index="4" static-type="UNKNOWN"/>
		      </plan:left-graph-node>
		      <plan:right-graph-node>
			<plan:graph-node type="column-def" name="ANON5668863313099893101" schema="" column="ANON5668863313099893101" view="" column-number="0" column-index="4" static-type="UNKNOWN"/>
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
			    <plan:graph-node type="column-def" name="ANON11039077871952293079" schema="" column="ANON11039077871952293079" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			  </plan:left-graph-node>
			  <plan:right-graph-node>
			    <plan:graph-node type="column-def" name="ANON11039077871952293079" schema="" column="ANON11039077871952293079" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			  </plan:right-graph-node>
			</plan:join-filter>
		      </plan:filters>
		    </plan:join-info>
		    <plan:elems>
		      <plan:join join-type="scatter-join" order="">
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
			  <plan:limit>
			    <plan:limit>
			      <plan:graph-node type="literal">
				<plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#integer">1</plan:rdf-val>
			      </plan:graph-node>
			    </plan:limit>
			    <plan:expr>
			      <plan:project order="">
				<plan:vars>
				  <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				</plan:vars>
				<plan:expr>
				  <plan:order-by order="desc(10)[NULLS_LAST],desc(17)[NULLS_LAST]" num-sorted="0">
				    <plan:order-spec descending="true" nulls-first="false">
				      <plan:graph-node type="var" name="type" column-index="10" static-type="NONE"/>
				    </plan:order-spec>
				    <plan:order-spec descending="true" nulls-first="false">
				      <plan:graph-node type="var" name="date" column-index="17" static-type="NONE"/>
				    </plan:order-spec>
				    <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]">
				      <plan:join-info>
					<plan:hash left="1" right="1" operator="="/>
					<plan:filters>
					  <plan:join-filter op="=">
					    <plan:left-graph-node>
					      <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
					    </plan:left-graph-node>
					    <plan:right-graph-node>
					      <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
					    </plan:right-graph-node>
					  </plan:join-filter>
					</plan:filters>
				      </plan:join-info>
				      <plan:elems>
					<plan:join join-type="scatter-join" order="12[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]">
					  <plan:join-info>
					    <plan:hash left="12" right="12" operator="="/>
					    <plan:filters>
					      <plan:join-filter op="=">
						<plan:left-graph-node>
						  <plan:graph-node type="column-def" name="ANON10986435698614903184" schema="" column="ANON10986435698614903184" view="" column-number="0" column-index="12" static-type="UNKNOWN"/>
						</plan:left-graph-node>
						<plan:right-graph-node>
						  <plan:graph-node type="column-def" name="ANON10986435698614903184" schema="" column="ANON10986435698614903184" view="" column-number="0" column-index="12" static-type="UNKNOWN"/>
						</plan:right-graph-node>
					      </plan:join-filter>
					    </plan:filters>
					  </plan:join-info>
					  <plan:elems>
					    <plan:join join-type="scatter-join" order="">
					      <plan:join-info>
						<plan:hash left="11" right="11" operator="="/>
						<plan:filters>
						  <plan:join-filter op="=">
						    <plan:left-graph-node>
						      <plan:graph-node type="column-def" name="ANON13380453253435828835" schema="" column="ANON13380453253435828835" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
						    </plan:left-graph-node>
						    <plan:right-graph-node>
						      <plan:graph-node type="column-def" name="ANON13380453253435828835" schema="" column="ANON13380453253435828835" view="" column-number="0" column-index="11" static-type="UNKNOWN"/>
						    </plan:right-graph-node>
						  </plan:join-filter>
						</plan:filters>
					      </plan:join-info>
					      <plan:elems>
						<plan:join join-type="scatter-join" order="">
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
						    <plan:triple-index order="2[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
						      <plan:subject>
							<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
						      </plan:subject>
						      <plan:predicate>
							<plan:graph-node type="iri" name="http://one.redacted.org/Model#agendaOf" static-type="NONE">
							  <plan:rdf-val>http://one.redacted.org/Model#agendaOf</plan:rdf-val>
							</plan:graph-node>
						      </plan:predicate>
						      <plan:object>
							<plan:graph-node type="global-variable" name="entityIri" static-type="NONE"/>
						      </plan:object>
						    </plan:triple-index>
						    <plan:join join-type="parallel-hash-join" order="">
						      <plan:join-info>
							<plan:hash left="2" right="2" operator="="/>
						      </plan:join-info>
						      <plan:elems>
							<plan:triple-index order="2[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
							  <plan:subject>
							    <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
							  </plan:subject>
							  <plan:predicate>
							    <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
							      <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
							    </plan:graph-node>
							  </plan:predicate>
							  <plan:object>
							    <plan:graph-node type="var" name="type" column-index="10" static-type="NONE"/>
							  </plan:object>
							</plan:triple-index>
							<plan:distinct>
							  <plan:project order="">
							    <plan:vars>
							      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
							      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
							    </plan:vars>
							    <plan:expr>
							      <plan:sparql-union type="parallel-concat-union" order="">
								<plan:distinct>
								  <plan:project order="">
								    <plan:vars>
								      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
								      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
								    </plan:vars>
								    <plan:expr>
								      <plan:sparql-union type="parallel-concat-union" order="">
									<plan:triple-index order="2[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
									  <plan:subject>
									    <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
									  </plan:subject>
									  <plan:predicate>
									    <plan:graph-node type="iri" name="http://one.redacted.org/Model#hasOfficialDocument" static-type="NONE">
									      <plan:rdf-val>http://one.redacted.org/Model#hasOfficialDocument</plan:rdf-val>
									    </plan:graph-node>
									  </plan:predicate>
									  <plan:object>
									    <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
									  </plan:object>
									</plan:triple-index>
									<plan:join join-type="scatter-join" order="16[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]">
									  <plan:join-info>
									    <plan:hash left="16" right="16" operator="="/>
									    <plan:filters>
									      <plan:join-filter op="=">
										<plan:left-graph-node>
										  <plan:graph-node type="column-def" name="ANON9160522946322493729" schema="" column="ANON9160522946322493729" view="" column-number="0" column-index="16" static-type="UNKNOWN"/>
										</plan:left-graph-node>
										<plan:right-graph-node>
										  <plan:graph-node type="column-def" name="ANON9160522946322493729" schema="" column="ANON9160522946322493729" view="" column-number="0" column-index="16" static-type="UNKNOWN"/>
										</plan:right-graph-node>
									      </plan:join-filter>
									    </plan:filters>
									  </plan:join-info>
									  <plan:elems>
									    <plan:triple-index order="2[NULLS_IRRELEVANT],16[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
									      <plan:subject>
										<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
									      </plan:subject>
									      <plan:predicate>
										<plan:graph-node type="iri" name="http://one.redacted.org/Model#hasOfficialDocument" static-type="NONE">
										  <plan:rdf-val>http://one.redacted.org/Model#hasOfficialDocument</plan:rdf-val>
										</plan:graph-node>
									      </plan:predicate>
									      <plan:object>
										<plan:graph-node type="blank" name="ANON9160522946322493729" column-index="16" static-type="NONE" hidden="true"/>
									      </plan:object>
									    </plan:triple-index>
									    <plan:triple-index order="16[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
									      <plan:subject>
										<plan:graph-node type="blank" name="ANON9160522946322493729" column-index="16" static-type="NONE" hidden="true"/>
									      </plan:subject>
									      <plan:predicate>
										<plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
										  <plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
										</plan:graph-node>
									      </plan:predicate>
									      <plan:object>
										<plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
									      </plan:object>
									    </plan:triple-index>
									  </plan:elems>
									</plan:join>
								      </plan:sparql-union>
								    </plan:expr>
								  </plan:project>
								</plan:distinct>
								<plan:zero-or-one>
								  <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
								  <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
								  <plan:triple-index order="2[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
								    <plan:subject>
								      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
								    </plan:subject>
								    <plan:predicate>
								      <plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
									<plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
								      </plan:graph-node>
								    </plan:predicate>
								    <plan:object>
								      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
								    </plan:object>
								  </plan:triple-index>
								  <plan:bind>
								    <plan:var>
								      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
								    </plan:var>
								    <plan:bind-expr>
								      <plan:sparql-variable column-index="2">
									<plan:qname name="doc" uri="" prfx="" ltrl="doc"/>
								      </plan:sparql-variable>
								    </plan:bind-expr>
								    <plan:expr>
								      <plan:distinct>
									<plan:sparql-union type="parallel-concat-union" order="">
									  <plan:triple-index order="2[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
									    <plan:subject>
									      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
									    </plan:subject>
									    <plan:predicate>
									      <plan:graph-node type="blank" name="ANON226869664758732871" column-index="12" static-type="NONE" hidden="true"/>
									    </plan:predicate>
									    <plan:object>
									      <plan:graph-node type="blank" name="ANON2157479819962975928" column-index="13" static-type="NONE" hidden="true"/>
									    </plan:object>
									  </plan:triple-index>
									  <plan:triple-index order="2[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
									    <plan:subject>
									      <plan:graph-node type="blank" name="ANON4213833806106895678" column-index="14" static-type="NONE" hidden="true"/>
									    </plan:subject>
									    <plan:predicate>
									      <plan:graph-node type="blank" name="ANON8666098900621621160" column-index="15" static-type="NONE" hidden="true"/>
									    </plan:predicate>
									    <plan:object>
									      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
									    </plan:object>
									  </plan:triple-index>
									</plan:sparql-union>
								      </plan:distinct>
								    </plan:expr>
								  </plan:bind>
								</plan:zero-or-one>
							      </plan:sparql-union>
							    </plan:expr>
							  </plan:project>
							</plan:distinct>
						      </plan:elems>
						    </plan:join>
						  </plan:elems>
						</plan:join>
						<plan:zero-or-one>
						  <plan:graph-node type="blank" name="ANON10986435698614903184" column-index="12" static-type="NONE" hidden="true"/>
						  <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
						  <plan:triple-index order="11[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
						    <plan:subject>
						      <plan:graph-node type="blank" name="ANON10986435698614903184" column-index="12" static-type="NONE" hidden="true"/>
						    </plan:subject>
						    <plan:predicate>
						      <plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
							<plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
						      </plan:graph-node>
						    </plan:predicate>
						    <plan:object>
						      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
						    </plan:object>
						  </plan:triple-index>
						  <plan:bind>
						    <plan:var>
						      <plan:graph-node type="blank" name="ANON13380453253435828835" column-index="11" static-type="NONE" hidden="true"/>
						    </plan:var>
						    <plan:bind-expr>
						      <plan:sparql-variable column-index="12">
							<plan:qname name="_:ANON10986435698614903184" uri="" prfx="" ltrl="_:ANON10986435698614903184"/>
						      </plan:sparql-variable>
						    </plan:bind-expr>
						    <plan:expr>
						      <plan:distinct>
							<plan:sparql-union type="parallel-concat-union" order="">
							  <plan:triple-index order="12[NULLS_IRRELEVANT],14[NULLS_IRRELEVANT],13[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
							    <plan:subject>
							      <plan:graph-node type="blank" name="ANON10986435698614903184" column-index="12" static-type="NONE" hidden="true"/>
							    </plan:subject>
							    <plan:predicate>
							      <plan:graph-node type="blank" name="ANON232198232699404656" column-index="13" static-type="NONE" hidden="true"/>
							    </plan:predicate>
							    <plan:object>
							      <plan:graph-node type="blank" name="ANON7553043330586613547" column-index="14" static-type="NONE" hidden="true"/>
							    </plan:object>
							  </plan:triple-index>
							  <plan:triple-index order="12[NULLS_IRRELEVANT],16[NULLS_IRRELEVANT],15[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
							    <plan:subject>
							      <plan:graph-node type="blank" name="ANON16031367555719268738" column-index="15" static-type="NONE" hidden="true"/>
							    </plan:subject>
							    <plan:predicate>
							      <plan:graph-node type="blank" name="ANON17271014456641643001" column-index="16" static-type="NONE" hidden="true"/>
							    </plan:predicate>
							    <plan:object>
							      <plan:graph-node type="blank" name="ANON10986435698614903184" column-index="12" static-type="NONE" hidden="true"/>
							    </plan:object>
							  </plan:triple-index>
							</plan:sparql-union>
						      </plan:distinct>
						    </plan:expr>
						  </plan:bind>
						</plan:zero-or-one>
					      </plan:elems>
					    </plan:join>
					    <plan:triple-index order="12[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="iri" name="http://one.redacted.org/Model#languageVersionOf" static-type="NONE">
						  <plan:rdf-val>http://one.redacted.org/Model#languageVersionOf</plan:rdf-val>
						</plan:graph-node>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="blank" name="ANON10986435698614903184" column-index="12" static-type="NONE" hidden="true"/>
					      </plan:object>
					    </plan:triple-index>
					  </plan:elems>
					</plan:join>
					<plan:join join-type="parallel-sort-merge-join" order="1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]">
					  <plan:join-info>
					    <plan:hash left="1" right="1" operator="="/>
					  </plan:join-info>
					  <plan:elems>
					    <plan:triple-index order="1[NULLS_IRRELEVANT],17[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="iri" name="http://one.redacted.org/Model#lastModifiedDate" static-type="NONE">
						  <plan:rdf-val>http://one.redacted.org/Model#lastModifiedDate</plan:rdf-val>
						</plan:graph-node>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="var" name="date" column-index="17" static-type="NONE"/>
					      </plan:object>
					    </plan:triple-index>
					    <plan:triple-index order="1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="rep" column-index="0" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="iri" name="http://one.redacted.org/Model#representationOf" static-type="NONE">
						  <plan:rdf-val>http://one.redacted.org/Model#representationOf</plan:rdf-val>
						</plan:graph-node>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
					      </plan:object>
					    </plan:triple-index>
					  </plan:elems>
					</plan:join>
				      </plan:elems>
				    </plan:join>
				  </plan:order-by>
				</plan:expr>
			      </plan:project>
			    </plan:expr>
			  </plan:limit>
			  <plan:distinct>
			    <plan:project order="">
			      <plan:vars>
				<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				<plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
			      </plan:vars>
			      <plan:expr>
				<plan:sparql-union type="parallel-concat-union" order="">
				  <plan:distinct>
				    <plan:project order="">
				      <plan:vars>
					<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
					<plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
				      </plan:vars>
				      <plan:expr>
					<plan:sparql-union type="parallel-concat-union" order="">
					  <plan:triple-index order="2[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					    <plan:subject>
					      <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
					    </plan:subject>
					    <plan:predicate>
					      <plan:graph-node type="iri" name="http://one.redacted.org/Model#hasOfficialDocument" static-type="NONE">
						<plan:rdf-val>http://one.redacted.org/Model#hasOfficialDocument</plan:rdf-val>
					      </plan:graph-node>
					    </plan:predicate>
					    <plan:object>
					      <plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
					    </plan:object>
					  </plan:triple-index>
					  <plan:join join-type="scatter-join" order="8[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
					    <plan:join-info>
					      <plan:hash left="8" right="8" operator="="/>
					      <plan:filters>
						<plan:join-filter op="=">
						  <plan:left-graph-node>
						    <plan:graph-node type="column-def" name="ANON16325469793622728524" schema="" column="ANON16325469793622728524" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
						  </plan:left-graph-node>
						  <plan:right-graph-node>
						    <plan:graph-node type="column-def" name="ANON16325469793622728524" schema="" column="ANON16325469793622728524" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
						  </plan:right-graph-node>
						</plan:join-filter>
					      </plan:filters>
					    </plan:join-info>
					    <plan:elems>
					      <plan:triple-index order="2[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
						<plan:subject>
						  <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
						</plan:subject>
						<plan:predicate>
						  <plan:graph-node type="iri" name="http://one.redacted.org/Model#hasOfficialDocument" static-type="NONE">
						    <plan:rdf-val>http://one.redacted.org/Model#hasOfficialDocument</plan:rdf-val>
						  </plan:graph-node>
						</plan:predicate>
						<plan:object>
						  <plan:graph-node type="blank" name="ANON16325469793622728524" column-index="8" static-type="NONE" hidden="true"/>
						</plan:object>
					      </plan:triple-index>
					      <plan:triple-index order="8[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
						<plan:subject>
						  <plan:graph-node type="blank" name="ANON16325469793622728524" column-index="8" static-type="NONE" hidden="true"/>
						</plan:subject>
						<plan:predicate>
						  <plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
						    <plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
						  </plan:graph-node>
						</plan:predicate>
						<plan:object>
						  <plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
						</plan:object>
					      </plan:triple-index>
					    </plan:elems>
					  </plan:join>
					</plan:sparql-union>
				      </plan:expr>
				    </plan:project>
				  </plan:distinct>
				  <plan:zero-or-one>
				    <plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				    <plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
				    <plan:triple-index order="2[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
					  <plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
				      </plan:object>
				    </plan:triple-index>
				    <plan:bind>
				      <plan:var>
					<plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
				      </plan:var>
				      <plan:bind-expr>
					<plan:sparql-variable column-index="2">
					  <plan:qname name="doc" uri="" prfx="" ltrl="doc"/>
					</plan:sparql-variable>
				      </plan:bind-expr>
				      <plan:expr>
					<plan:distinct>
					  <plan:sparql-union type="parallel-concat-union" order="">
					    <plan:triple-index order="2[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="blank" name="ANON1043330900445806587" column-index="4" static-type="NONE" hidden="true"/>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="blank" name="ANON8294936917797772374" column-index="5" static-type="NONE" hidden="true"/>
					      </plan:object>
					    </plan:triple-index>
					    <plan:triple-index order="2[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
					      <plan:subject>
						<plan:graph-node type="blank" name="ANON15856805176100845404" column-index="6" static-type="NONE" hidden="true"/>
					      </plan:subject>
					      <plan:predicate>
						<plan:graph-node type="blank" name="ANON15846090070307726551" column-index="7" static-type="NONE" hidden="true"/>
					      </plan:predicate>
					      <plan:object>
						<plan:graph-node type="var" name="doc" column-index="2" static-type="NONE"/>
					      </plan:object>
					    </plan:triple-index>
					  </plan:sparql-union>
					</plan:distinct>
				      </plan:expr>
				    </plan:bind>
				  </plan:zero-or-one>
				</plan:sparql-union>
			      </plan:expr>
			    </plan:project>
			  </plan:distinct>
			</plan:elems>
		      </plan:join>
		      <plan:zero-or-one>
			<plan:graph-node type="blank" name="ANON5668863313099893101" column-index="4" static-type="NONE" hidden="true"/>
			<plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
			<plan:triple-index order="3[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			  <plan:subject>
			    <plan:graph-node type="blank" name="ANON5668863313099893101" column-index="4" static-type="NONE" hidden="true"/>
			  </plan:subject>
			  <plan:predicate>
			    <plan:graph-node type="iri" name="http://one.redacted.org/Model#versionOf" static-type="NONE">
			      <plan:rdf-val>http://one.redacted.org/Model#versionOf</plan:rdf-val>
			    </plan:graph-node>
			  </plan:predicate>
			  <plan:object>
			    <plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
			  </plan:object>
			</plan:triple-index>
			<plan:bind>
			  <plan:var>
			    <plan:graph-node type="blank" name="ANON11039077871952293079" column-index="3" static-type="NONE" hidden="true"/>
			  </plan:var>
			  <plan:bind-expr>
			    <plan:sparql-variable column-index="4">
			      <plan:qname name="_:ANON5668863313099893101" uri="" prfx="" ltrl="_:ANON5668863313099893101"/>
			    </plan:sparql-variable>
			  </plan:bind-expr>
			  <plan:expr>
			    <plan:distinct>
			      <plan:sparql-union type="parallel-concat-union" order="">
				<plan:triple-index order="4[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="blank" name="ANON5668863313099893101" column-index="4" static-type="NONE" hidden="true"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="blank" name="ANON11537009450180521918" column-index="5" static-type="NONE" hidden="true"/>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="blank" name="ANON8632503256344397538" column-index="6" static-type="NONE" hidden="true"/>
				  </plan:object>
				</plan:triple-index>
				<plan:triple-index order="4[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="blank" name="ANON6887655231260925240" column-index="7" static-type="NONE" hidden="true"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="blank" name="ANON6196608908954357599" column-index="8" static-type="NONE" hidden="true"/>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="blank" name="ANON5668863313099893101" column-index="4" static-type="NONE" hidden="true"/>
				  </plan:object>
				</plan:triple-index>
			      </plan:sparql-union>
			    </plan:distinct>
			  </plan:expr>
			</plan:bind>
		      </plan:zero-or-one>
		    </plan:elems>
		  </plan:join>
		  <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]">
		    <plan:join-info>
		      <plan:hash left="1" right="1" operator="="/>
		      <plan:filters>
			<plan:join-filter op="=">
			  <plan:left-graph-node>
			    <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			  </plan:left-graph-node>
			  <plan:right-graph-node>
			    <plan:graph-node type="column-def" name="lv" schema="" column="lv" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			  </plan:right-graph-node>
			</plan:join-filter>
		      </plan:filters>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index order="4[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			<plan:subject>
			  <plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://one.redacted.org/Model#languageVersionOf" static-type="NONE">
			    <plan:rdf-val>http://one.redacted.org/Model#languageVersionOf</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="blank" name="ANON5668863313099893101" column-index="4" static-type="NONE" hidden="true"/>
			</plan:object>
		      </plan:triple-index>
		      <plan:join join-type="parallel-hash-join" order="1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]">
			<plan:join-info>
			  <plan:hash left="1" right="1" operator="="/>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index order="1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			    <plan:subject>
			      <plan:graph-node type="var" name="rep" column-index="0" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://one.redacted.org/Model#representationOf" static-type="NONE">
				<plan:rdf-val>http://one.redacted.org/Model#representationOf</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			  <plan:triple-index order="1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			    <plan:subject>
			      <plan:graph-node type="var" name="lv" column-index="1" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://one.redacted.org/Model#hasLanguage" static-type="NONE">
				<plan:rdf-val>http://one.redacted.org/Model#hasLanguage</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="doclang" column-index="9" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			</plan:elems>
		      </plan:join>
		    </plan:elems>
		  </plan:join>
		</plan:elems>
	      </plan:join>
	    </plan:filter>
	  </plan:sparql-union>
	</plan:expr>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_parent":"N", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (?rep)", "1 (?lv)"]}',
'{"order":"", "_id":"N_1_1_1", "type":"parallel-concat-union", "_parent":"N_1_1", "_name":"sparql-union"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#representationOf>", "order":"0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1", "_parent":"N_1_1_1", "permutation":"OPS", "subject":"0 (?rep)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"$entityIri"}',
'{"_id":"N_1_1_1_2", "_parent":"N_1_1_1", "condition":"fn:not(sem:isIRI($language)) or $language eq ?doclang", "_name":"filter", "is-empty":"false"}',
'{"order":"1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1", "_parent":"N_1_1_1_2", "condition":"4=4", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_2_1_L", "_parent":"N_1_1_1_2_1", "condition":"3=3", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_2_1_L_L", "_parent":"N_1_1_1_2_1_L", "condition":"2=2", "_name":"scatter-join"}',
'{"_parentLabel":"left", "limit":"1", "_id":"N_1_1_1_2_1_L_L_L", "_parent":"N_1_1_1_2_1_L_L", "_name":"limit"}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_L_1", "_parent":"N_1_1_1_2_1_L_L_L", "_name":"project", "column":"2 (?doc)"}',
'{"order":"desc(10)[NULLS_LAST],desc(17)[NULLS_LAST]", "_id":"N_1_1_1_2_1_L_L_L_1_1", "_parent":"N_1_1_1_2_1_L_L_L_1", "order-spec":["10 (?type) [desc]", "17 (?date) [desc]"], "_name":"order-by", "num-sorted":"0"}',
'{"order":"1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1", "condition":"1=1", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"12[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1", "condition":"12=12", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L", "condition":"11=11", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L", "condition":"2=2", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#agendaOf>", "order":"2[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L", "permutation":"OPS", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"$entityIri"}',
'{"_parentLabel":"right", "order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L", "condition":"2=2", "_name":"parallel-hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>", "order":"2[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"10 (?type)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R", "_name":"project", "column":["2 (?doc)", "11 (_:ANON13380453253435828835)"]}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1", "type":"parallel-concat-union", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1", "_name":"sparql-union"}',
'{"_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1", "_name":"project", "column":["2 (?doc)", "11 (_:ANON13380453253435828835)"]}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1", "type":"parallel-concat-union", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1", "_name":"sparql-union"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#hasOfficialDocument>", "order":"2[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"11 (_:ANON13380453253435828835)"}',
'{"order":"16[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_2", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1", "condition":"16=16", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#hasOfficialDocument>", "order":"2[NULLS_IRRELEVANT],16[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_2_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_2", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"16 (_:ANON9160522946322493729)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"16[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_2_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_1_1_1_2", "permutation":"SOP", "subject":"16 (_:ANON9160522946322493729)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"11 (_:ANON13380453253435828835)"}',
'{"_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_2", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1", "subject":"2 (?doc)", "object":"11 (_:ANON13380453253435828835)", "_name":"zero-or-one"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"2[NULLS_IRRELEVANT],11[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_2_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_L_R_R_1_1_2", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"11 (_:ANON13380453253435828835)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L", "subject":"12 (_:ANON10986435698614903184)", "object":"11 (_:ANON13380453253435828835)", "_name":"zero-or-one"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"11[NULLS_IRRELEVANT],12[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_R_1", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L_L_R", "permutation":"OPS", "subject":"12 (_:ANON10986435698614903184)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"11 (_:ANON13380453253435828835)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://one.redacted.org/Model#languageVersionOf>", "order":"12[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_L_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_L", "permutation":"OPS", "subject":"1 (?lv)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"12 (_:ANON10986435698614903184)"}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1", "condition":"1=1", "_name":"parallel-sort-merge-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#lastModifiedDate>", "order":"1[NULLS_IRRELEVANT],17[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_R_L", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_R", "permutation":"SOP", "subject":"1 (?lv)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"17 (?date)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://one.redacted.org/Model#representationOf>", "order":"1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_L_1_1_1_R_R", "_parent":"N_1_1_1_2_1_L_L_L_1_1_1_R", "permutation":"OPS", "subject":"0 (?rep)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?lv)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_2_1_L_L_R", "_parent":"N_1_1_1_2_1_L_L", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_R_1", "_parent":"N_1_1_1_2_1_L_L_R", "_name":"project", "column":["2 (?doc)", "3 (_:ANON11039077871952293079)"]}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_R_1_1", "type":"parallel-concat-union", "_parent":"N_1_1_1_2_1_L_L_R_1", "_name":"sparql-union"}',
'{"_id":"N_1_1_1_2_1_L_L_R_1_1_1", "_parent":"N_1_1_1_2_1_L_L_R_1_1", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1", "_name":"project", "column":["2 (?doc)", "3 (_:ANON11039077871952293079)"]}',
'{"order":"", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1_1", "type":"parallel-concat-union", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1_1", "_name":"sparql-union"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#hasOfficialDocument>", "order":"2[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_1", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1_1_1", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (_:ANON11039077871952293079)"}',
'{"order":"8[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_2", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1_1_1", "condition":"8=8", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#hasOfficialDocument>", "order":"2[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_2_L", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_2", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"8 (_:ANON16325469793622728524)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"8[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_2_R", "_parent":"N_1_1_1_2_1_L_L_R_1_1_1_1_1_2", "permutation":"SOP", "subject":"8 (_:ANON16325469793622728524)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (_:ANON11039077871952293079)"}',
'{"_id":"N_1_1_1_2_1_L_L_R_1_1_2", "_parent":"N_1_1_1_2_1_L_L_R_1_1", "subject":"2 (?doc)", "object":"3 (_:ANON11039077871952293079)", "_name":"zero-or-one"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"2[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_L_R_1_1_2_1", "_parent":"N_1_1_1_2_1_L_L_R_1_1_2", "permutation":"SOP", "subject":"2 (?doc)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (_:ANON11039077871952293079)"}',
'{"_parentLabel":"right", "_id":"N_1_1_1_2_1_L_R", "_parent":"N_1_1_1_2_1_L", "subject":"4 (_:ANON5668863313099893101)", "object":"3 (_:ANON11039077871952293079)", "_name":"zero-or-one"}',
'{"dedup":"true", "predicate":"<http://one.redacted.org/Model#versionOf>", "order":"3[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_L_R_1", "_parent":"N_1_1_1_2_1_L_R", "permutation":"OPS", "subject":"4 (_:ANON5668863313099893101)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (_:ANON11039077871952293079)"}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_R", "_parent":"N_1_1_1_2_1", "condition":"1=1", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#languageVersionOf>", "order":"4[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_R_L", "_parent":"N_1_1_1_2_1_R", "permutation":"OPS", "subject":"1 (?lv)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"4 (_:ANON5668863313099893101)"}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_R_R", "_parent":"N_1_1_1_2_1_R", "condition":"1=1", "_name":"parallel-hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://one.redacted.org/Model#representationOf>", "order":"1[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_R_R_L", "_parent":"N_1_1_1_2_1_R_R", "permutation":"OPS", "subject":"0 (?rep)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?lv)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://one.redacted.org/Model#hasLanguage>", "order":"1[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT]", "_id":"N_1_1_1_2_1_R_R_R", "_parent":"N_1_1_1_2_1_R_R", "permutation":"SOP", "subject":"1 (?lv)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"9 (?doclang)"}'
)),
map:entry("name","exprs3")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="">
	<plan:vars>
	  <plan:graph-node type="var" name="name1" column-index="0" static-type="NONE"/>
	  <plan:graph-node type="var" name="name2" column-index="1" static-type="NONE"/>
	</plan:vars>
	<plan:expr>
	  <plan:join join-type="bloom-join" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="2.39733e+07" estimated-count="2.65281e+06" io-cost="0/296204/48941.3/512831/48941.3" nw-cost="101/449133/96078/755826/96078" cpu-cost="0/1.56618e+06/8.98691e+06/2.13455e+06/8.98691e+06" dcpu-cost="0/234138/48039/432744/48039" mem-cost="837960" dmem-cost="1539" cardinalities="(46510.3,62013.8),(82685,82685),(48037.8,48039),(56904,56904),(46510.3,46511),(82102,82102),(1382,1382)">
	    <plan:join-info>
	      <plan:hash left="5" right="5" operator="="/>
	      <plan:filters>
		<plan:join-filter op="bloom">
		  <plan:left-graph-node>
		    <plan:graph-node type="column-def" name="author2" schema="" column="author2" view="" column-number="0" column-index="5" static-type="UNKNOWN"/>
		  </plan:left-graph-node>
		  <plan:right-graph-node>
		    <plan:graph-node type="column-def" name="author2" schema="" column="author2" view="" column-number="0" column-index="5" static-type="UNKNOWN"/>
		  </plan:right-graph-node>
		</plan:join-filter>
		<plan:join-filter op="&lt;">
		  <plan:left-graph-node>
		    <plan:graph-node type="column-def" name="name1" schema="" column="name1" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
		  </plan:left-graph-node>
		  <plan:right-graph-node>
		    <plan:graph-node type="column-def" name="name2" schema="" column="name2" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		  </plan:right-graph-node>
		</plan:join-filter>
	      </plan:filters>
	    </plan:join-info>
	    <plan:elems>
	      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" cost="2.43206e+06" estimated-count="82685" io-cost="0/19.3788/69418.9/19.3788/69418.9" nw-cost="101/0/165370/101/165370" cpu-cost="0/0/165.37/0/165.37" dcpu-cost="0/0/82685/0/82685" mem-cost="0" dmem-cost="0" cardinalities="(0,0),(82685,82685),(0,0),(0,0),(0,0),(82685,82685)">
		<plan:subject>
		  <plan:graph-node type="var" name="author2" column-index="5" static-type="NONE"/>
		</plan:subject>
		<plan:predicate>
		  <plan:graph-node type="iri" name="http://xmlns.com/foaf/0.1/name" static-type="NONE">
		    <plan:rdf-val>http://xmlns.com/foaf/0.1/name</plan:rdf-val>
		  </plan:graph-node>
		</plan:predicate>
		<plan:object>
		  <plan:graph-node type="var" name="name2" column-index="1" static-type="NONE"/>
		</plan:object>
	      </plan:triple-index>
	      <plan:join join-type="parallel-hash-join" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="1.49425e+07" estimated-count="2.94757e+06" io-cost="0/226766/48941.3/443393/48941.3" nw-cost="358/283405/96078/590355/96078" cpu-cost="0/1.15259e+06/3.09178e+06/1.72096e+06/3.09178e+06" dcpu-cost="0/151453/48039/350059/48039" mem-cost="672333" dmem-cost="1539" cardinalities="(46510.3,62013.8),(0,0),(48037.8,48039),(56904,56904),(46510.3,46511),(82102,82102),(1382,1382)">
		<plan:join-info>
		  <plan:hash left="6" right="6" operator="="/>
		</plan:join-info>
		<plan:elems>
		  <plan:join join-type="parallel-hash-join" order="3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]" cost="6.16426e+06" estimated-count="84798.5" io-cost="0/45486.4/147922/68705/147922" nw-cost="358/113808/169597/172043/169597" cpu-cost="0/398485/169767/398599/169767" dcpu-cost="0/56904/84798.5/113808/84798.5" mem-cost="171068" dmem-cost="770" cardinalities="(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102),(1382,1382)">
		    <plan:join-info>
		      <plan:hash left="3" right="3" operator="="/>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="3[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="1.65392e+06" estimated-count="56904" io-cost="0/19.3788/45467/19.3788/45467" nw-cost="358/0/113808/358/113808" cpu-cost="0/0/113.808/0/113.808" dcpu-cost="0/0/56904/0/56904" mem-cost="0" dmem-cost="257" cardinalities="(0,0),(0,0),(0,0),(56904,56904),(0,0),(0,0),(1382,1382)">
			<plan:subject>
			  <plan:graph-node type="var" name="article2" column-index="3" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://swrc.ontoware.org/ontology#journal" static-type="NONE">
			    <plan:rdf-val>http://swrc.ontoware.org/ontology#journal</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="var" name="journal" column-index="6" static-type="NONE"/>
			</plan:object>
		      </plan:triple-index>
		      <plan:join join-type="bloom-join" order="3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]" cost="4.48744e+06" estimated-count="84798.5" io-cost="0/23218.7/147922/23218.7/147922" nw-cost="359/57518/169597/57877/169597" cpu-cost="0/170769/84968.1/170769/84968.1" dcpu-cost="0/56904/84798.5/56904/84798.5" mem-cost="57160" dmem-cost="513" cardinalities="(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102)">
			<plan:join-info>
			  <plan:hash left="3" right="3" operator="="/>
			  <plan:filters>
			    <plan:join-filter op="bloom">
			      <plan:left-graph-node>
				<plan:graph-node type="column-def" name="article2" schema="" column="article2" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			      </plan:left-graph-node>
			      <plan:right-graph-node>
				<plan:graph-node type="column-def" name="article2" schema="" column="article2" view="" column-number="0" column-index="3" static-type="UNKNOWN"/>
			      </plan:right-graph-node>
			    </plan:join-filter>
			  </plan:filters>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="3[NULLS_IRRELEVANT]" cost="860431" estimated-count="56904" io-cost="0/38.7576/23005.5/38.7576/23005.5" nw-cost="359/0/56904/359/56904" cpu-cost="0/0/56.904/0/56.904" dcpu-cost="0/0/56904/0/56904" mem-cost="0" dmem-cost="257" cardinalities="(0,0),(0,0),(0,0),(56904,56904)">
			    <plan:subject>
			      <plan:graph-node type="var" name="article2" column-index="3" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
				<plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="iri" name="http://localhost/vocabulary/bench/Article" static-type="NONE">
				<plan:rdf-val>http://localhost/vocabulary/bench/Article</plan:rdf-val>
			      </plan:graph-node>
			    </plan:object>
			  </plan:triple-index>
			  <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]" cost="3.26883e+06" estimated-count="84798.5" io-cost="0/174.409/147922/174.409/147922" nw-cost="614/0/169597/614/169597" cpu-cost="0/0/169.597/0/169.597" dcpu-cost="0/0/84798.5/0/84798.5" mem-cost="0" dmem-cost="513" cardinalities="(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102)">
			    <plan:subject>
			      <plan:graph-node type="var" name="article2" column-index="3" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://purl.org/dc/elements/1.1/creator" static-type="NONE">
				<plan:rdf-val>http://purl.org/dc/elements/1.1/creator</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="author2" column-index="5" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			</plan:elems>
		      </plan:join>
		    </plan:elems>
		  </plan:join>
		  <plan:join join-type="bloom-join" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="7.74747e+06" estimated-count="48037.8" io-cost="0/226766/48941.3/226766/48941.3" nw-cost="359/248356/96078/248715/96078" cpu-cost="0/643702/144210/643702/144210" dcpu-cost="0/151453/48039/151453/48039" mem-cost="246770" dmem-cost="769" cardinalities="(46510.3,62013.8),(0,0),(48037.8,48039),(0,0),(46510.3,46511),(0,0),(1382,1382)">
		    <plan:join-info>
		      <plan:hash left="2" right="2" operator="="/>
		      <plan:filters>
			<plan:join-filter op="bloom">
			  <plan:left-graph-node>
			    <plan:graph-node type="column-def" name="article1" schema="" column="article1" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
			  </plan:left-graph-node>
			  <plan:right-graph-node>
			    <plan:graph-node type="column-def" name="article1" schema="" column="article1" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
			  </plan:right-graph-node>
			</plan:join-filter>
		      </plan:filters>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index permutation="OPS" dedup="true" descending="false" is-column="false" order="2[NULLS_IRRELEVANT]" cost="860431" estimated-count="56904" io-cost="0/38.7576/23005.5/38.7576/23005.5" nw-cost="359/0/56904/359/56904" cpu-cost="0/0/56.904/0/56.904" dcpu-cost="0/0/56904/0/56904" mem-cost="0" dmem-cost="257" cardinalities="(0,0),(0,0),(56904,56904)">
			<plan:subject>
			  <plan:graph-node type="var" name="article1" column-index="2" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" static-type="NONE">
			    <plan:rdf-val>http://www.w3.org/1999/02/22-rdf-syntax-ns#type</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="iri" name="http://localhost/vocabulary/bench/Article" static-type="NONE">
			    <plan:rdf-val>http://localhost/vocabulary/bench/Article</plan:rdf-val>
			  </plan:graph-node>
			</plan:object>
		      </plan:triple-index>
		      <plan:join join-type="bloom-join" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="6.56557e+06" estimated-count="48037.8" io-cost="0/203722/48941.3/203722/48941.3" nw-cost="614/190838/96078/191452/96078" cpu-cost="0/472933/96172.5/472933/96172.5" dcpu-cost="0/94548.9/48039/94548.9/48039" mem-cost="189610" dmem-cost="769" cardinalities="(46510.3,62013.8),(0,0),(48037.8,48039),(0,0),(46510.3,46511),(0,0),(1382,1382)">
			<plan:join-info>
			  <plan:hash left="4" right="4" operator="="/>
			  <plan:filters>
			    <plan:join-filter op="bloom">
			      <plan:left-graph-node>
				<plan:graph-node type="column-def" name="author1" schema="" column="author1" view="" column-number="0" column-index="4" static-type="UNKNOWN"/>
			      </plan:left-graph-node>
			      <plan:right-graph-node>
				<plan:graph-node type="column-def" name="author1" schema="" column="author1" view="" column-number="0" column-index="4" static-type="UNKNOWN"/>
			      </plan:right-graph-node>
			    </plan:join-filter>
			  </plan:filters>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index permutation="POS" dedup="true" descending="false" is-column="false" order="0[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" cost="1.39484e+06" estimated-count="46510.3" io-cost="0/58.1365/41064.1/58.1365/41064.1" nw-cost="614/0/93020.6/614/93020.6" cpu-cost="0/0/93.0206/0/93.0206" dcpu-cost="0/0/46510.3/0/46510.3" mem-cost="0" dmem-cost="513" cardinalities="(46510.3,62013.8),(0,0),(0,0),(0,0),(46510.3,82685)">
			    <plan:subject>
			      <plan:graph-node type="var" name="author1" column-index="4" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://xmlns.com/foaf/0.1/name" static-type="NONE">
				<plan:rdf-val>http://xmlns.com/foaf/0.1/name</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="name1" column-index="0" static-type="NONE"/>
			    </plan:object>
			  </plan:triple-index>
			  <plan:join join-type="bloom-join" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="4.72811e+06" estimated-count="48038.6" io-cost="0/162600/48941.3/162600/48941.3" nw-cost="870/96947.1/96078/97817.1/96078" cpu-cost="0/240289/48134.6/240289/48134.6" dcpu-cost="0/48038.6/48039/48038.6/48039" mem-cost="96333.1" dmem-cost="769" cardinalities="(0,0),(0,0),(48038.6,48039),(0,0),(46511,46511),(0,0),(1382,1382)">
			    <plan:join-info>
			      <plan:hash left="2" right="2" operator="="/>
			      <plan:filters>
				<plan:join-filter op="bloom">
				  <plan:left-graph-node>
				    <plan:graph-node type="column-def" name="article1" schema="" column="article1" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
				  </plan:left-graph-node>
				  <plan:right-graph-node>
				    <plan:graph-node type="column-def" name="article1" schema="" column="article1" view="" column-number="0" column-index="2" static-type="UNKNOWN"/>
				  </plan:right-graph-node>
				</plan:join-filter>
			      </plan:filters>
			    </plan:join-info>
			    <plan:elems>
			      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="2[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" cost="2.64368e+06" estimated-count="48038.6" io-cost="0/174.409/162328/174.409/162328" nw-cost="870/0/96077.1/870/96077.1" cpu-cost="0/0/96.0771/0/96.0771" dcpu-cost="0/0/48038.6/0/48038.6" mem-cost="0" dmem-cost="769" cardinalities="(0,0),(0,0),(48038.6,56904),(0,0),(46511,46511)">
				<plan:subject>
				  <plan:graph-node type="var" name="article1" column-index="2" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://purl.org/dc/elements/1.1/creator" static-type="NONE">
				    <plan:rdf-val>http://purl.org/dc/elements/1.1/creator</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="author1" column-index="4" static-type="NONE"/>
				</plan:object>
			      </plan:triple-index>
			      <plan:triple-index permutation="PSO" dedup="true" descending="false" is-column="false" order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" cost="1.50896e+06" estimated-count="48039" io-cost="0/96.8941/48941.3/96.8941/48941.3" nw-cost="870/0/96078/870/96078" cpu-cost="0/0/96.078/0/96.078" dcpu-cost="0/0/48039/0/48039" mem-cost="0" dmem-cost="769" cardinalities="(0,0),(0,0),(48039,48039),(0,0),(0,0),(0,0),(1382,1382)">
				<plan:subject>
				  <plan:graph-node type="var" name="article1" column-index="2" static-type="NONE"/>
				</plan:subject>
				<plan:predicate>
				  <plan:graph-node type="iri" name="http://swrc.ontoware.org/ontology#journal" static-type="NONE">
				    <plan:rdf-val>http://swrc.ontoware.org/ontology#journal</plan:rdf-val>
				  </plan:graph-node>
				</plan:predicate>
				<plan:object>
				  <plan:graph-node type="var" name="journal" column-index="6" static-type="NONE"/>
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
	    </plan:elems>
	    <plan:filters>
	      <plan:join-filter op="&lt;">
		<plan:left-graph-node>
		  <plan:graph-node type="column-def" name="name1" schema="" column="name1" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
		</plan:left-graph-node>
		<plan:right-graph-node>
		  <plan:graph-node type="column-def" name="name2" schema="" column="name2" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		</plan:right-graph-node>
	      </plan:join-filter>
	    </plan:filters>
	  </plan:join>
	</plan:expr>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_parent":"N", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (?name1)", "1 (?name2)"]}',
'{"cost":"2.39733e+07", "nw-cost":"101/449133/96078/755826/96078", "cpu-cost":"0/1.56618e+06/8.98691e+06/2.13455e+06/8.98691e+06", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "condition":"5=5", "join-filter":"name1<name2", "_name":"bloom-join", "dcpu-cost":"0/234138/48039/432744/48039", "_id":"N_1_1_1", "_parent":"N_1_1", "mem-cost":"837960", "io-cost":"0/296204/48941.3/512831/48941.3", "estimated-count":"2.65281e+06", "dmem-cost":"1539", "cardinalities":"(46510.3,62013.8),(82685,82685),(48037.8,48039),(56904,56904),(46510.3,46511),(82102,82102),(1382,1382)"}',
'{"dedup":"true", "cost":"2.43206e+06", "nw-cost":"101/0/165370/101/165370", "cpu-cost":"0/0/165.37/0/165.37", "order":"5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "subject":"5 (?author2)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/82685/0/82685", "_parentLabel":"left", "predicate":"<http://xmlns.com/foaf/0.1/name>", "_id":"N_1_1_1_L", "_parent":"N_1_1_1", "mem-cost":"0", "permutation":"PSO", "estimated-count":"82685", "io-cost":"0/19.3788/69418.9/19.3788/69418.9", "dmem-cost":"0", "cardinalities":"(0,0),(82685,82685),(0,0),(0,0),(0,0),(82685,82685)", "object":"1 (?name2)"}',
'{"cost":"1.49425e+07", "nw-cost":"358/283405/96078/590355/96078", "cpu-cost":"0/1.15259e+06/3.09178e+06/1.72096e+06/3.09178e+06", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "condition":"6=6", "_name":"parallel-hash-join", "dcpu-cost":"0/151453/48039/350059/48039", "_parentLabel":"right", "_id":"N_1_1_1_R", "_parent":"N_1_1_1", "mem-cost":"672333", "io-cost":"0/226766/48941.3/443393/48941.3", "estimated-count":"2.94757e+06", "dmem-cost":"1539", "cardinalities":"(46510.3,62013.8),(0,0),(48037.8,48039),(56904,56904),(46510.3,46511),(82102,82102),(1382,1382)"}',
'{"cost":"6.16426e+06", "nw-cost":"358/113808/169597/172043/169597", "cpu-cost":"0/398485/169767/398599/169767", "order":"3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]", "condition":"3=3", "_name":"parallel-hash-join", "dcpu-cost":"0/56904/84798.5/113808/84798.5", "_parentLabel":"left", "_id":"N_1_1_1_R_L", "_parent":"N_1_1_1_R", "mem-cost":"171068", "io-cost":"0/45486.4/147922/68705/147922", "estimated-count":"84798.5", "dmem-cost":"770", "cardinalities":"(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102),(1382,1382)"}',
'{"dedup":"true", "cost":"1.65392e+06", "nw-cost":"358/0/113808/358/113808", "cpu-cost":"0/0/113.808/0/113.808", "order":"3[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "subject":"3 (?article2)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/56904/0/56904", "_parentLabel":"left", "predicate":"<http://swrc.ontoware.org/ontology#journal>", "_id":"N_1_1_1_R_L_L", "_parent":"N_1_1_1_R_L", "mem-cost":"0", "permutation":"PSO", "estimated-count":"56904", "io-cost":"0/19.3788/45467/19.3788/45467", "dmem-cost":"257", "cardinalities":"(0,0),(0,0),(0,0),(56904,56904),(0,0),(0,0),(1382,1382)", "object":"6 (?journal)"}',
'{"cost":"4.48744e+06", "nw-cost":"359/57518/169597/57877/169597", "cpu-cost":"0/170769/84968.1/170769/84968.1", "order":"3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]", "condition":"3=3", "_name":"bloom-join", "dcpu-cost":"0/56904/84798.5/56904/84798.5", "_parentLabel":"right", "_id":"N_1_1_1_R_L_R", "_parent":"N_1_1_1_R_L", "mem-cost":"57160", "io-cost":"0/23218.7/147922/23218.7/147922", "estimated-count":"84798.5", "dmem-cost":"513", "cardinalities":"(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102)"}',
'{"dedup":"true", "cost":"860431", "nw-cost":"359/0/56904/359/56904", "cpu-cost":"0/0/56.904/0/56.904", "order":"3[NULLS_IRRELEVANT]", "subject":"3 (?article2)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/56904/0/56904", "_parentLabel":"left", "predicate":"<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>", "_id":"N_1_1_1_R_L_R_L", "_parent":"N_1_1_1_R_L_R", "mem-cost":"0", "permutation":"OPS", "estimated-count":"56904", "io-cost":"0/38.7576/23005.5/38.7576/23005.5", "dmem-cost":"257", "cardinalities":"(0,0),(0,0),(0,0),(56904,56904)", "object":"<http://localhost/vocabulary/bench/Article>"}',
'{"dedup":"true", "cost":"3.26883e+06", "nw-cost":"614/0/169597/614/169597", "cpu-cost":"0/0/169.597/0/169.597", "order":"3[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]", "subject":"3 (?article2)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/84798.5/0/84798.5", "_parentLabel":"right", "predicate":"<http://purl.org/dc/elements/1.1/creator>", "_id":"N_1_1_1_R_L_R_R", "_parent":"N_1_1_1_R_L_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"84798.5", "io-cost":"0/174.409/147922/174.409/147922", "dmem-cost":"513", "cardinalities":"(0,0),(0,0),(0,0),(56904,56904),(0,0),(82102,82102)", "object":"5 (?author2)"}',
'{"cost":"7.74747e+06", "nw-cost":"359/248356/96078/248715/96078", "cpu-cost":"0/643702/144210/643702/144210", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "condition":"2=2", "_name":"bloom-join", "dcpu-cost":"0/151453/48039/151453/48039", "_parentLabel":"right", "_id":"N_1_1_1_R_R", "_parent":"N_1_1_1_R", "mem-cost":"246770", "io-cost":"0/226766/48941.3/226766/48941.3", "estimated-count":"48037.8", "dmem-cost":"769", "cardinalities":"(46510.3,62013.8),(0,0),(48037.8,48039),(0,0),(46510.3,46511),(0,0),(1382,1382)"}',
'{"dedup":"true", "cost":"860431", "nw-cost":"359/0/56904/359/56904", "cpu-cost":"0/0/56.904/0/56.904", "order":"2[NULLS_IRRELEVANT]", "subject":"2 (?article1)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/56904/0/56904", "_parentLabel":"left", "predicate":"<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>", "_id":"N_1_1_1_R_R_L", "_parent":"N_1_1_1_R_R", "mem-cost":"0", "permutation":"OPS", "estimated-count":"56904", "io-cost":"0/38.7576/23005.5/38.7576/23005.5", "dmem-cost":"257", "cardinalities":"(0,0),(0,0),(56904,56904)", "object":"<http://localhost/vocabulary/bench/Article>"}',
'{"cost":"6.56557e+06", "nw-cost":"614/190838/96078/191452/96078", "cpu-cost":"0/472933/96172.5/472933/96172.5", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "condition":"4=4", "_name":"bloom-join", "dcpu-cost":"0/94548.9/48039/94548.9/48039", "_parentLabel":"right", "_id":"N_1_1_1_R_R_R", "_parent":"N_1_1_1_R_R", "mem-cost":"189610", "io-cost":"0/203722/48941.3/203722/48941.3", "estimated-count":"48037.8", "dmem-cost":"769", "cardinalities":"(46510.3,62013.8),(0,0),(48037.8,48039),(0,0),(46510.3,46511),(0,0),(1382,1382)"}',
'{"dedup":"true", "cost":"1.39484e+06", "nw-cost":"614/0/93020.6/614/93020.6", "cpu-cost":"0/0/93.0206/0/93.0206", "order":"0[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]", "subject":"4 (?author1)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/46510.3/0/46510.3", "_parentLabel":"left", "predicate":"<http://xmlns.com/foaf/0.1/name>", "_id":"N_1_1_1_R_R_R_L", "_parent":"N_1_1_1_R_R_R", "mem-cost":"0", "permutation":"POS", "estimated-count":"46510.3", "io-cost":"0/58.1365/41064.1/58.1365/41064.1", "dmem-cost":"513", "cardinalities":"(46510.3,62013.8),(0,0),(0,0),(0,0),(46510.3,82685)", "object":"0 (?name1)"}',
'{"cost":"4.72811e+06", "nw-cost":"870/96947.1/96078/97817.1/96078", "cpu-cost":"0/240289/48134.6/240289/48134.6", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "condition":"2=2", "_name":"bloom-join", "dcpu-cost":"0/48038.6/48039/48038.6/48039", "_parentLabel":"right", "_id":"N_1_1_1_R_R_R_R", "_parent":"N_1_1_1_R_R_R", "mem-cost":"96333.1", "io-cost":"0/162600/48941.3/162600/48941.3", "estimated-count":"48038.6", "dmem-cost":"769", "cardinalities":"(0,0),(0,0),(48038.6,48039),(0,0),(46511,46511),(0,0),(1382,1382)"}',
'{"dedup":"true", "cost":"2.64368e+06", "nw-cost":"870/0/96077.1/870/96077.1", "cpu-cost":"0/0/96.0771/0/96.0771", "order":"2[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]", "subject":"2 (?article1)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/48038.6/0/48038.6", "_parentLabel":"left", "predicate":"<http://purl.org/dc/elements/1.1/creator>", "_id":"N_1_1_1_R_R_R_R_L", "_parent":"N_1_1_1_R_R_R_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"48038.6", "io-cost":"0/174.409/162328/174.409/162328", "dmem-cost":"769", "cardinalities":"(0,0),(0,0),(48038.6,56904),(0,0),(46511,46511)", "object":"4 (?author1)"}',
'{"dedup":"true", "cost":"1.50896e+06", "nw-cost":"870/0/96078/870/96078", "cpu-cost":"0/0/96.078/0/96.078", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "subject":"2 (?article1)", "_name":"triple-index", "is-column":"false", "descending":"false", "dcpu-cost":"0/0/48039/0/48039", "_parentLabel":"right", "predicate":"<http://swrc.ontoware.org/ontology#journal>", "_id":"N_1_1_1_R_R_R_R_R", "_parent":"N_1_1_1_R_R_R_R", "mem-cost":"0", "permutation":"PSO", "estimated-count":"48039", "io-cost":"0/96.8941/48941.3/96.8941/48941.3", "dmem-cost":"769", "cardinalities":"(0,0),(0,0),(48039,48039),(0,0),(0,0),(0,0),(1382,1382)", "object":"6 (?journal)"}'
)),
map:entry("name","exprs4")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:project order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
      <plan:vars>
	<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
	<plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
	<plan:graph-node type="var" name="documentType" column-index="2" static-type="NONE"/>
	<plan:graph-node type="var" name="documentTitle" column-index="3" static-type="NONE"/>
	<plan:graph-node type="var" name="registPath" column-index="4" static-type="NONE"/>
      </plan:vars>
      <plan:expr>
	<plan:order-by order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
	  <plan:order-spec descending="false" nulls-first="false">
	    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
	  </plan:order-spec>
	  <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
	    <plan:join-info>
	      <plan:hash left="1" right="1" operator="="/>
	      <plan:filters>
		<plan:join-filter op="=">
		  <plan:left-graph-node>
		    <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		  </plan:left-graph-node>
		  <plan:right-graph-node>
		    <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		  </plan:right-graph-node>
		</plan:join-filter>
	      </plan:filters>
	    </plan:join-info>
	    <plan:elems>
	      <plan:join join-type="scatter-join" order="">
		<plan:join-info>
		  <plan:hash left="0" right="0" operator="="/>
		  <plan:filters>
		    <plan:join-filter op="=">
		      <plan:left-graph-node>
			<plan:graph-node type="column-def" name="iri" schema="" column="iri" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
		      </plan:left-graph-node>
		      <plan:right-graph-node>
			<plan:graph-node type="column-def" name="iri" schema="" column="iri" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
		      </plan:right-graph-node>
		    </plan:join-filter>
		  </plan:filters>
		</plan:join-info>
		<plan:elems>
		  <plan:triple-index order="0[NULLS_IRRELEVANT]" permutation="PSO" dedup="true" descending="false" is-column="false">
		    <plan:subject>
		      <plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
		    </plan:subject>
		    <plan:predicate>
		      <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#registPath" static-type="NONE">
			<plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#registPath</plan:rdf-val>
		      </plan:graph-node>
		    </plan:predicate>
		    <plan:object>
		      <plan:graph-node type="global-variable" name="inputUri" static-type="NONE"/>
		    </plan:object>
		  </plan:triple-index>
		  <plan:sparql-union type="parallel-concat-union" order="">
		    <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT]">
		      <plan:join-info>
			<plan:hash left="1" right="1" operator="="/>
			<plan:filters>
			  <plan:join-filter op="=">
			    <plan:left-graph-node>
			      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			    </plan:left-graph-node>
			    <plan:right-graph-node>
			      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
			    </plan:right-graph-node>
			  </plan:join-filter>
			</plan:filters>
		      </plan:join-info>
		      <plan:elems>
			<plan:join join-type="scatter-join" order="7[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="7" right="7" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="0[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="iri" name="http://purl.org/dc/terms/isVersionOf" static-type="NONE">
				  <plan:rdf-val>http://purl.org/dc/terms/isVersionOf</plan:rdf-val>
				</plan:graph-node>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
			      </plan:object>
			    </plan:triple-index>
			    <plan:join join-type="sort-merge-join" order="7[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="7" right="7" operator="="/>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://purl.org/dc/terms/isVersionOf" static-type="NONE">
				      <plan:rdf-val>http://purl.org/dc/terms/isVersionOf</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
				<plan:triple-index order="7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="literal">
				      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">2</plan:rdf-val>
				    </plan:graph-node>
				  </plan:object>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
			<plan:triple-index order="1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			  <plan:subject>
			    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			  </plan:subject>
			  <plan:predicate>
			    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
			      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
			    </plan:graph-node>
			  </plan:predicate>
			  <plan:object>
			    <plan:graph-node type="literal">
			      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
			    </plan:graph-node>
			  </plan:object>
			</plan:triple-index>
		      </plan:elems>
		    </plan:join>
		    <plan:sparql-union type="parallel-concat-union" order="">
		      <plan:sparql-union type="concat-union" order="">
			<plan:join join-type="scatter-join" order="7[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="7" right="7" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="0[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="iri" name="http://purl.org/dc/terms/isVersionOf" static-type="NONE">
				  <plan:rdf-val>http://purl.org/dc/terms/isVersionOf</plan:rdf-val>
				</plan:graph-node>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
			      </plan:object>
			    </plan:triple-index>
			    <plan:join join-type="scatter-join" order="7[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="1" right="1" operator="="/>
				<plan:hash left="7" right="7" operator="="/>
				<plan:filters>
				  <plan:join-filter op="=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				    </plan:right-graph-node>
				  </plan:join-filter>
				  <plan:join-filter op="=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				    </plan:right-graph-node>
				  </plan:join-filter>
				</plan:filters>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://purl.org/dc/terms/isVersionOf" static-type="NONE">
				      <plan:rdf-val>http://purl.org/dc/terms/isVersionOf</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:object>
				</plan:triple-index>
				<plan:join join-type="scatter-join" cross-product="true" order="7[NULLS_IRRELEVANT]">
				  <plan:join-info/>
				  <plan:elems>
				    <plan:triple-index order="1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
					  <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="literal">
					  <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
					</plan:graph-node>
				      </plan:object>
				    </plan:triple-index>
				    <plan:triple-index order="7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
					  <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
					</plan:graph-node>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="literal">
					  <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">2</plan:rdf-val>
					</plan:graph-node>
				      </plan:object>
				    </plan:triple-index>
				  </plan:elems>
				</plan:join>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
			<plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="1" right="1" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="0[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="ANON232390907250887979" column-index="8" static-type="NONE" hidden="true"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
			      </plan:object>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="ANON232390907250887979" schema="" column="ANON232390907250887979" view="" column-number="0" column-index="8" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-expr>
				  <plan:literal>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/hasPart</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isPartOf</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#relatedMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#exactMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#narrowMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://vocab.shiseido.co.jp/terms/chart/sti#keywordMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isVersionOf</plan:value>
				  </plan:literal>
				</plan:right-expr>
			      </plan:join-filter>
			    </plan:triple-index>
			    <plan:join join-type="parallel-hash-join" order="1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="1" right="1" operator="="/>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="literal">
				      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
				    </plan:graph-node>
				  </plan:object>
				</plan:triple-index>
				<plan:triple-index order="1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#documentType" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#documentType</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="docType" column-index="6" static-type="NONE"/>
				  </plan:object>
				  <plan:join-filter op="!=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="docType" schema="" column="docType" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Product and Bulk Information</plan:value>
				      </plan:literal>
				    </plan:right-expr>
				  </plan:join-filter>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
		      </plan:sparql-union>
		      <plan:sparql-union type="concat-union" order="">
			<plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="1" right="1" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="ANON18411142419820111714" column-index="5" static-type="NONE" hidden="true"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			      </plan:object>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="ANON18411142419820111714" schema="" column="ANON18411142419820111714" view="" column-number="0" column-index="5" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-expr>
				  <plan:literal>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/hasPart</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isPartOf</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#relatedMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#narrowMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#exactMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://vocab.shiseido.co.jp/terms/chart/sti#keywordMatch</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isVersionOf</plan:value>
				  </plan:literal>
				</plan:right-expr>
			      </plan:join-filter>
			    </plan:triple-index>
			    <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="1" right="1" operator="="/>
				<plan:filters>
				  <plan:join-filter op="=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-graph-node>
				      <plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
				    </plan:right-graph-node>
				  </plan:join-filter>
				</plan:filters>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#documentType" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#documentType</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="var" name="docType" column-index="6" static-type="NONE"/>
				  </plan:object>
				  <plan:join-filter op="!=">
				    <plan:left-graph-node>
				      <plan:graph-node type="column-def" name="docType" schema="" column="docType" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				    </plan:left-graph-node>
				    <plan:right-expr>
				      <plan:literal>
					<plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">Product and Bulk Information</plan:value>
				      </plan:literal>
				    </plan:right-expr>
				  </plan:join-filter>
				</plan:triple-index>
				<plan:triple-index order="1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="literal">
				      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
				    </plan:graph-node>
				  </plan:object>
				</plan:triple-index>
			      </plan:elems>
			    </plan:join>
			  </plan:elems>
			</plan:join>
			<plan:join join-type="scatter-join" order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="7" right="7" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="relatedIri_1" schema="" column="relatedIri_1" view="" column-number="0" column-index="7" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="0[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]" permutation="OPS" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="ANON8289555293167679486" column-index="9" static-type="NONE" hidden="true"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="iri" column-index="0" static-type="NONE"/>
			      </plan:object>
			      <plan:join-filter op="=">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="ANON8289555293167679486" schema="" column="ANON8289555293167679486" view="" column-number="0" column-index="9" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-expr>
				  <plan:literal>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/hasPart</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isPartOf</plan:value>
				    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#exactMatch</plan:value>
				  </plan:literal>
				</plan:right-expr>
			      </plan:join-filter>
			    </plan:triple-index>
			    <plan:join join-type="parallel-hash-join" order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]">
			      <plan:join-info>
				<plan:hash left="7" right="7" operator="="/>
			      </plan:join-info>
			      <plan:elems>
				<plan:triple-index order="7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				  <plan:subject>
				    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				  </plan:subject>
				  <plan:predicate>
				    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
				      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
				    </plan:graph-node>
				  </plan:predicate>
				  <plan:object>
				    <plan:graph-node type="literal">
				      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
				    </plan:graph-node>
				  </plan:object>
				</plan:triple-index>
				<plan:join join-type="sort-merge-join" order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]">
				  <plan:join-info>
				    <plan:hash left="7" right="7" operator="="/>
				  </plan:join-info>
				  <plan:elems>
				    <plan:join join-type="parallel-hash-join" order="7[NULLS_IRRELEVANT]">
				      <plan:join-info>
					<plan:hash left="7" right="7" operator="="/>
				      </plan:join-info>
				      <plan:elems>
					<plan:triple-index order="7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					  <plan:subject>
					    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
					  </plan:subject>
					  <plan:predicate>
					    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#documentType" static-type="NONE">
					      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#documentType</plan:rdf-val>
					    </plan:graph-node>
					  </plan:predicate>
					  <plan:object>
					    <plan:graph-node type="literal">
					      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">Product and Bulk Information</plan:rdf-val>
					    </plan:graph-node>
					  </plan:object>
					</plan:triple-index>
					<plan:triple-index order="7[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
					  <plan:subject>
					    <plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
					  </plan:subject>
					  <plan:predicate>
					    <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
					      <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
					    </plan:graph-node>
					  </plan:predicate>
					  <plan:object>
					    <plan:graph-node type="literal">
					      <plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
					    </plan:graph-node>
					  </plan:object>
					</plan:triple-index>
				      </plan:elems>
				    </plan:join>
				    <plan:triple-index order="7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
				      <plan:subject>
					<plan:graph-node type="var" name="relatedIri_1" column-index="7" static-type="NONE"/>
				      </plan:subject>
				      <plan:predicate>
					<plan:graph-node type="var" name="ANON15700180235925043850" column-index="10" static-type="NONE" hidden="true"/>
				      </plan:predicate>
				      <plan:object>
					<plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
				      </plan:object>
				      <plan:join-filter op="=">
					<plan:left-graph-node>
					  <plan:graph-node type="column-def" name="ANON15700180235925043850" schema="" column="ANON15700180235925043850" view="" column-number="0" column-index="10" static-type="UNKNOWN"/>
					</plan:left-graph-node>
					<plan:right-expr>
					  <plan:literal>
					    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/hasPart</plan:value>
					    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://purl.org/dc/terms/isPartOf</plan:value>
					    <plan:value xsi:type="sem:iri" xmlns:sem="http://marklogic.com/semantics" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">http://www.w3.org/2004/02/skos/core#exactMatch</plan:value>
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
		      </plan:sparql-union>
		    </plan:sparql-union>
		  </plan:sparql-union>
		</plan:elems>
	      </plan:join>
	      <plan:join join-type="scatter-join" order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
		<plan:join-info>
		  <plan:hash left="1" right="1" operator="="/>
		  <plan:filters>
		    <plan:join-filter op="=">
		      <plan:left-graph-node>
			<plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		      </plan:left-graph-node>
		      <plan:right-graph-node>
			<plan:graph-node type="column-def" name="relatedIri" schema="" column="relatedIri" view="" column-number="0" column-index="1" static-type="UNKNOWN"/>
		      </plan:right-graph-node>
		    </plan:join-filter>
		  </plan:filters>
		</plan:join-info>
		<plan:elems>
		  <plan:triple-index order="1[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
		    <plan:subject>
		      <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
		    </plan:subject>
		    <plan:predicate>
		      <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#registPath" static-type="NONE">
			<plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#registPath</plan:rdf-val>
		      </plan:graph-node>
		    </plan:predicate>
		    <plan:object>
		      <plan:graph-node type="var" name="registPath" column-index="4" static-type="NONE"/>
		    </plan:object>
		    <plan:join-filter op="!=">
		      <plan:left-graph-node>
			<plan:graph-node type="column-def" name="registPath" schema="" column="registPath" view="" column-number="0" column-index="4" static-type="UNKNOWN"/>
		      </plan:left-graph-node>
		      <plan:right-expr>
			<plan:global-variable qname="inputUri"/>
		      </plan:right-expr>
		    </plan:join-filter>
		  </plan:triple-index>
		  <plan:join join-type="parallel-sort-merge-join" order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
		    <plan:join-info>
		      <plan:hash left="1" right="1" operator="="/>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index order="1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			<plan:subject>
			  <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#documentType" static-type="NONE">
			    <plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#documentType</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="var" name="documentType" column-index="2" static-type="NONE"/>
			</plan:object>
		      </plan:triple-index>
		      <plan:join join-type="parallel-sort-merge-join" order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]">
			<plan:join-info>
			  <plan:hash left="1" right="1" operator="="/>
			</plan:join-info>
			<plan:elems>
			  <plan:triple-index order="1[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			    <plan:subject>
			      <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg" static-type="NONE">
				<plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="literal">
				<plan:rdf-val datatype="http://www.w3.org/2001/XMLSchema#string">1</plan:rdf-val>
			      </plan:graph-node>
			    </plan:object>
			  </plan:triple-index>
			  <plan:triple-index order="1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="SOP" dedup="true" descending="false" is-column="false">
			    <plan:subject>
			      <plan:graph-node type="var" name="relatedIri" column-index="1" static-type="NONE"/>
			    </plan:subject>
			    <plan:predicate>
			      <plan:graph-node type="iri" name="http://vocab.shiseido.co.jp/terms/chart/sti#documentTitle" static-type="NONE">
				<plan:rdf-val>http://vocab.shiseido.co.jp/terms/chart/sti#documentTitle</plan:rdf-val>
			      </plan:graph-node>
			    </plan:predicate>
			    <plan:object>
			      <plan:graph-node type="var" name="documentTitle" column-index="3" static-type="NONE"/>
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
	</plan:order-by>
      </plan:expr>
    </plan:project>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1", "_parent":"N", "_name":"project", "column":["0 (?iri)", "1 (?relatedIri)", "2 (?documentType)", "3 (?documentTitle)", "4 (?registPath)"]}',
'{"order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1", "_parent":"N_1", "order-spec":"1 (?relatedIri)", "_name":"order-by"}',
'{"order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1", "_parent":"N_1_1", "condition":"1=1", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"", "_id":"N_1_1_1_L", "_parent":"N_1_1_1", "condition":"0=0", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#registPath>", "order":"0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_L", "_parent":"N_1_1_1_L", "permutation":"PSO", "subject":"0 (?iri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"$inputUri"}',
'{"_parentLabel":"right", "order":"", "_id":"N_1_1_1_L_R", "type":"parallel-concat-union", "_parent":"N_1_1_1_L", "_name":"sparql-union"}',
'{"order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1", "_parent":"N_1_1_1_L_R", "condition":"1=1", "_name":"scatter-join"}',
'{"_parentLabel":"left", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_L", "_parent":"N_1_1_1_L_R_1", "condition":"7=7", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://purl.org/dc/terms/isVersionOf>", "order":"0[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_L_L", "_parent":"N_1_1_1_L_R_1_L", "permutation":"OPS", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"0 (?iri)"}',
'{"_parentLabel":"right", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_L_R", "_parent":"N_1_1_1_L_R_1_L", "condition":"7=7", "_name":"sort-merge-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://purl.org/dc/terms/isVersionOf>", "order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_L_R_L", "_parent":"N_1_1_1_L_R_1_L_R", "permutation":"OPS", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"7 (?relatedIri_1)"}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_L_R_R", "_parent":"N_1_1_1_L_R_1_L_R", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"2\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_1_R", "_parent":"N_1_1_1_L_R_1", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"order":"", "_id":"N_1_1_1_L_R_2", "type":"parallel-concat-union", "_parent":"N_1_1_1_L_R", "_name":"sparql-union"}',
'{"order":"", "_id":"N_1_1_1_L_R_2_1", "type":"concat-union", "_parent":"N_1_1_1_L_R_2", "_name":"sparql-union"}',
'{"order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1", "_parent":"N_1_1_1_L_R_2_1", "condition":"7=7", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://purl.org/dc/terms/isVersionOf>", "order":"0[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_L", "_parent":"N_1_1_1_L_R_2_1_1", "permutation":"SOP", "subject":"0 (?iri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"7 (?relatedIri_1)"}',
'{"_parentLabel":"right", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_R", "_parent":"N_1_1_1_L_R_2_1_1", "condition":"1=1 and 7=7", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://purl.org/dc/terms/isVersionOf>", "order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_R_L", "_parent":"N_1_1_1_L_R_2_1_1_R", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?relatedIri)"}',
'{"_parentLabel":"right", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_R_R", "_parent":"N_1_1_1_L_R_2_1_1_R", "condition":"", "_name":"scatter-join", "cross-product":"true"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_R_R_L", "_parent":"N_1_1_1_L_R_2_1_1_R_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_1_R_R_R", "_parent":"N_1_1_1_L_R_2_1_1_R_R", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"2\""}',
'{"order":"1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_2", "_parent":"N_1_1_1_L_R_2_1", "condition":"1=1", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"8 (?ANON232390907250887979)", "order":"0[NULLS_IRRELEVANT],8[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_2_L", "_parent":"N_1_1_1_L_R_2_1_2", "permutation":"OPS", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"0 (?iri)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"8", "schema":"", "column":"ANON232390907250887979", "name":"ANON232390907250887979"}, "_id":"N_1_1_1_L_R_2_1_2_L_1", "_parent":"N_1_1_1_L_R_2_1_2_L", "condition":"ANON232390907250887979=(<http://purl.org/dc/terms/hasPart>, <http://purl.org/dc/terms/isPartOf>, <http://www.w3.org/2004/02/skos/core#relatedMatch>, <http://www.w3.org/2004/02/skos/core#exactMatch>, <http://www.w3.org/2004/02/skos/core#narrowMatch>, <http://vocab.shiseido.co.jp/terms/chart/sti#keywordMatch>, <http://purl.org/dc/terms/isVersionOf>)", "_name":"join-filter", "op":"="}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_2_R", "_parent":"N_1_1_1_L_R_2_1_2", "condition":"1=1", "_name":"parallel-hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_2_R_L", "_parent":"N_1_1_1_L_R_2_1_2_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#documentType>", "order":"1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_1_2_R_R", "_parent":"N_1_1_1_L_R_2_1_2_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"6 (?docType)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"6", "schema":"", "column":"docType", "name":"docType"}, "_id":"N_1_1_1_L_R_2_1_2_R_R_1", "_parent":"N_1_1_1_L_R_2_1_2_R_R", "condition":"docType!=\"Product and Bulk Information\"", "_name":"join-filter", "op":"!="}',
'{"order":"", "_id":"N_1_1_1_L_R_2_2", "type":"concat-union", "_parent":"N_1_1_1_L_R_2", "_name":"sparql-union"}',
'{"order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_1", "_parent":"N_1_1_1_L_R_2_2", "condition":"1=1", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"5 (?ANON18411142419820111714)", "order":"0[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],5[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_1_L", "_parent":"N_1_1_1_L_R_2_2_1", "permutation":"SOP", "subject":"0 (?iri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?relatedIri)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"5", "schema":"", "column":"ANON18411142419820111714", "name":"ANON18411142419820111714"}, "_id":"N_1_1_1_L_R_2_2_1_L_1", "_parent":"N_1_1_1_L_R_2_2_1_L", "condition":"ANON18411142419820111714=(<http://purl.org/dc/terms/hasPart>, <http://purl.org/dc/terms/isPartOf>, <http://www.w3.org/2004/02/skos/core#relatedMatch>, <http://www.w3.org/2004/02/skos/core#narrowMatch>, <http://www.w3.org/2004/02/skos/core#exactMatch>, <http://vocab.shiseido.co.jp/terms/chart/sti#keywordMatch>, <http://purl.org/dc/terms/isVersionOf>)", "_name":"join-filter", "op":"="}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_1_R", "_parent":"N_1_1_1_L_R_2_2_1", "condition":"1=1", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#documentType>", "order":"1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_1_R_L", "_parent":"N_1_1_1_L_R_2_2_1_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"6 (?docType)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"6", "schema":"", "column":"docType", "name":"docType"}, "_id":"N_1_1_1_L_R_2_2_1_R_L_1", "_parent":"N_1_1_1_L_R_2_2_1_R_L", "condition":"docType!=\"Product and Bulk Information\"", "_name":"join-filter", "op":"!="}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_1_R_R", "_parent":"N_1_1_1_L_R_2_2_1_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2", "_parent":"N_1_1_1_L_R_2_2", "condition":"7=7", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"9 (?ANON8289555293167679486)", "order":"0[NULLS_IRRELEVANT],9[NULLS_IRRELEVANT],7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_L", "_parent":"N_1_1_1_L_R_2_2_2", "permutation":"OPS", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"0 (?iri)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"9", "schema":"", "column":"ANON8289555293167679486", "name":"ANON8289555293167679486"}, "_id":"N_1_1_1_L_R_2_2_2_L_1", "_parent":"N_1_1_1_L_R_2_2_2_L", "condition":"ANON8289555293167679486=(<http://purl.org/dc/terms/hasPart>, <http://purl.org/dc/terms/isPartOf>, <http://www.w3.org/2004/02/skos/core#exactMatch>)", "_name":"join-filter", "op":"="}',
'{"_parentLabel":"right", "order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R", "_parent":"N_1_1_1_L_R_2_2_2", "condition":"7=7", "_name":"parallel-hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_L", "_parent":"N_1_1_1_L_R_2_2_2_R", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"_parentLabel":"right", "order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_R", "_parent":"N_1_1_1_L_R_2_2_2_R", "condition":"7=7", "_name":"sort-merge-join"}',
'{"_parentLabel":"left", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_R_L", "_parent":"N_1_1_1_L_R_2_2_2_R_R", "condition":"7=7", "_name":"parallel-hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#documentType>", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_R_L_L", "_parent":"N_1_1_1_L_R_2_2_2_R_R_L", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"Product and Bulk Information\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"7[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_R_L_R", "_parent":"N_1_1_1_L_R_2_2_2_R_R_L", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"10 (?ANON15700180235925043850)", "order":"7[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],10[NULLS_IRRELEVANT]", "_id":"N_1_1_1_L_R_2_2_2_R_R_R", "_parent":"N_1_1_1_L_R_2_2_2_R_R", "permutation":"SOP", "subject":"7 (?relatedIri_1)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"1 (?relatedIri)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"10", "schema":"", "column":"ANON15700180235925043850", "name":"ANON15700180235925043850"}, "_id":"N_1_1_1_L_R_2_2_2_R_R_R_1", "_parent":"N_1_1_1_L_R_2_2_2_R_R_R", "condition":"ANON15700180235925043850=(<http://purl.org/dc/terms/hasPart>, <http://purl.org/dc/terms/isPartOf>, <http://www.w3.org/2004/02/skos/core#exactMatch>)", "_name":"join-filter", "op":"="}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R", "_parent":"N_1_1_1", "condition":"1=1", "_name":"scatter-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#registPath>", "order":"1[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_L", "_parent":"N_1_1_1_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"4 (?registPath)"}',
'{"left-graph-node":{"view":"", "type":"column-def", "column-index":"4", "schema":"", "column":"registPath", "name":"registPath"}, "_id":"N_1_1_1_R_L_1", "_parent":"N_1_1_1_R_L", "condition":"registPath!=$inputUri", "_name":"join-filter", "op":"!="}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_R", "_parent":"N_1_1_1_R", "condition":"1=1", "_name":"parallel-sort-merge-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#documentType>", "order":"1[NULLS_IRRELEVANT],2[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_R_L", "_parent":"N_1_1_1_R_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"2 (?documentType)"}',
'{"_parentLabel":"right", "order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_R_R", "_parent":"N_1_1_1_R_R", "condition":"1=1", "_name":"parallel-sort-merge-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#completeFlg>", "order":"1[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_R_R_L", "_parent":"N_1_1_1_R_R_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"\"1\""}',
'{"dedup":"true", "_parentLabel":"right", "predicate":"<http://vocab.shiseido.co.jp/terms/chart/sti#documentTitle>", "order":"1[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_R_R_R_R", "_parent":"N_1_1_1_R_R_R", "permutation":"SOP", "subject":"1 (?relatedIri)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (?documentTitle)"}'
)),
map:entry("name","exprs5")
=>map:with("plan",
<plan:plan xmlns:plan="http://marklogic.com/plan">
  <plan:select>
    <plan:distinct>
      <plan:project order="">
	<plan:vars>
	  <plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
	  <plan:graph-node type="var" name="s" column-index="1" static-type="NONE"/>
	  <plan:graph-node type="var" name="keywords" column-index="2" static-type="NONE"/>
	  <plan:graph-node type="var" name="keywords1sContainerSecurityLabel" column-index="3" static-type="NONE"/>
	</plan:vars>
	<plan:expr>
	  <plan:distinct>
	    <plan:project order="">
	      <plan:vars>
		<plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
		<plan:graph-node type="var" name="s" column-index="1" static-type="NONE"/>
		<plan:graph-node type="var" name="keywords" column-index="2" static-type="NONE"/>
		<plan:graph-node type="var" name="keywords1sContainerSecurityLabel" column-index="3" static-type="NONE"/>
	      </plan:vars>
	      <plan:expr>
		<plan:filter is-empty="false">
		  <plan:filters>
		    <plan:builtin uri="http://marklogic.com/cts" name="contains">
		      <plan:sparql-variable column-index="4">
			<plan:qname name="keywords1s" uri="" prfx="" ltrl="keywords1s"/>
		      </plan:sparql-variable>
		      <plan:builtin uri="http://marklogic.com/cts" name="word-query">
			<plan:literal>
			  <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">a8113ac1-2cc1-4379-853a-d0824609c17c</plan:value>
			</plan:literal>
		      </plan:builtin>
		    </plan:builtin>
		    <plan:builtin uri="http://marklogic.com/cts" name="contains">
		      <plan:sparql-variable column-index="2">
			<plan:qname name="keywords" uri="" prfx="" ltrl="keywords"/>
		      </plan:sparql-variable>
		      <plan:builtin uri="http://marklogic.com/cts" name="word-query">
			<plan:expr-sequence>
			  <plan:literal>
			    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">assertsInformationAbout</plan:value>
			  </plan:literal>
			  <plan:literal>
			    <plan:value xsi:type="xs:string" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">referenceObject</plan:value>
			  </plan:literal>
			</plan:expr-sequence>
		      </plan:builtin>
		    </plan:builtin>
		  </plan:filters>
		  <plan:join join-type="hash-join" order="">
		    <plan:join-info>
		      <plan:hash left="0" right="0" operator="="/>
		    </plan:join-info>
		    <plan:elems>
		      <plan:triple-index order="0[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]" permutation="PSO" dedup="true" descending="false" is-column="false">
			<plan:subject>
			  <plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
			</plan:subject>
			<plan:predicate>
			  <plan:graph-node type="iri" name="http://ml.com/obf/d#obfLabel4" static-type="NONE">
			    <plan:rdf-val>http://ml.com/obf/d#obfLabel4</plan:rdf-val>
			  </plan:graph-node>
			</plan:predicate>
			<plan:object>
			  <plan:graph-node type="var" name="keywords1sContainerSecurityLabel" column-index="3" static-type="NONE"/>
			</plan:object>
		      </plan:triple-index>
		      <plan:sparql-union type="parallel-concat-union" order="">
			<plan:triple-index order="2[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" permutation="PSO" dedup="true" descending="false" is-column="false">
			  <plan:subject>
			    <plan:graph-node type="var" name="s" column-index="1" static-type="NONE"/>
			  </plan:subject>
			  <plan:predicate>
			    <plan:graph-node type="var" name="keywords" column-index="2" static-type="NONE"/>
			  </plan:predicate>
			  <plan:object>
			    <plan:graph-node type="var" name="keywords1s" column-index="4" static-type="NONE"/>
			  </plan:object>
			  <plan:graph>
			    <plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
			  </plan:graph>
			</plan:triple-index>
			<plan:join join-type="bloom-join" order="5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]">
			  <plan:join-info>
			    <plan:hash left="0" right="0" operator="="/>
			    <plan:hash left="6" right="6" operator="="/>
			    <plan:filters>
			      <plan:join-filter op="bloom">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="keywords1sContainer" schema="" column="keywords1sContainer" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="keywords1sContainer" schema="" column="keywords1sContainer" view="" column-number="0" column-index="0" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			      <plan:join-filter op="bloom">
				<plan:left-graph-node>
				  <plan:graph-node type="column-def" name="keywords1sSubject" schema="" column="keywords1sSubject" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				</plan:left-graph-node>
				<plan:right-graph-node>
				  <plan:graph-node type="column-def" name="keywords1sSubject" schema="" column="keywords1sSubject" view="" column-number="0" column-index="6" static-type="UNKNOWN"/>
				</plan:right-graph-node>
			      </plan:join-filter>
			    </plan:filters>
			  </plan:join-info>
			  <plan:elems>
			    <plan:triple-index order="2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" permutation="PSO" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="keywords1sSubject" column-index="6" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="keywords" column-index="2" static-type="NONE"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="keywords1s" column-index="4" static-type="NONE"/>
			      </plan:object>
			      <plan:graph>
				<plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
			      </plan:graph>
			    </plan:triple-index>
			    <plan:triple-index order="5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]" permutation="PSO" dedup="true" descending="false" is-column="false">
			      <plan:subject>
				<plan:graph-node type="var" name="s" column-index="1" static-type="NONE"/>
			      </plan:subject>
			      <plan:predicate>
				<plan:graph-node type="var" name="keywordsIntermediate" column-index="5" static-type="NONE"/>
			      </plan:predicate>
			      <plan:object>
				<plan:graph-node type="var" name="keywords1sSubject" column-index="6" static-type="NONE"/>
			      </plan:object>
			      <plan:graph>
				<plan:graph-node type="var" name="keywords1sContainer" column-index="0" static-type="NONE"/>
			      </plan:graph>
			    </plan:triple-index>
			  </plan:elems>
			</plan:join>
		      </plan:sparql-union>
		    </plan:elems>
		  </plan:join>
		</plan:filter>
	      </plan:expr>
	    </plan:project>
	  </plan:distinct>
	</plan:expr>
      </plan:project>
    </plan:distinct>
  </plan:select>
</plan:plan>
)
=>map:with("expected",(
'{"_id":"N", "_name":"select"}',
'{"_id":"N_1", "_parent":"N", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1", "_parent":"N_1", "_name":"project", "column":["0 (?keywords1sContainer)", "1 (?s)", "2 (?keywords)", "3 (?keywords1sContainerSecurityLabel)"]}',
'{"_id":"N_1_1_1", "_parent":"N_1_1", "_name":"distinct"}',
'{"order":"", "_id":"N_1_1_1_1", "_parent":"N_1_1_1", "_name":"project", "column":["0 (?keywords1sContainer)", "1 (?s)", "2 (?keywords)", "3 (?keywords1sContainerSecurityLabel)"]}',
'{"_id":"N_1_1_1_1_1", "_parent":"N_1_1_1_1", "condition":["cts:contains(?keywords1s, cts:word-query(\"a8113ac1-2cc1-4379-853a-d0824609c17c\"))", "cts:contains(?keywords, cts:word-query((\"assertsInformationAbout\", \"referenceObject\")))"], "_name":"filter", "is-empty":"false"}',
'{"order":"", "_id":"N_1_1_1_1_1_1", "_parent":"N_1_1_1_1_1", "condition":"0=0", "_name":"hash-join"}',
'{"dedup":"true", "_parentLabel":"left", "predicate":"<http://ml.com/obf/d#obfLabel4>", "order":"0[NULLS_IRRELEVANT],3[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1_L", "_parent":"N_1_1_1_1_1_1", "permutation":"PSO", "subject":"0 (?keywords1sContainer)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"3 (?keywords1sContainerSecurityLabel)"}',
'{"_parentLabel":"right", "order":"", "_id":"N_1_1_1_1_1_1_R", "type":"parallel-concat-union", "_parent":"N_1_1_1_1_1_1", "_name":"sparql-union"}',
'{"dedup":"true", "graph":"0 (?keywords1sContainer)", "predicate":"2 (?keywords)", "order":"2[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1_R_1", "_parent":"N_1_1_1_1_1_1_R", "permutation":"PSO", "subject":"1 (?s)", "_name":"triple-index", "is-column":"false", "descending":"false", "object":"4 (?keywords1s)"}',
'{"order":"5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "_id":"N_1_1_1_1_1_1_R_2", "_parent":"N_1_1_1_1_1_1_R", "condition":"0=0 and 6=6", "_name":"bloom-join"}',
'{"dedup":"true", "order":"2[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],4[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "subject":"6 (?keywords1sSubject)", "_name":"triple-index", "is-column":"false", "descending":"false", "_parentLabel":"left", "predicate":"2 (?keywords)", "_id":"N_1_1_1_1_1_1_R_2_L", "_parent":"N_1_1_1_1_1_1_R_2", "permutation":"PSO", "object":"4 (?keywords1s)", "graph":"0 (?keywords1sContainer)"}',
'{"dedup":"true", "order":"5[NULLS_IRRELEVANT],1[NULLS_IRRELEVANT],6[NULLS_IRRELEVANT],0[NULLS_IRRELEVANT]", "subject":"1 (?s)", "_name":"triple-index", "is-column":"false", "descending":"false", "_parentLabel":"right", "predicate":"5 (?keywordsIntermediate)", "_id":"N_1_1_1_1_1_1_R_2_R", "_parent":"N_1_1_1_1_1_1_R_2", "permutation":"PSO", "object":"6 (?keywords1sSubject)", "graph":"0 (?keywords1sContainer)"}'
))
};

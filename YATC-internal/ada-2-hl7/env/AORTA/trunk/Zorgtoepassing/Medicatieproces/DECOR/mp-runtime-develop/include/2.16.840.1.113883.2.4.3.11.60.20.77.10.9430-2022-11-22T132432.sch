<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9430
Name: MP CDA Medicatieafspraak
Description: Medicatieafspraak met eventueel op-/afbouw schema.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medicatieafspraak</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9430
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]
Item: (MPCDAMedicatieAfspraakSchema6)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9430
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]
Item: (MPCDAMedicatieAfspraakSchema6)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]"
         id="d40e8877-false-d413049e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="string(@classCode) = ('SBADM')">(MPCDAMedicatieAfspraakSchema6): de waarde van classCode MOET 'SBADM' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="string(@moodCode) = ('RQO')">(MPCDAMedicatieAfspraakSchema6): de waarde van moodCode MOET 'RQO' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="not(hl7:entryRelationship[hl7:observation[hl7:code[@code = '16'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2']]][hl7:value[@value = 'true']])">(MPCDAMedicatieAfspraakSchema6): Als de kopie-indicator opgenomen is mag deze niet 'true' zijn. Dit template is bedoeld voor 'eigen' medicatieafspraken. Gebruik het daarvoor bedoelde template voor 'andermans' medicatieafspraken.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430']) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430']) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:text) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:text) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:text komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatieAfspraakSchema6): keuze (cda:effectiveTime[@value]  of  cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="$elmcount &lt;= 1">(MPCDAMedicatieAfspraakSchema6): keuze (cda:effectiveTime[@value]  of  cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:effectiveTime[@value]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:effectiveTime[@value] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:routeCode) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:routeCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:routeCode) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:routeCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:author[hl7:assignedAuthor]) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:author[hl7:assignedAuthor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:author[hl7:assignedAuthor]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:author[hl7:assignedAuthor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:participant[@typeCode = 'CALLBCK'][cda:participantRole] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &gt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchema6): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9430
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430']
Item: (MPCDAMedicatieAfspraakSchema6)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430']"
         id="d40e8883-false-d413412e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9430-2022-11-22T132432.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9430')">(MPCDAMedicatieAfspraakSchema6): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
</pattern>
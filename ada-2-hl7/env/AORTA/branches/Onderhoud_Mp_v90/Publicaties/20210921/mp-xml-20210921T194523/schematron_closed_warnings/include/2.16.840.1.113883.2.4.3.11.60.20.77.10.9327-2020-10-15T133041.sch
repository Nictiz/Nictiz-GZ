<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9327
Name: MP CDA Toedieningsafspraak andermans
Description: Andermans toedieningsafspraak met eventueel een op- of afbouwschema bij medicatieproces als CDA entry.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Toedieningsafspraak andermans</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9327
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]
Item: (MPCDAToedieningsafspraakSchemaKopie4)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9327
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]
Item: (MPCDAToedieningsafspraakSchemaKopie4)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]"
         id="d40e5334-false-d130419e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="string(@classCode) = ('SBADM')">(MPCDAToedieningsafspraakSchemaKopie4): de waarde van classCode MOET 'SBADM' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="string(@moodCode) = ('RQO')">(MPCDAToedieningsafspraakSchemaKopie4): de waarde van moodCode MOET 'RQO' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="hl7:entryRelationship[hl7:observation[hl7:code[@code = '16'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2']][hl7:value[@value = 'true']]]">(MPCDAToedieningsafspraakSchemaKopie4): De kopie-indicator moet 'true' zijn. Dit template 9205 is alleen bedoeld voor 'andermans' toedieningsafspraken. Gebruik template 9223 voor 'eigen' toedieningsafspraken.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327']) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327']) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:id) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:id) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:text) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:text) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:statusCode[@code='nullified']) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:statusCode[@code='nullified'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:routeCode) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:routeCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:routeCode) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:routeCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:maxDoseQuantity) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:maxDoseQuantity komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:author) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:author is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:author) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:author komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &gt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaKopie4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9327
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327']
Item: (MPCDAToedieningsafspraakSchemaKopie4)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327']"
         id="d40e5340-false-d130716e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9327-2020-10-15T133041.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9327')">(MPCDAToedieningsafspraakSchemaKopie4): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
</pattern>
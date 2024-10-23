<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9325
Name: MP CDA Medicatieafspraak andermans
Description: Template voor 'andermans' medicatieafspraak met eventueel op-/afbouw schema.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medicatieafspraak andermans</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9325
Context: *[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]]
Item: (MPCDAMedicatieAfspraakSchemaKopie4)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9325
Context: *[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]
Item: (MPCDAMedicatieAfspraakSchemaKopie4)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]"
         id="d42e5028-false-d111647e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="string(@classCode) = ('SBADM')">(MPCDAMedicatieAfspraakSchemaKopie4): de waarde van classCode MOET 'SBADM' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="string(@moodCode) = ('RQO')">(MPCDAMedicatieAfspraakSchemaKopie4): de waarde van moodCode MOET 'RQO' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="hl7:entryRelationship[hl7:observation[hl7:code[@code = '16'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2']][hl7:value[@value = 'true']]]">(MPCDAMedicatieAfspraakSchemaKopie4): De kopie-indicator moet 'true' zijn. Dit template is alleen bedoeld voor 'andermans' medicatieafspraken. Gebruik voor andere medicatieafspraken het daarvoor bedoelde template voor 'eigen' medicatieafspraken.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325']) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325']) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:text) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:text) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:statusCode) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:statusCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:routeCode) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:routeCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:routeCode) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:routeCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:author[hl7:assignedAuthor]) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:author[hl7:assignedAuthor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:author[hl7:assignedAuthor]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:author[hl7:assignedAuthor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9370']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9370']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &gt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAMedicatieAfspraakSchemaKopie4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9325
Context: *[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325']
Item: (MPCDAMedicatieAfspraakSchemaKopie4)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9323']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325']"
         id="d42e5037-false-d111917e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatieAfspraakSchemaKopie4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9325-2020-10-15T132423.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9325')">(MPCDAMedicatieAfspraakSchemaKopie4): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9325' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
</pattern>
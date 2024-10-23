<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9443
Name: MP CDA Medicatiegebruik andermans
Description: Template: Medicatiegebruik met eventueel op- of afbouwschema, gebaseerd op CDA R2 Entries. Andermans bouwsteen medicatiegebruik.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medicatiegebruik andermans</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9443
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]
Item: (MPCDAMedicatiegebruikSchemaKopie5)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9443
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]
Item: (MPCDAMedicatiegebruikSchemaKopie5)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]"
         id="d40e10138-false-d492598e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="string(@classCode) = ('SBADM')">(MPCDAMedicatiegebruikSchemaKopie5): de waarde van classCode MOET 'SBADM' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="string(@moodCode) = ('EVN')">(MPCDAMedicatiegebruikSchemaKopie5): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="string(@negationInd) = ('false') or not(@negationInd)">(MPCDAMedicatiegebruikSchemaKopie5): de waarde van negationInd MOET 'false' zijn. Gevonden: "
<value-of select="@negationInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="hl7:entryRelationship[hl7:observation[hl7:code[@code = '16'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2']][hl7:value[@value = 'true']]]">(MPCDAMedicatiegebruikSchemaKopie5): De kopie-indicator moet 'true' zijn. Dit template is alleen bedoeld voor 'andermans' medicatiegebruik bouwstenen. Gebruik het daarvoor bedoelde template voor 'eigen' medicatiegebruik bouwstenen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443']) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443']) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:text) &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:text) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] | hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="$elmcount &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] komt te vaak voor [max 1x].</assert>
      <!-- == Repeated variable name: elmcount -> elmcount-1 == -->
      <let name="elmcount-1"
           value="count(cda:informant[cda:assignedEntity/cda:assignedPerson] | cda:informant[cda:assignedEntity/cda:code/@code='ONESELF'] | cda:informant[exists(cda:relatedEntity)])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="$elmcount-1 &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): keuze (cda:informant[cda:assignedEntity/cda:assignedPerson]  of  cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']  of  cda:informant[exists(cda:relatedEntity)]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaKopie5): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9443
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443']
Item: (MPCDAMedicatiegebruikSchemaKopie5)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443']"
         id="d40e10150-false-d492959e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaKopie5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9443')">(MPCDAMedicatiegebruikSchemaKopie5): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9443
Context: *[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:id
Item: (MPCDAMedicatiegebruikSchemaKopie5)
-->
   <rule fpi="RULC-1"
         context="*[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9443'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:id"
         id="d40e10155-false-d492978e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9443-2022-11-24T135001.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaKopie5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
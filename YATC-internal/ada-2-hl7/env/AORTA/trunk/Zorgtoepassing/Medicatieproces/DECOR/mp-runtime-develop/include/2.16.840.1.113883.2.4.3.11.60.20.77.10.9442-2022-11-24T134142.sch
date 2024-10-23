<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Name: MP CDA Medicatiegebruik inhoud
Description: 
                 Template: Inhoud van Medicatiegebruik met eventueel op- of afbouwschema, gebaseerd op CDA R2 Entries. Nieuwe SNOMED code voor substanceAdministration 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medicatiegebruik inhoud</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]"
         id="d40e9759-false-d485956e0">
      <let name="stoptype"
           value="cda:entryRelationship/cda:observation[cda:code[@code='410684002'][@codeSystem='2.16.840.1.113883.6.96']]"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="(not($stoptype/cda:value/@code) or $stoptype/cda:value[@code=('410546004','385655000')][@codeSystem='2.16.840.1.113883.6.96'])">(MPCDAMedicatiegebruikSchemaInhoud5): In medicatiegebruik mag stoptype - indien aanwezig - alleen de waardes 'stopgezet/definitief' of 'onderbroken/tijdelijk' hebben.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:text) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:text) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] | hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="$elmcount &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] komt te vaak voor [max 1x].</assert>
      <!-- == Repeated variable name: elmcount -> elmcount-1 == -->
      <let name="elmcount-1"
           value="count(cda:informant[cda:assignedEntity/cda:assignedPerson] | cda:informant[cda:assignedEntity/cda:code/@code='ONESELF'] | cda:informant[exists(cda:relatedEntity)])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="$elmcount-1 &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): keuze (cda:informant[cda:assignedEntity/cda:assignedPerson]  of  cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']  of  cda:informant[exists(cda:relatedEntity)]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']"
         id="d40e9782-false-d486275e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9442')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:id
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:id"
         id="d40e9787-false-d486294e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]"
         id="d40e9789-false-d486307e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="@nullFlavor or (@code='422979000' and @codeSystem='2.16.840.1.113883.6.96') or (@code='6' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.3')">(MPCDAMedicatiegebruikSchemaInhoud5): de elementwaarde MOET een zijn van 'code '422979000' codeSystem '2.16.840.1.113883.6.96' of code '6' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.3''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPCDAMedicatiegebruikSchemaInhoud5): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPCDAMedicatiegebruikSchemaInhoud5): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@code='6')">(MPCDAMedicatiegebruikSchemaInhoud5):  Vanaf MP 9 2.0.0 is de code 6 verouderd voor medicatiegebruik. Gebruik in plaats daarvan SNOMED code 422979000.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:text
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:text"
         id="d40e9807-false-d486341e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]"
         id="d40e9814-false-d486352e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:low) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:width) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:width komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:high) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:low
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:low"
         id="d486392e42-false-d486400e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:width
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:width"
         id="d486392e58-false-d486417e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(UsablePeriod): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value">(UsablePeriod): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@unit">(UsablePeriod): attribute @unit MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.25-2016-07-01T160454.xml')/*/valueSet/conceptList/concept/@code))])">(UsablePeriod): de waarde van unit MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.20.77.11.25' Time a tot h PQ (UCUM) - without Month (2016-07-01T16:04:54).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value&gt;0">(UsablePeriod): @value moet een getal bevatten dat groter is dan nul.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:high
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:high"
         id="d486392e86-false-d486464e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[0-9]{4,14}')">(UsablePeriod): attribuut @value MOET datatype 'ts' hebben  - '
<value-of select="@value"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(UsablePeriod): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(../hl7:width)">(UsablePeriod): Einddatum/tijd mag niet voorkomen in combinatie met width.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@nullFlavor or string-length(@value)&gt;10">(UsablePeriod): Einddatum/tijd minimaal tot op de minuut nauwkeurig meegeven (om verwarring tussen 'tot' en 'tot en met' te voorkomen).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]"
         id="d40e9819-false-d486493e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.2.4.4.9')">(MPCDAMedicatiegebruikSchemaInhoud5): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.2.4.4.9''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAMedicatiegebruikSchemaInhoud5): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@code) or not(starts-with(@code, '0'))">(MPCDAMedicatiegebruikSchemaInhoud5): Géén voorloopnullen opnemen bij code voor toedieningsweg.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="@nullFlavor or @displayName">(MPCDAMedicatiegebruikSchemaInhoud5): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:originalText) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:originalText komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]/hl7:originalText
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]/hl7:originalText"
         id="d40e9851-false-d486530e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('CSM') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'CSM' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]
Item: (MPCDAauthorZorgavPatient2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]"
         id="d486565e102-false-d486574e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor[hl7:id]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor[hl7:id] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:time
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:time"
         id="d486565e111-false-d486635e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAauthorZorgavPatient2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(*)">(MPCDAauthorZorgavPatient2): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]"
         id="d486565e113-false-d486668e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAauthorZorgavPatient2): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:id
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:id"
         id="d486565e117-false-d486727e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAauthorZorgavPatient2): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization"
         id="d486736e42-false-d486758e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d486858e9-false-d486869e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d486858e27-false-d486898e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d486858e45-false-d486927e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d486858e63-false-d486954e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name"
         id="d486736e51-false-d486967e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d486736e67-false-d486978e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d486736e76-false-d487030e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr"
         id="d486736e84-false-d487085e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d487201e83-false-d487209e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d487201e97-false-d487222e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d487201e114-false-d487235e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d487201e182-false-d487248e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d487201e195-false-d487269e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d487201e226-false-d487284e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d487201e235-false-d487297e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d487201e244-false-d487310e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d487201e285-false-d487325e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d487201e302-false-d487338e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d486736e89-false-d487353e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d486736e102-false-d487375e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d486736e116-false-d487406e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(representedOrganization1): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d486736e121-false-d487433e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d486736e126-false-d487451e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]"
         id="d486565e135-false-d487462e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d487563e33-false-d487573e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(author): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10267 ParticipationFunction (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time"
         id="d487563e38-false-d487597e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(*)">(author): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor"
         id="d487563e40-false-d487653e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(author): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]) &lt;= 1">(author): element hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(author): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(author): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(author): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(author): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (zorgverleneridentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d487792e11-false-d487803e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d487792e30-false-d487832e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d487792e49-false-d487861e0">
      <extends rule="II.NL.BIG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]"
         id="d487792e68-false-d487888e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d487790e16-false-d487905e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-assigned-contents): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2020-09-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2020-09-01T00:00:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(zorgverlener-assigned-contents): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(zorgverlener-assigned-contents): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr"
         id="d487790e26-false-d487952e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-assigned-contents): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-assigned-contents): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-assigned-contents): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-assigned-contents): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-assigned-contents): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-assigned-contents): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-assigned-contents): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-assigned-contents): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-assigned-contents): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-assigned-contents): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName"
         id="d488068e83-false-d488076e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber"
         id="d488068e97-false-d488089e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix"
         id="d488068e114-false-d488102e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator"
         id="d488068e182-false-d488115e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode"
         id="d488068e195-false-d488136e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county"
         id="d488068e226-false-d488151e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city"
         id="d488068e235-false-d488164e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country"
         id="d488068e244-false-d488177e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID"
         id="d488068e285-false-d488192e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod"
         id="d488068e302-false-d488205e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]"
         id="d487790e34-false-d488216e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d487790e42-false-d488268e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson
Item: (zorgverlener-assigned-contents)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization"
         id="d488318e42-false-d488340e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d488440e9-false-d488451e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d488440e27-false-d488480e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d488440e45-false-d488509e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d488440e63-false-d488536e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="d488318e51-false-d488549e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d488318e67-false-d488560e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d488318e76-false-d488612e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="d488318e84-false-d488667e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d488783e83-false-d488791e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d488783e97-false-d488804e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d488783e114-false-d488817e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d488783e182-false-d488830e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d488783e195-false-d488851e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d488783e226-false-d488866e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d488783e235-false-d488879e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d488783e244-false-d488892e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d488783e285-false-d488907e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d488783e302-false-d488920e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d488318e89-false-d488935e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d488318e102-false-d488957e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d488318e116-false-d488988e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(representedOrganization1): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d488318e121-false-d489015e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d488318e126-false-d489033e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]"
         id="d486565e143-false-d489044e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor[hl7:code/@code='ONESELF']) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor[hl7:code/@code='ONESELF'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time"
         id="d486565e152-false-d489087e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAauthorZorgavPatient2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(*)">(MPCDAauthorZorgavPatient2): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']"
         id="d486565e154-false-d489102e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAauthorZorgavPatient2): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="$elmcount &gt;= 1">(MPCDAauthorZorgavPatient2): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]  of  hl7:id[@nullFlavor]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3']) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[@nullFlavor]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[@nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (CDAauthInfPat)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d489161e19-false-d489170e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]"
         id="d489161e25-false-d489181e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@root">(CDAauthInfPat): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(CDAauthInfPat): attribuut @root MOET datatype 'cs' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@extension">(CDAauthInfPat): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@extension) or (string-length(@extension) &gt; 0 and not(matches(@extension,'\s')))">(CDAauthInfPat): attribuut @extension MOET datatype 'cs' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]"
         id="d489161e35-false-d489212e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor">(CDAauthInfPat): attribute @nullFlavor MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAauthInfPat): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d489161e46-false-d489235e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(CDAauthInfPat): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]"
         id="d40e9876-false-d489253e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'INF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.34
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (zorgverlener-assignedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]"
         id="d489328e14-false-d489375e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(zorgverlener-assignedEntity): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &gt;= 1">(zorgverlener-assignedEntity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(zorgverlener-assignedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(zorgverlener-assignedEntity): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(zorgverlener-assignedEntity): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(zorgverlener-assignedEntity): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.34
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']
Item: (zorgverlener-assignedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']"
         id="d489328e21-false-d489533e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverlener-assignedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.1.34')">(zorgverlener-assignedEntity): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.1.34' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (zorgverleneridentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d489548e11-false-d489559e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d489548e30-false-d489588e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d489548e49-false-d489617e0">
      <extends rule="II.NL.BIG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]"
         id="d489548e68-false-d489644e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d489546e16-false-d489661e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-assigned-contents): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2020-09-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2020-09-01T00:00:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(zorgverlener-assigned-contents): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(zorgverlener-assigned-contents): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr"
         id="d489546e26-false-d489708e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-assigned-contents): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-assigned-contents): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-assigned-contents): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-assigned-contents): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-assigned-contents): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-assigned-contents): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-assigned-contents): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-assigned-contents): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-assigned-contents): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-assigned-contents): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName"
         id="d489824e83-false-d489832e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber"
         id="d489824e97-false-d489845e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d489824e114-false-d489858e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator"
         id="d489824e182-false-d489871e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode"
         id="d489824e195-false-d489892e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county"
         id="d489824e226-false-d489907e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city"
         id="d489824e235-false-d489920e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country"
         id="d489824e244-false-d489933e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID"
         id="d489824e285-false-d489948e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod"
         id="d489824e302-false-d489961e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d489546e34-false-d489972e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d489546e42-false-d490024e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:assignedPerson
Item: (zorgverlener-assigned-contents)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization"
         id="d490074e42-false-d490096e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d490196e9-false-d490207e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d490196e27-false-d490236e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d490196e45-false-d490265e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d490196e63-false-d490292e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:name"
         id="d490074e51-false-d490305e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d490074e67-false-d490316e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d490074e76-false-d490368e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr"
         id="d490074e84-false-d490423e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d490539e83-false-d490547e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d490539e97-false-d490560e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d490539e114-false-d490573e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d490539e182-false-d490586e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d490539e195-false-d490607e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d490539e226-false-d490622e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d490539e235-false-d490635e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d490539e244-false-d490648e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d490539e285-false-d490663e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d490539e302-false-d490676e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d490074e89-false-d490691e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d490074e102-false-d490713e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d490074e116-false-d490744e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(representedOrganization1): element hl7:code is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d490074e121-false-d490771e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d490074e126-false-d490789e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d40e9914-false-d490817e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]  of  hl7:id[@nullFlavor]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:id[@nullFlavor]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:id[@nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (CDAauthInfPat)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d490876e19-false-d490885e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]"
         id="d490876e25-false-d490896e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@root">(CDAauthInfPat): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(CDAauthInfPat): attribuut @root MOET datatype 'cs' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@extension">(CDAauthInfPat): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@extension) or (string-length(@extension) &gt; 0 and not(matches(@extension,'\s')))">(CDAauthInfPat): attribuut @extension MOET datatype 'cs' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@nullFlavor]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@nullFlavor]"
         id="d490876e35-false-d490927e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor">(CDAauthInfPat): attribute @nullFlavor MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAauthInfPat): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d490876e46-false-d490950e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(CDAauthInfPat): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]"
         id="d40e9920-false-d490968e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'INF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(hl7:relatedEntity[@classCode = 'AGNT']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element hl7:relatedEntity[@classCode = 'AGNT'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']
Item: (contactpersoon-relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']"
         id="d491021e27-false-d491052e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@classCode) = ('AGNT')">(contactpersoon-relatedEntity): de waarde van classCode MOET 'AGNT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(contactpersoon-relatedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:id
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:id"
         id="d491109e10-false-d491117e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d491109e12-false-d491132e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(contact-sharedPart1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2 RolCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr"
         id="d491109e21-false-d491165e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(contact-sharedPart1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(contact-sharedPart1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(contact-sharedPart1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(contact-sharedPart1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(contact-sharedPart1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(contact-sharedPart1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(contact-sharedPart1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(contact-sharedPart1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(contact-sharedPart1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(contact-sharedPart1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:streetName"
         id="d491281e83-false-d491289e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:houseNumber"
         id="d491281e97-false-d491302e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:buildingNumberSuffix"
         id="d491281e114-false-d491315e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:additionalLocator"
         id="d491281e182-false-d491328e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:postalCode"
         id="d491281e195-false-d491349e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:county"
         id="d491281e226-false-d491364e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:city"
         id="d491281e235-false-d491377e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:country"
         id="d491281e244-false-d491390e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:unitID"
         id="d491281e285-false-d491405e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:useablePeriod"
         id="d491281e302-false-d491418e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'tel:')]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'tel:')]"
         id="d491109e26-false-d491429e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@value">(contact-sharedPart1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(contact-sharedPart1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'mailto:')]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d491109e31-false-d491481e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@value">(contact-sharedPart1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(contact-sharedPart1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson
Item: (contactpersoon-relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson"
         id="d491021e33-false-d491529e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(contactpersoon-relatedEntity): de waarde van classCode MOET 'PSN' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(contactpersoon-relatedEntity): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(contactpersoon-relatedEntity): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(sdtc:asPatientRelationship[@classCode = 'PRS']) &lt;= 1">(contactpersoon-relatedEntity): element sdtc:asPatientRelationship[@classCode = 'PRS'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/hl7:name
Item: (contactpersoon-sharedPart2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']
Item: (contactpersoon-sharedPart2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']"
         id="d491569e15-false-d491587e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="string(@classCode) = ('PRS')">(contactpersoon-sharedPart2): de waarde van classCode MOET 'PRS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="count(sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(contactpersoon-sharedPart2): element sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (contactpersoon-sharedPart2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d491569e19-false-d491615e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(contactpersoon-sharedPart2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(contactpersoon-sharedPart2): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2020-09-01T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(contactpersoon-sharedPart2): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2020-09-01T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('SPRT')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('RSON')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9441']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('RSON')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('SUBJ')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@inversionInd) = ('true')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]"
         id="d40e9998-false-d491835e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:sequenceNumber) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:sequenceNumber is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:sequenceNumber) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:sequenceNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud5): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber"
         id="d40e10005-false-d491909e0">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(MPCDAMedicatiegebruikSchemaInhoud5): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(MPCDAMedicatiegebruikSchemaInhoud5): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="@value">(MPCDAMedicatiegebruikSchemaInhoud5): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="not(@value) or matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')">(MPCDAMedicatiegebruikSchemaInhoud5): attribuut @value is geen geldig int getal 
<value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9442
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud5)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@inversionInd) = ('true')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9442-2022-11-24T134142.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud5): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]"
         id="d492089e10-false-d492095e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@typeCode) = ('REFR')">(partEncounterReference): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']) &gt;= 1">(partEncounterReference): element hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']) &lt;= 1">(partEncounterReference): element hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']"
         id="d492089e28-false-d492125e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@classCode) = ('ENC')">(partEncounterReference): de waarde van classCode MOET 'ENC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@moodCode) = ('EVN')">(partEncounterReference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(partEncounterReference): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(partEncounterReference): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/hl7:id[not(@nullFlavor)]
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/hl7:id[not(@nullFlavor)]"
         id="d492089e40-false-d492161e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(partEncounterReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]"
         id="d492168e10-false-d492174e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@typeCode) = ('REFR')">(partConcernReference): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]) &gt;= 1">(partConcernReference): element hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]) &lt;= 1">(partConcernReference): element hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]"
         id="d492168e28-false-d492204e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@classCode) = ('ACT')">(partConcernReference): de waarde van classCode MOET 'ACT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@moodCode) = ('EVN')">(partConcernReference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(partConcernReference): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(partConcernReference): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &gt;= 1">(partConcernReference): element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &lt;= 1">(partConcernReference): element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:id[not(@nullFlavor)]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:id[not(@nullFlavor)]"
         id="d492168e40-false-d492255e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(partConcernReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9442']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]"
         id="d492168e50-false-d492268e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(partConcernReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(partConcernReference): de elementwaarde MOET een zijn van 'code 'CONC' codeSystem '2.16.840.1.113883.5.6''.</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Name: MP CDA Medicatiegebruik inhoud
Description: 
                 Template: Inhoud van Medicatiegebruik met eventueel op- of afbouwschema, gebaseerd op CDA R2 Entries. Nieuwe SNOMED code voor substanceAdministration 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medicatiegebruik inhoud</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]"
         id="d42e4307-false-d103277e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:id) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:id) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:text) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:text) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] | hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="$elmcount &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): keuze (hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]  of  hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] komt te vaak voor [max 1x].</assert>
      <!-- == Repeated variable name: elmcount -> elmcount-1 == -->
      <let name="elmcount-1"
           value="count(cda:informant[cda:assignedEntity/cda:assignedPerson] | cda:informant[cda:assignedEntity/cda:code/@code='ONESELF'] | cda:informant[exists(cda:relatedEntity)])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="$elmcount-1 &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): keuze (cda:informant[cda:assignedEntity/cda:assignedPerson]  of  cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']  of  cda:informant[exists(cda:relatedEntity)]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9385']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9385']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']"
         id="d42e4435-false-d103557e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9321')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:id
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:id"
         id="d42e4440-false-d103571e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')]"
         id="d42e4442-false-d103582e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="@nullFlavor or (@code='422979000' and @codeSystem='2.16.840.1.113883.6.96') or (@code='6' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.3')">(MPCDAMedicatiegebruikSchemaInhoud4): de elementwaarde MOET een zijn van 'code '422979000' codeSystem '2.16.840.1.113883.6.96' of code '6' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.3''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPCDAMedicatiegebruikSchemaInhoud4): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPCDAMedicatiegebruikSchemaInhoud4): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@code='6')">(MPCDAMedicatiegebruikSchemaInhoud4): 	Vanaf MP 9 2.0.0 is de code 6 verouderd voor medicatiegebruik. Gebruik in plaats daarvan SNOMED code 422979000.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:text
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:text"
         id="d42e4460-false-d103606e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]"
         id="d42e4467-false-d103614e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:low) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:width) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:width komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:high) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:low
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:low"
         id="d103617e45-false-d103648e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:width
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:width"
         id="d103617e57-false-d103661e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(UsablePeriod): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value">(UsablePeriod): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@unit">(UsablePeriod): attribute @unit MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.25-2016-07-01T160454.xml')/*/valueSet/conceptList/concept/@code))])">(UsablePeriod): de waarde van unit MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.20.77.11.25' Time a tot h PQ (UCUM) - without Month (2016-07-01T16:04:54).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value&gt;0">(UsablePeriod): @value moet een getal bevatten dat groter is dan nul.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:high
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3')]/hl7:high"
         id="d103617e83-false-d103694e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[0-9]{4,14}')">(UsablePeriod): attribuut @value MOET datatype 'ts' hebben  - '
<value-of select="@value"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(UsablePeriod): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(../hl7:width)">(UsablePeriod): Einddatum/tijd mag niet voorkomen in combinatie met width.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@nullFlavor or string-length(@value)&gt;10">(UsablePeriod): Einddatum/tijd minimaal tot op de minuut nauwkeurig meegeven (om verwarring tussen 'tot' en 'tot en met' te voorkomen).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]"
         id="d42e4472-false-d103715e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.2.4.4.9')">(MPCDAMedicatiegebruikSchemaInhoud4): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.2.4.4.9''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAMedicatiegebruikSchemaInhoud4): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@code) or not(starts-with(@code, '0'))">(MPCDAMedicatiegebruikSchemaInhoud4): Géén voorloopnullen opnemen bij code voor toedieningsweg.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="@nullFlavor or @displayName">(MPCDAMedicatiegebruikSchemaInhoud4): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:originalText) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:originalText komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]/hl7:originalText
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:routeCode[@codeSystem = '2.16.840.1.113883.2.4.4.9' or @nullFlavor]/hl7:originalText"
         id="d42e4505-false-d103742e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('CSM') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'CSM' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]
Item: (MPCDAauthorZorgavPatient2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]"
         id="d103766e87-false-d103779e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor[hl7:id]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor[hl7:id] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:time
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:time"
         id="d103766e96-false-d103821e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAauthorZorgavPatient2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(*)">(MPCDAauthorZorgavPatient2): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]"
         id="d103766e98-false-d103846e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAauthorZorgavPatient2): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:id
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:id"
         id="d103766e102-false-d103887e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAauthorZorgavPatient2): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization"
         id="d103892e38-false-d103909e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d103906e281-false-d103996e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d103906e299-false-d104017e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d103906e317-false-d104038e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d103906e335-false-d104056e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name"
         id="d103892e47-false-d104066e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d103892e61-false-d104074e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d103892e70-false-d104116e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr"
         id="d103892e78-false-d104153e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d104150e355-false-d104231e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d104150e368-false-d104241e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d104150e385-false-d104251e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d104150e442-false-d104261e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d104150e457-false-d104277e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d104150e490-false-d104289e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d104150e499-false-d104299e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d104150e508-false-d104309e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d104150e545-false-d104321e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d104150e566-false-d104331e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d103892e83-false-d104344e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d103892e94-false-d104362e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d103892e105-false-d104388e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d103892e110-false-d104406e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[not(hl7:assignedPerson)][not(hl7:code/@code='ONESELF')]]/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d103892e115-false-d104420e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]"
         id="d103766e118-false-d104428e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d104439e48-false-d104509e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(author): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10267 ParticipationFunction (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time"
         id="d104439e53-false-d104529e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(*)">(author): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor"
         id="d104439e55-false-d104575e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(author): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]) &lt;= 1">(author): element hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(author): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(author): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(author): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(author): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (zorgverleneridentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d104679e10-false-d104688e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d104679e27-false-d104709e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d104679e44-false-d104730e0">
      <extends rule="II.NL.BIG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]"
         id="d104679e61-false-d104748e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d104572e292-false-d104763e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-assigned-contents): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2017-12-31T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr"
         id="d104572e302-false-d104788e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-assigned-contents): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-assigned-contents): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-assigned-contents): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-assigned-contents): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-assigned-contents): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-assigned-contents): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-assigned-contents): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-assigned-contents): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-assigned-contents): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-assigned-contents): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName"
         id="d104785e355-false-d104866e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber"
         id="d104785e368-false-d104876e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix"
         id="d104785e385-false-d104886e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator"
         id="d104785e442-false-d104896e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode"
         id="d104785e457-false-d104912e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county"
         id="d104785e490-false-d104924e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city"
         id="d104785e499-false-d104934e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country"
         id="d104785e508-false-d104944e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID"
         id="d104785e545-false-d104956e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod"
         id="d104785e566-false-d104966e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]"
         id="d104572e310-false-d104974e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d104572e318-false-d105016e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson
Item: (zorgverlener-assigned-contents)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization"
         id="d105054e110-false-d105077e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d105074e281-false-d105164e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d105074e299-false-d105185e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d105074e317-false-d105206e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d105074e335-false-d105224e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="d105054e119-false-d105234e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d105054e133-false-d105242e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d105054e142-false-d105284e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="d105054e150-false-d105321e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d105318e355-false-d105399e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d105318e368-false-d105409e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d105318e385-false-d105419e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d105318e442-false-d105429e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d105318e457-false-d105445e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d105318e490-false-d105457e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d105318e499-false-d105467e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d105318e508-false-d105477e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d105318e545-false-d105489e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d105318e566-false-d105499e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d105054e155-false-d105512e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d105054e166-false-d105530e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d105054e177-false-d105556e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d105054e182-false-d105574e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d105054e187-false-d105588e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]"
         id="d103766e126-false-d105596e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgavPatient2): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgavPatient2): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:assignedAuthor[hl7:code/@code='ONESELF']) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:assignedAuthor[hl7:code/@code='ONESELF'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time"
         id="d103766e135-false-d105624e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAauthorZorgavPatient2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="not(*)">(MPCDAauthorZorgavPatient2): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9387
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (MPCDAauthorZorgavPatient2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']"
         id="d103766e137-false-d105635e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAauthorZorgavPatient2): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="$elmcount &gt;= 1">(MPCDAauthorZorgavPatient2): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]  of  hl7:id[@nullFlavor]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3']) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:id[@nullFlavor]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:id[@nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(MPCDAauthorZorgavPatient2): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9387-2021-07-01T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(MPCDAauthorZorgavPatient2): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (CDAauthInfPat)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d105642e37-false-d105679e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]"
         id="d105642e43-false-d105687e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@root">(CDAauthInfPat): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(CDAauthInfPat): attribuut @root MOET datatype 'cs' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@extension">(CDAauthInfPat): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@extension) or (string-length(@extension) &gt; 0 and not(matches(@extension,'\s')))">(CDAauthInfPat): attribuut @extension MOET datatype 'cs' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]"
         id="d105642e53-false-d105706e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor">(CDAauthInfPat): attribute @nullFlavor MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAauthInfPat): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d105642e64-false-d105723e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(CDAauthInfPat): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]"
         id="d42e4530-false-d105737e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'INF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.34
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (zorgverlener-assignedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]"
         id="d105749e30-false-d105835e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(zorgverlener-assignedEntity): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &gt;= 1">(zorgverlener-assignedEntity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]) &lt;= 1">(zorgverlener-assignedEntity): element hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(zorgverlener-assignedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(zorgverlener-assignedEntity): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(zorgverlener-assignedEntity): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(zorgverlener-assignedEntity): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.34
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']
Item: (zorgverlener-assignedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']"
         id="d105749e37-false-d105952e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverlener-assignedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.34-2021-07-01T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.1.34')">(zorgverlener-assignedEntity): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.1.34' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]
Item: (zorgverleneridentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d105963e10-false-d105972e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d105963e27-false-d105993e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d105963e44-false-d106014e0">
      <extends rule="II.NL.BIG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]"
         id="d105963e61-false-d106032e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d105953e31-false-d106047e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-assigned-contents): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2017-12-31T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr"
         id="d105953e41-false-d106072e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-assigned-contents): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-assigned-contents): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-assigned-contents): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-assigned-contents): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-assigned-contents): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-assigned-contents): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-assigned-contents): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-assigned-contents): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-assigned-contents): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-assigned-contents): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:streetName"
         id="d106069e355-false-d106150e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:houseNumber"
         id="d106069e368-false-d106160e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:buildingNumberSuffix"
         id="d106069e385-false-d106170e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:additionalLocator"
         id="d106069e442-false-d106180e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:postalCode"
         id="d106069e457-false-d106196e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:county"
         id="d106069e490-false-d106208e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:city"
         id="d106069e499-false-d106218e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:country"
         id="d106069e508-false-d106228e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:unitID"
         id="d106069e545-false-d106240e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:addr/hl7:useablePeriod"
         id="d106069e566-false-d106250e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'tel:')]"
         id="d105953e49-false-d106258e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d105953e57-false-d106300e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:assignedPerson
Item: (zorgverlener-assigned-contents)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization"
         id="d106338e110-false-d106361e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d106358e281-false-d106448e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d106358e299-false-d106469e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d106358e317-false-d106490e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d106358e335-false-d106508e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:name"
         id="d106338e119-false-d106518e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d106338e133-false-d106526e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d106338e142-false-d106568e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr"
         id="d106338e150-false-d106605e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d106602e355-false-d106683e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d106602e368-false-d106693e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d106602e385-false-d106703e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d106602e442-false-d106713e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d106602e457-false-d106729e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d106602e490-false-d106741e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d106602e499-false-d106751e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d106602e508-false-d106761e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d106602e545-false-d106773e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d106602e566-false-d106783e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d106338e155-false-d106796e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d106338e166-false-d106814e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d106338e177-false-d106840e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d106338e182-false-d106858e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:assignedPerson]/hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.1.34']]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d106338e187-false-d106872e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d42e4568-false-d106901e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="$elmcount &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]  of  hl7:id[@nullFlavor]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:id[@nullFlavor]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:id[@nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (CDAauthInfPat)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d106908e37-false-d106945e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]"
         id="d106908e43-false-d106953e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@root">(CDAauthInfPat): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(CDAauthInfPat): attribuut @root MOET datatype 'cs' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@extension">(CDAauthInfPat): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@extension) or (string-length(@extension) &gt; 0 and not(matches(@extension,'\s')))">(CDAauthInfPat): attribuut @extension MOET datatype 'cs' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@nullFlavor]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id[@nullFlavor]"
         id="d106908e53-false-d106972e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor">(CDAauthInfPat): attribute @nullFlavor MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAauthInfPat): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[cda:assignedEntity/cda:code/@code='ONESELF']/cda:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d106908e64-false-d106989e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(CDAauthInfPat): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]"
         id="d42e4574-false-d107003e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'INF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(hl7:relatedEntity[@classCode = 'AGNT']) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element hl7:relatedEntity[@classCode = 'AGNT'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']
Item: (contactpersoon-relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']"
         id="d107015e31-false-d107063e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@classCode) = ('AGNT')">(contactpersoon-relatedEntity): de waarde van classCode MOET 'AGNT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(contactpersoon-relatedEntity): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:id
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:id"
         id="d107060e31-false-d107112e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d107060e33-false-d107125e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(contact-sharedPart1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2 RolCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr"
         id="d107060e42-false-d107146e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(contact-sharedPart1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(contact-sharedPart1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(contact-sharedPart1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(contact-sharedPart1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(contact-sharedPart1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(contact-sharedPart1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(contact-sharedPart1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(contact-sharedPart1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(contact-sharedPart1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(contact-sharedPart1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:streetName"
         id="d107143e355-false-d107224e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:houseNumber"
         id="d107143e368-false-d107234e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:buildingNumberSuffix"
         id="d107143e385-false-d107244e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:additionalLocator"
         id="d107143e442-false-d107254e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:postalCode"
         id="d107143e457-false-d107270e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:county"
         id="d107143e490-false-d107282e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:city"
         id="d107143e499-false-d107292e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:country"
         id="d107143e508-false-d107302e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:unitID"
         id="d107143e545-false-d107314e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:addr/hl7:useablePeriod"
         id="d107143e566-false-d107324e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'tel:')]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'tel:')]"
         id="d107060e47-false-d107332e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@value">(contact-sharedPart1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(contact-sharedPart1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.31
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'mailto:')]
Item: (contact-sharedPart1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d107060e52-false-d107374e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(contact-sharedPart1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="@value">(contact-sharedPart1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(contact-sharedPart1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.31-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(contact-sharedPart1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.30
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson
Item: (contactpersoon-relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson"
         id="d107015e37-false-d107416e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(contactpersoon-relatedEntity): de waarde van classCode MOET 'PSN' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="string(@determinerCode) = ('INSTANCE') or not(@determinerCode)">(contactpersoon-relatedEntity): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(contactpersoon-relatedEntity): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.30-2021-07-01T000000.html"
              test="count(sdtc:asPatientRelationship[@classCode = 'PRS']) &lt;= 1">(contactpersoon-relatedEntity): element sdtc:asPatientRelationship[@classCode = 'PRS'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/hl7:name
Item: (contactpersoon-sharedPart2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']
Item: (contactpersoon-sharedPart2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']"
         id="d107413e42-false-d107467e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="string(@classCode) = ('PRS')">(contactpersoon-sharedPart2): de waarde van classCode MOET 'PRS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="count(sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(contactpersoon-sharedPart2): element sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.36
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (contactpersoon-sharedPart2)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:informant[exists(cda:relatedEntity)]/hl7:relatedEntity[@classCode = 'AGNT']/hl7:relatedPerson/sdtc:asPatientRelationship[@classCode = 'PRS']/sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d107413e46-false-d107491e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(contactpersoon-sharedPart2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(contactpersoon-sharedPart2): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2020-09-01T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.36-2021-07-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(contactpersoon-sharedPart2): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2020-09-01T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9189']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('SPRT')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('RSON')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9385']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9385']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('RSON')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('SUBJ')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@inversionInd) = ('true')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]"
         id="d42e4647-false-d107677e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:sequenceNumber) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:sequenceNumber is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:sequenceNumber) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:sequenceNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &gt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &lt;= 1">(MPCDAMedicatiegebruikSchemaInhoud4): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber"
         id="d42e4654-false-d107757e0">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(MPCDAMedicatiegebruikSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(MPCDAMedicatiegebruikSchemaInhoud4): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="@value">(MPCDAMedicatiegebruikSchemaInhoud4): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="not(@value) or matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')">(MPCDAMedicatiegebruikSchemaInhoud4): attribuut @value is geen geldig int getal 
<value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9388']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('REFR')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9321
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]
Item: (MPCDAMedicatiegebruikSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@inversionInd) = ('true')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9321-2020-10-15T130824.html"
              test="string(@typeCode) = ('COMP')">(MPCDAMedicatiegebruikSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]"
         id="d107884e29-false-d107899e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@typeCode) = ('REFR')">(partEncounterReference): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']) &gt;= 1">(partEncounterReference): element hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']) &lt;= 1">(partEncounterReference): element hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']"
         id="d107884e43-false-d107919e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@classCode) = ('ENC')">(partEncounterReference): de waarde van classCode MOET 'ENC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="string(@moodCode) = ('EVN')">(partEncounterReference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(partEncounterReference): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(partEncounterReference): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.32
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/hl7:id[not(@nullFlavor)]
Item: (partEncounterReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/hl7:id[not(@nullFlavor)]"
         id="d107884e55-false-d107943e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(partEncounterReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]"
         id="d107944e21-false-d107952e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@typeCode) = ('REFR')">(partConcernReference): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]) &gt;= 1">(partConcernReference): element hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]) &lt;= 1">(partConcernReference): element hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]"
         id="d107944e36-false-d107974e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@classCode) = ('ACT')">(partConcernReference): de waarde van classCode MOET 'ACT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="string(@moodCode) = ('EVN')">(partConcernReference): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:id[not(@nullFlavor)]) &gt;= 1">(partConcernReference): element hl7:id[not(@nullFlavor)] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:id[not(@nullFlavor)]) &lt;= 1">(partConcernReference): element hl7:id[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &gt;= 1">(partConcernReference): element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="count(hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]) &lt;= 1">(partConcernReference): element hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:id[not(@nullFlavor)]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:id[not(@nullFlavor)]"
         id="d107944e48-false-d108007e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(partConcernReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]
Item: (partConcernReference)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9321']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]"
         id="d107944e58-false-d108018e0">
      <extends rule="CV"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CV')">(partConcernReference): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CV" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="@nullFlavor or (@code='CONC' and @codeSystem='2.16.840.1.113883.5.6')">(partConcernReference): de elementwaarde MOET een zijn van 'code 'CONC' codeSystem '2.16.840.1.113883.5.6''.</assert>
   </rule>
</pattern>
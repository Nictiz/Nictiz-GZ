<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Name: MP CDA Toedieningsafspraak inhoud
Description: 
                 Toedieningsafspraak inhoud bij medicatieproces als CDA entry. 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Toedieningsafspraak inhoud</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]"
         id="d40e4991-false-d128413e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:id) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:id) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:text) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:text) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:text komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:statusCode[@code='nullified']) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:statusCode[@code='nullified'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:routeCode) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:routeCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:routeCode) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:routeCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:maxDoseQuantity) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:maxDoseQuantity komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:author) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:author is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:author) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:author komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']"
         id="d40e5094-false-d128677e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9326')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:id
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:id"
         id="d40e5099-false-d128696e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e5101-false-d128710e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPCDAToedieningsafspraakSchemaInhoud4): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.6.96')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van codeSystem MOET '2.16.840.1.113883.6.96' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@code) = ('422037009')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van code MOET '422037009' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPCDAToedieningsafspraakSchemaInhoud4): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:text
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:text"
         id="d40e5115-false-d128747e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@mediaType) = ('text/plain')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van mediaType MOET 'text/plain' zijn. Gevonden: "
<value-of select="@mediaType"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@mediaType) or string-length(@mediaType)&gt;0">(MPCDAToedieningsafspraakSchemaInhoud4): attribuut @mediaType MOET datatype 'st' hebben  - '
<value-of select="@mediaType"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:statusCode[@code='nullified']
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:statusCode[@code='nullified']"
         id="d40e5121-false-d128769e0">
      <extends rule="CS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CS')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="@nullFlavor or (@code='nullified')">(MPCDAToedieningsafspraakSchemaInhoud4): de elementwaarde MOET een zijn van 'code 'nullified''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]"
         id="d40e5134-false-d128787e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:low) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:width) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:width komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:high) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:high komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:low
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:low"
         id="d128827e28-false-d128835e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:width
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:width"
         id="d128827e40-false-d128852e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(UsablePeriod): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value">(UsablePeriod): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(UsablePeriod): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@unit">(UsablePeriod): attribute @unit MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.25-2016-07-01T160454.xml')/*/valueSet/conceptList/concept/@code))])">(UsablePeriod): de waarde van unit MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.20.77.11.25' Time a tot h PQ (UCUM) - without Month (2016-07-01T16:04:54).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@value&gt;0">(UsablePeriod): @value moet een getal bevatten dat groter is dan nul.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9019
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:high
Item: (UsablePeriod)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/hl7:high"
         id="d128827e66-false-d128899e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(UsablePeriod): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(*)">(UsablePeriod): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@value) or matches(string(@value), '^[0-9]{4,14}')">(UsablePeriod): attribuut @value MOET datatype 'ts' hebben  - '
<value-of select="@value"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(UsablePeriod): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="not(../hl7:width)">(UsablePeriod): Einddatum/tijd mag niet voorkomen in combinatie met width.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9019-2016-07-01T155004.html"
              test="@nullFlavor or string-length(@value)&gt;10">(UsablePeriod): Einddatum/tijd minimaal tot op de minuut nauwkeurig meegeven (om verwarring tussen 'tot' en 'tot en met' te voorkomen).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:routeCode
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:routeCode"
         id="d40e5139-false-d128928e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.4.9') or not(@codeSystem)">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.4.9' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(starts-with(@code, '0'))">(MPCDAToedieningsafspraakSchemaInhoud4): Géén voorloopnullen opnemen bij code voor toedieningsweg.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:maxDoseQuantity
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:maxDoseQuantity"
         id="d40e5172-false-d128949e0">
      <extends rule="RTO_PQ_PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'RTO_PQ_PQ')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:RTO_PQ_PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author"
         id="d40e5176-false-d129000e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:time) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:time) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:assignedAuthor[hl7:id]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:assignedAuthor[hl7:id] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:time
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:time"
         id="d40e5188-false-d129061e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(*)">(MPCDAToedieningsafspraakSchemaInhoud4): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]"
         id="d40e5191-false-d129094e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:id) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:id) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(hl7:representedOrganization) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:id
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:id"
         id="d40e5195-false-d129153e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAToedieningsafspraakSchemaInhoud4): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization"
         id="d129162e29-false-d129184e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="string(@classCode) = ('ORG') or not(@classCode)">(representedOrganization1): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.3']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.528.1.1007.3.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.8']) &lt;= 1">(representedOrganization1): element hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:asOrganizationPartOf) &lt;= 1">(representedOrganization1): element hl7:asOrganizationPartOf komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d129284e9-false-d129295e0">
      <extends rule="II.NL.URA"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.528.1.1007.3.3')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d129284e27-false-d129324e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d129284e45-false-d129353e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.8')">(zorgaanbiederidentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.8' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="@extension">(zorgaanbiederidentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgaanbiederidentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d129284e63-false-d129380e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:name"
         id="d129162e38-false-d129393e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d129162e50-false-d129404e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d129162e59-false-d129456e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@value">(representedOrganization1): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(representedOrganization1): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr"
         id="d129162e67-false-d129511e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(representedOrganization1): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(representedOrganization1): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(representedOrganization1): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(representedOrganization1): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(representedOrganization1): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(representedOrganization1): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(representedOrganization1): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(representedOrganization1): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(representedOrganization1): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(representedOrganization1): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(representedOrganization1): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d129627e50-false-d129635e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d129627e62-false-d129648e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d129627e77-false-d129661e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d129627e117-false-d129674e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d129627e130-false-d129695e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d129627e161-false-d129710e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d129627e170-false-d129723e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d129627e179-false-d129736e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d129627e216-false-d129751e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d129627e233-false-d129764e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d129162e72-false-d129779e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3 OrganisatieTypeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d129162e83-false-d129801e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d129162e94-false-d129832e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(representedOrganization1): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4 AfdelingSpecialismeCodelijst (2020-09-01T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d129162e99-false-d129854e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d129162e104-false-d129872e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('COMP')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('RSON')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('SPRT')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'SPRT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9175']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9175']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('COMP')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('SUBJ')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@inversionInd) = ('true')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]"
         id="d40e5256-false-d130030e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('COMP')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:sequenceNumber) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:sequenceNumber is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:sequenceNumber) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:sequenceNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &gt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="count(cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]) &lt;= 1">(MPCDAToedieningsafspraakSchemaInhoud4): element cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:sequenceNumber"
         id="d40e5263-false-d130104e0">
      <extends rule="INT"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(MPCDAToedieningsafspraakSchemaInhoud4): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(MPCDAToedieningsafspraakSchemaInhoud4): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="@value">(MPCDAToedieningsafspraakSchemaInhoud4): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(@value) or matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')">(MPCDAToedieningsafspraakSchemaInhoud4): attribuut @value is geen geldig int getal 
<value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('COMP')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('REFR')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9326
Context: *[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]
Item: (MPCDAToedieningsafspraakSchemaInhoud4)
-->
   <rule fpi="RULC-1"
         context="*[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@inversionInd) = ('true')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="string(@typeCode) = ('COMP')">(MPCDAToedieningsafspraakSchemaInhoud4): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
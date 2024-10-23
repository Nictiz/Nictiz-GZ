<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Name: MP CDA Voorstel Verstrekkingsverzoek
Description: Voorstel verstrekkingsverzoek voor medicatieproces. CDA.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Voorstel Verstrekkingsverzoek</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]
Item: (MPCDAVoorstelVV)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]"
         id="d40e2250-false-d15998e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@classCode) = ('SPLY')">(MPCDAVoorstelVV): de waarde van classCode MOET 'SPLY' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@moodCode) = ('PRP')">(MPCDAVoorstelVV): de waarde van moodCode MOET 'PRP' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']) &gt;= 1">(MPCDAVoorstelVV): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']) &lt;= 1">(MPCDAVoorstelVV): element cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:id) &lt;= 1">(MPCDAVoorstelVV): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &gt;= 1">(MPCDAVoorstelVV): element cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]) &lt;= 1">(MPCDAVoorstelVV): element cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:repeatNumber) &lt;= 1">(MPCDAVoorstelVV): element cda:repeatNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:quantity) &lt;= 1">(MPCDAVoorstelVV): element cda:quantity komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:expectedUseTime) &lt;= 1">(MPCDAVoorstelVV): element cda:expectedUseTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]) &gt;= 1">(MPCDAVoorstelVV): element cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]) &lt;= 1">(MPCDAVoorstelVV): element cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:performer[cda:assignedEntity]) &lt;= 1">(MPCDAVoorstelVV): element cda:performer[cda:assignedEntity] komt te vaak voor [max 1x].</assert>
      <let name="elmcount"
           value="count(hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="$elmcount &lt;= 1">(MPCDAVoorstelVV): keuze (hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]  of  hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]) &lt;= 1">(MPCDAVoorstelVV): element hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]) &lt;= 1">(MPCDAVoorstelVV): element hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]) &lt;= 1">(MPCDAVoorstelVV): element cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]) &lt;= 1">(MPCDAVoorstelVV): element cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]) &lt;= 1">(MPCDAVoorstelVV): element cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']"
         id="d40e2260-false-d16211e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9131')">(MPCDAVoorstelVV): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:id
Item: (MPCDAVoorstelVV)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor]"
         id="d40e2271-false-d16239e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@nullFlavor or (@code='52711000146108' and @codeSystem='2.16.840.1.113883.6.96')">(MPCDAVoorstelVV): de elementwaarde MOET een zijn van 'code '52711000146108' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPCDAVoorstelVV): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPCDAVoorstelVV): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:repeatNumber
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:repeatNumber"
         id="d40e2295-false-d16271e0">
      <extends rule="INT.NONNEG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:INT" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(MPCDAVoorstelVV): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@value">(MPCDAVoorstelVV): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@value) or matches(string(@value), '^-?[1-9]\d*$|^+?\d*$')">(MPCDAVoorstelVV): attribuut @value is geen geldig int getal 
<value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity">
      <extends rule="d16318e0-false-d16328e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPCDAVoorstelVV): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9165
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity
Item: (DispenseQuantUnitAndTranslation)
-->
   <rule fpi="RULC-1"
         id="d16318e0-false-d16328e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(DispenseQuantUnitAndTranslation): attribuut @unit MOET datatype 'cs' hebben  - '
<value-of select="@unit"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="count(hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']) &lt;= 1">(DispenseQuantUnitAndTranslation): element hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] komt te vaak voor [max 1x].</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="not(@unit) or matches(string(@unit),'^1$|^[umcdk]?[mgl]+$|^\[drp\]$|^\[tsp_us\]$|^\[tbs_us\]$|^\[iU\]$')">(DispenseQuantUnitAndTranslation): De gevonden UCUM eenheid '
<value-of select="@unit"/>' behoort niet tot de meest gebruikte. Is de UCUM eenheid correct?</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">(DispenseQuantUnitAndTranslation): Vertaling naar de G-Standaard basiseenheden (tabel 2 van de thesauraus) is verplicht.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2' and @value=../@value]">(DispenseQuantUnitAndTranslation): translation/@value in G-Standaard basiseenheden tabel 2 is niet gelijk aan dose(Check)Quantity/@value, controleer of dit klopt.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="count(hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12']) &lt;= 1">(DispenseQuantUnitAndTranslation): element hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9021
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']
Item: (QuantUnitAndTranslation)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">
      <extends rule="PQR"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQR')">(QuantUnitAndTranslation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQR" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@value">(QuantUnitAndTranslation): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(QuantUnitAndTranslation): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@code">(QuantUnitAndTranslation): attribute @code MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(QuantUnitAndTranslation): attribuut @code MOET datatype 'cs' hebben  - '
<value-of select="@code"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.4.1.900.2')">(QuantUnitAndTranslation): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.4.1.900.2' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@displayName">(QuantUnitAndTranslation): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9165
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12']
Item: (DispenseQuantUnitAndTranslation)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12']">
      <extends rule="PQR"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQR')">(DispenseQuantUnitAndTranslation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQR" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9165-2017-01-18T000000.html"
              test="@nullFlavor or (@codeSystem='2.16.840.1.113883.2.4.4.12')">(DispenseQuantUnitAndTranslation): de elementwaarde MOET een zijn van 'codeSystem '2.16.840.1.113883.2.4.4.12''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime"
         id="d40e2311-false-d16426e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:low) &lt;= 1">(MPCDAVoorstelVV): element cda:low komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:width) &lt;= 1">(MPCDAVoorstelVV): element cda:width komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:high) &lt;= 1">(MPCDAVoorstelVV): element cda:high komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:low
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:low"
         id="d40e2319-false-d16466e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(*)">(MPCDAVoorstelVV): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@value">(MPCDAVoorstelVV): attribute @value MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:width
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:width"
         id="d40e2324-false-d16488e0">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPCDAVoorstelVV): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(MPCDAVoorstelVV): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@value">(MPCDAVoorstelVV): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@unit">(MPCDAVoorstelVV): attribute @unit MOET aanwezig zijn.</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@unit),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(@unit) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.25-2016-07-01T160454.xml')/*/valueSet/conceptList/concept/@code))])">(MPCDAVoorstelVV): de waarde van unit MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.20.77.11.25' Time a tot h PQ (UCUM) - without Month (2016-07-01T16:04:54).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:high
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/cda:high"
         id="d40e2337-false-d16530e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="not(*)">(MPCDAVoorstelVV): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="@value">(MPCDAVoorstelVV): attribute @value MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]
Item: (MPCDAVoorstelVV)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]"
         id="d40e2345-false-d16590e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:assignedEntity) &gt;= 1">(MPCDAVoorstelVV): element cda:assignedEntity is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(cda:assignedEntity) &lt;= 1">(MPCDAVoorstelVV): element cda:assignedEntity komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity"
         id="d40e2350-false-d16646e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(MPCDAVoorstelVV): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(MPCDAVoorstelVV): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="count(hl7:representedOrganization) &lt;= 1">(MPCDAVoorstelVV): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:id[@nullFlavor = 'NI']
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:id[@nullFlavor = 'NI']"
         id="d40e2352-false-d16699e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAVoorstelVV): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@nullFlavor) = ('NI')">(MPCDAVoorstelVV): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization"
         id="d16712e29-false-d16734e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d16834e9-false-d16845e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d16834e27-false-d16874e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d16834e45-false-d16903e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d16834e63-false-d16930e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:name"
         id="d16712e38-false-d16943e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d16712e50-false-d16954e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d16712e59-false-d17006e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr"
         id="d16712e67-false-d17061e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d17177e50-false-d17185e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d17177e62-false-d17198e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d17177e77-false-d17211e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d17177e117-false-d17224e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d17177e130-false-d17245e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d17177e161-false-d17260e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d17177e170-false-d17273e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d17177e179-false-d17286e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d17177e216-false-d17301e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d17177e233-false-d17314e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d16712e72-false-d17329e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d16712e83-false-d17351e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d16712e94-false-d17382e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d16712e99-false-d17404e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d16712e104-false-d17422e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9187
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]
Item: (MPCDAauthorZorgvPatient)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9187
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]
Item: (MPCDAauthorZorgvPatient)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]"
         id="d17429e68-false-d17438e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgvPatient): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgvPatient): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgvPatient): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:assignedAuthor) &gt;= 1">(MPCDAauthorZorgvPatient): element hl7:assignedAuthor is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:assignedAuthor) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:assignedAuthor komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d17539e26-false-d17549e0">
      <extends rule="CD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CD')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(author): de elementwaarde MOET een zijn van '2.16.840.1.113883.1.11.10267 ParticipationFunction (DYNAMISCH)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:time"
         id="d17539e31-false-d17573e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(author): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(*)">(author): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.32
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (author)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor"
         id="d17539e33-false-d17629e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(author): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.3.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.3.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[@root = '2.16.528.1.1007.5.1']) &lt;= 1">(author): element hl7:id[@root = '2.16.528.1.1007.5.1'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]) &lt;= 1">(author): element hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(author): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:addr) &lt;= 1">(author): element hl7:addr komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:assignedPerson) &lt;= 1">(author): element hl7:assignedPerson komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="count(hl7:representedOrganization) &lt;= 1">(author): element hl7:representedOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor
Item: (zorgverleneridentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.3.1']"
         id="d17768e9-false-d17779e0">
      <extends rule="II.NL.UZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.3.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.3.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d17768e26-false-d17808e0">
      <extends rule="II.NL.AGB"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.840.1.113883.2.4.6.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[@root = '2.16.528.1.1007.5.1']"
         id="d17768e43-false-d17837e0">
      <extends rule="II.NL.BIG"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.528.1.1007.5.1')">(zorgverleneridentificatienummer): de waarde van root MOET '2.16.528.1.1007.5.1' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="@extension">(zorgverleneridentificatienummer): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="not(@extension) or string-length(@extension)&gt;0">(zorgverleneridentificatienummer): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.30
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]
Item: (zorgverleneridentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))]"
         id="d17768e60-false-d17864e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgverleneridentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d17766e16-false-d17881e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(zorgverlener-assigned-contents): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7 SpecialismeAGBCodelijst (2017-12-31T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6 SpecialismeUZICodelijst (2017-12-31T00:00:00)'.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr"
         id="d17766e26-false-d17918e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:streetName) &lt;= 1">(zorgverlener-assigned-contents): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(zorgverlener-assigned-contents): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(zorgverlener-assigned-contents): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(zorgverlener-assigned-contents): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(zorgverlener-assigned-contents): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:county) &lt;= 1">(zorgverlener-assigned-contents): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:city) &lt;= 1">(zorgverlener-assigned-contents): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:country) &lt;= 1">(zorgverlener-assigned-contents): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:unitID) &lt;= 1">(zorgverlener-assigned-contents): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(zorgverlener-assigned-contents): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:streetName"
         id="d18034e50-false-d18042e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:houseNumber"
         id="d18034e62-false-d18055e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:buildingNumberSuffix"
         id="d18034e77-false-d18068e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:additionalLocator"
         id="d18034e117-false-d18081e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:postalCode"
         id="d18034e130-false-d18102e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:county"
         id="d18034e161-false-d18117e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:city"
         id="d18034e170-false-d18130e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:country"
         id="d18034e179-false-d18143e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:unitID"
         id="d18034e216-false-d18158e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/hl7:useablePeriod"
         id="d18034e233-false-d18171e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]"
         id="d17766e34-false-d18182e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]
Item: (zorgverlener-assigned-contents)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d17766e42-false-d18234e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(zorgverlener-assigned-contents): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="@value">(zorgverlener-assigned-contents): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(zorgverlener-assigned-contents): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(zorgverlener-assigned-contents): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.37
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson
Item: (zorgverlener-assigned-contents)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization"
         id="d18284e29-false-d18306e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization
Item: (zorgaanbiederidentificatienummer)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.53
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.528.1.1007.3.3']"
         id="d18406e9-false-d18417e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.1']"
         id="d18406e27-false-d18446e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[@root = '2.16.840.1.113883.2.4.6.8']"
         id="d18406e45-false-d18475e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]
Item: (zorgaanbiederidentificatienummer)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]"
         id="d18406e63-false-d18502e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.53-2019-04-07T143608.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(zorgaanbiederidentificatienummer): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:name"
         id="d18284e38-false-d18515e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]"
         id="d18284e50-false-d18526e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d18284e59-false-d18578e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr"
         id="d18284e67-false-d18633e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:streetName"
         id="d18749e50-false-d18757e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:houseNumber"
         id="d18749e62-false-d18770e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:buildingNumberSuffix"
         id="d18749e77-false-d18783e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:additionalLocator"
         id="d18749e117-false-d18796e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:postalCode"
         id="d18749e130-false-d18817e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:county"
         id="d18749e161-false-d18832e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:city"
         id="d18749e170-false-d18845e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:country"
         id="d18749e179-false-d18858e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:unitID"
         id="d18749e216-false-d18873e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/hl7:useablePeriod"
         id="d18749e233-false-d18886e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d18284e72-false-d18901e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf"
         id="d18284e83-false-d18923e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(representedOrganization1): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:wholeOrganization) &lt;= 1">(representedOrganization1): element hl7:wholeOrganization komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d18284e94-false-d18954e0">
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
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization"
         id="d18284e99-false-d18976e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="count(hl7:name) &lt;= 1">(representedOrganization1): element hl7:name komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.121.10.33
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name
Item: (representedOrganization1)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/hl7:name"
         id="d18284e104-false-d18994e0">
      <extends rule="ON"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ON')">(representedOrganization1): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ON" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9187
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]
Item: (MPCDAauthorZorgvPatient)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]"
         id="d17429e76-false-d19005e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="string(@typeCode) = ('AUT') or not(@typeCode)">(MPCDAauthorZorgvPatient): de waarde van typeCode MOET 'AUT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="string(@contextControlCode) = ('OP') or not(@contextControlCode)">(MPCDAauthorZorgvPatient): de waarde van contextControlCode MOET 'OP' zijn. Gevonden: "
<value-of select="@contextControlCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:time) &gt;= 1">(MPCDAauthorZorgvPatient): element hl7:time is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:time) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:assignedAuthor[hl7:code/@code='ONESELF']) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:assignedAuthor[hl7:code/@code='ONESELF'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9187
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time
Item: (MPCDAauthorZorgvPatient)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:time"
         id="d17429e85-false-d19048e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAauthorZorgvPatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(*)">(MPCDAauthorZorgvPatient): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9187
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (MPCDAauthorZorgvPatient)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']"
         id="d17429e87-false-d19063e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(MPCDAauthorZorgvPatient): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <let name="elmcount"
           value="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="$elmcount &gt;= 1">(MPCDAauthorZorgvPatient): keuze (hl7:id[@root='2.16.840.1.113883.2.4.6.3']  of  hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]  of  hl7:id[@nullFlavor]) bevat te weinig elementen [min 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:id[@root='2.16.840.1.113883.2.4.6.3']) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:id[@root='2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:id[@nullFlavor]) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:id[@nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(MPCDAauthorZorgvPatient): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(MPCDAauthorZorgvPatient): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']
Item: (CDAauthInfPat)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@root='2.16.840.1.113883.2.4.6.3']"
         id="d19122e16-false-d19131e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')]"
         id="d19122e22-false-d19142e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@root">(CDAauthInfPat): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@root) or (string-length(@root) &gt; 0 and not(matches(@root,'\s')))">(CDAauthInfPat): attribuut @root MOET datatype 'cs' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@extension">(CDAauthInfPat): attribute @extension MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@extension) or (string-length(@extension) &gt; 0 and not(matches(@extension,'\s')))">(CDAauthInfPat): attribuut @extension MOET datatype 'cs' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:id[@nullFlavor]"
         id="d19122e32-false-d19173e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor">(CDAauthInfPat): attribute @nullFlavor MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(CDAauthInfPat): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.7.10.52
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (CDAauthInfPat)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d19122e43-false-d19196e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CDAauthInfPat): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.52-2017-08-25T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(CDAauthInfPat): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]">
      <extends rule="d19234e0-false-d19240e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('DST')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'DST' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9091
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]
Item: (MPCDAAfleverlocatie)
-->
   <rule fpi="RULC-1"
         id="d19234e0-false-d19240e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="count(hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]) &gt;= 1">(MPCDAAfleverlocatie): element hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="count(hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]) &lt;= 1">(MPCDAAfleverlocatie): element hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9091
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]
Item: (MPCDAAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="string(@classCode) = ('SDLOC') or not(@classCode)">(MPCDAAfleverlocatie): de waarde van classCode MOET 'SDLOC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']) &gt;= 1">(MPCDAAfleverlocatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']) &lt;= 1">(MPCDAAfleverlocatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9091
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']
Item: (MPCDAAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9091-2016-06-21T153127.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9091')">(MPCDAAfleverlocatie): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr">
      <extends rule="AD"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:streetName) &lt;= 1">(AdresAfleverlocatie): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:houseNumber) &lt;= 1">(AdresAfleverlocatie): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(AdresAfleverlocatie): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:additionalLocator) &lt;= 1">(AdresAfleverlocatie): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:postalCode) &lt;= 1">(AdresAfleverlocatie): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:city) &lt;= 1">(AdresAfleverlocatie): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(AdresAfleverlocatie): element hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="count(hl7:desc) &lt;= 1">(AdresAfleverlocatie): element hl7:desc komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:streetName
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:streetName">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:houseNumber
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:houseNumber">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:buildingNumberSuffix
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:buildingNumberSuffix">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:additionalLocator
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:additionalLocator">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="text()='to' or text()='by'">(AdresAfleverlocatie): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:postalCode
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:postalCode">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SC')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:city
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:city">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="SC"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'SC')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:SC" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="@nullFlavor or not(@code) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(AdresAfleverlocatie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.101.11.13 Land (2013-03-25T14:13:00)'.</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(AdresAfleverlocatie): element hl7:country is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9092
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:desc
Item: (AdresAfleverlocatie)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/hl7:desc">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AdresAfleverlocatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('COMP')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('COMP')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('SUBJ')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'SUBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@inversionInd) = ('true')">(MPCDAVoorstelVV): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('REFR')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'REFR' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9131
Context: *[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]
Item: (MPCDAVoorstelVV)
-->
   <rule fpi="RULC-1"
         context="*[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@inversionInd) = ('true')">(MPCDAVoorstelVV): de waarde van inversionInd MOET 'true' zijn. Gevonden: "
<value-of select="@inversionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9131-2016-07-14T202241.html"
              test="string(@typeCode) = ('COMP')">(MPCDAVoorstelVV): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
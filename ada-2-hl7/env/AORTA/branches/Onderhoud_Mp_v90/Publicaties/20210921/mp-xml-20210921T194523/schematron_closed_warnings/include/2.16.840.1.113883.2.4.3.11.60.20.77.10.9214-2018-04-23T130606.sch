<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Name: MP Voorstel Verstrekkingsverzoek identificatie
Description: Identificatie van het voorstel verstrekkingsverzoek
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP Voorstel Verstrekkingsverzoek identificatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]"
         id="d40e3574-false-d110854e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]) &gt;= 1">(MPVVVIdentificatie): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]) &lt;= 1">(MPVVVIdentificatie): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]"
         id="d40e3593-false-d110877e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="string(@classCode) = ('CLUSTER')">(MPVVVIdentificatie): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="string(@moodCode) = ('EVN')">(MPVVVIdentificatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']) &gt;= 1">(MPVVVIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']) &lt;= 1">(MPVVVIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:id) &lt;= 1">(MPVVVIdentificatie): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]) &gt;= 1">(MPVVVIdentificatie): element hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]) &lt;= 1">(MPVVVIdentificatie): element hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:statusCode) &gt;= 1">(MPVVVIdentificatie): element hl7:statusCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="count(hl7:statusCode) &lt;= 1">(MPVVVIdentificatie): element hl7:statusCode komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']"
         id="d40e3599-false-d110953e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVVVIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9214')">(MPVVVIdentificatie): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:id
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:id"
         id="d40e3604-false-d110972e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVVVIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]"
         id="d40e3610-false-d110986e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="string(@code) = ('104')">(MPVVVIdentificatie): de waarde van code MOET '104' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.3.11.60.20.77.4')">(MPVVVIdentificatie): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.3.11.60.20.77.4' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:statusCode
Item: (MPVVVIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9214']]/hl7:statusCode"
         id="d40e3630-false-d111009e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="not(@code) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.15933-2014-03-26T000000.xml')/*/valueSet/conceptList/concept/@code))])">(MPVVVIdentificatie): de waarde van code MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.15933' ActStatus (2014-03-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9214-2018-04-23T130606.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPVVVIdentificatie): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
</pattern>
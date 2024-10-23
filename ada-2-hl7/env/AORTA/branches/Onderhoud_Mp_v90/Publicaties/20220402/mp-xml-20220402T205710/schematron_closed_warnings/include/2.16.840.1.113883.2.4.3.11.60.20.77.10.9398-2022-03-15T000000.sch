<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Name: MP Voorstel Medicatieafspraak identificatie
Description: Identificatie van de voorstel medicatieafspraak
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP Voorstel Medicatieafspraak identificatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]"
         id="d42e11550-false-d473006e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]) &gt;= 1">(MPVMAIdentificatie): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]) &lt;= 1">(MPVMAIdentificatie): element hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]"
         id="d42e11562-false-d473023e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="string(@classCode) = ('CLUSTER')">(MPVMAIdentificatie): de waarde van classCode MOET 'CLUSTER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="string(@moodCode) = ('EVN')">(MPVMAIdentificatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']) &gt;= 1">(MPVMAIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']) &lt;= 1">(MPVMAIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:id) &lt;= 1">(MPVMAIdentificatie): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]) &gt;= 1">(MPVMAIdentificatie): element hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]) &lt;= 1">(MPVMAIdentificatie): element hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:statusCode) &gt;= 1">(MPVMAIdentificatie): element hl7:statusCode is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="count(hl7:statusCode) &lt;= 1">(MPVMAIdentificatie): element hl7:statusCode komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']"
         id="d42e11568-false-d473072e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVMAIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9398')">(MPVMAIdentificatie): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:id
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:id"
         id="d42e11573-false-d473086e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVMAIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:code[(@code = '107' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')]"
         id="d42e11579-false-d473097e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="string(@code) = ('107')">(MPVMAIdentificatie): de waarde van code MOET '107' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.3.11.60.20.77.4')">(MPVMAIdentificatie): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.3.11.60.20.77.4' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9398
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:statusCode
Item: (MPVMAIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9398']]/hl7:statusCode"
         id="d42e11599-false-d473114e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@code),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="not(@code) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.1.11.15933-2014-03-26T000000.xml')/*/valueSet/conceptList/concept/@code))])">(MPVMAIdentificatie): de waarde van code MOET worden gekozen uit waardelijst '2.16.840.1.113883.1.11.15933' ActStatus (2014-03-26T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9398-2022-03-15T000000.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPVMAIdentificatie): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
</pattern>
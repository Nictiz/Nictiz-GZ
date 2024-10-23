<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901099
Name: Reden verwijzing (bevalling)
Description: Reden verwijzing (bevalling)
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Reden verwijzing (bevalling)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]
Item: (RedenVerwBev233)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]"
         id="d40e10482-false-d73212e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@classCode) = ('CONTAINER')">(RedenVerwBev233): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwBev233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']) &gt;= 1">(RedenVerwBev233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']) &lt;= 1">(RedenVerwBev233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(RedenVerwBev233): element hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(RedenVerwBev233): element hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]) &lt;= 1">(RedenVerwBev233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']"
         id="d40e10488-false-d73395e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(RedenVerwBev233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901099')">(RedenVerwBev233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901099' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e10493-false-d73414e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RedenVerwBev233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="@nullFlavor or (@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')">(RedenVerwBev233): de elementwaarde MOET een zijn van 'code '236973005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901007
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]
Item: (PPROM)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901007
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]
Item: (PPROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="string(@classCode) = ('OBS')">(PPROM): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="string(@moodCode) = ('EVN')">(PPROM): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']) &gt;= 1">(PPROM): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']) &lt;= 1">(PPROM): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PPROM): element hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PPROM): element hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(PPROM): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(PPROM): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901007
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']
Item: (PPROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PPROM): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901007')">(PPROM): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901007' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901007
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PPROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:code[(@code = '312974005' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PPROM): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="@nullFlavor or (@code='312974005' and @codeSystem='2.16.840.1.113883.6.96')">(PPROM): de elementwaarde MOET een zijn van 'code '312974005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901007
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (PPROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901007']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901007-2016-12-02T173503.html"
              test="@xsi:type">(PPROM): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901008
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]
Item: (PROM)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901008
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]
Item: (PROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="string(@classCode) = ('OBS')">(PROM): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="string(@moodCode) = ('EVN')">(PROM): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']) &gt;= 1">(PROM): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']) &lt;= 1">(PROM): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PROM): element hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PROM): element hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(PROM): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(PROM): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901008
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']
Item: (PROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PROM): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901008')">(PROM): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901008' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901008
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:code[(@code = '44223004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PROM): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="@nullFlavor or (@code='44223004' and @codeSystem='2.16.840.1.113883.6.96')">(PROM): de elementwaarde MOET een zijn van 'code '44223004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901008
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (PROM)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901008']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901008-2016-12-02T173654.html"
              test="@xsi:type">(PROM): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901009
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]
Item: (Koorts)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901009
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]
Item: (Koorts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="string(@classCode) = ('OBS')">(Koorts): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="string(@moodCode) = ('EVN')">(Koorts): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']) &gt;= 1">(Koorts): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']) &lt;= 1">(Koorts): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Koorts): element hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Koorts): element hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Koorts): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Koorts): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901009
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']
Item: (Koorts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Koorts): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901009')">(Koorts): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901009' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901009
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Koorts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:code[(@code = '386661006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Koorts): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="@nullFlavor or (@code='386661006' and @codeSystem='2.16.840.1.113883.6.96')">(Koorts): de elementwaarde MOET een zijn van 'code '386661006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901009
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Koorts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901009']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901009-2016-12-02T173856.html"
              test="@xsi:type">(Koorts): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901010
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]
Item: (Nietvorderendeontsluiting)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901010
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]
Item: (Nietvorderendeontsluiting)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="string(@classCode) = ('OBS')">(Nietvorderendeontsluiting): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="string(@moodCode) = ('EVN')">(Nietvorderendeontsluiting): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']) &gt;= 1">(Nietvorderendeontsluiting): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']) &lt;= 1">(Nietvorderendeontsluiting): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Nietvorderendeontsluiting): element hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Nietvorderendeontsluiting): element hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Nietvorderendeontsluiting): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Nietvorderendeontsluiting): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901010
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']
Item: (Nietvorderendeontsluiting)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Nietvorderendeontsluiting): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901010')">(Nietvorderendeontsluiting): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901010' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901010
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Nietvorderendeontsluiting)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:code[(@code = '237320005' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Nietvorderendeontsluiting): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="@nullFlavor or (@code='237320005' and @codeSystem='2.16.840.1.113883.6.96')">(Nietvorderendeontsluiting): de elementwaarde MOET een zijn van 'code '237320005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901010
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Nietvorderendeontsluiting)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901010']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901010-2016-12-02T174017.html"
              test="@xsi:type">(Nietvorderendeontsluiting): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901011
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]
Item: (Nietvorderendeuitdrijving)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901011
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]
Item: (Nietvorderendeuitdrijving)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="string(@classCode) = ('OBS')">(Nietvorderendeuitdrijving): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="string(@moodCode) = ('EVN')">(Nietvorderendeuitdrijving): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']) &gt;= 1">(Nietvorderendeuitdrijving): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']) &lt;= 1">(Nietvorderendeuitdrijving): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Nietvorderendeuitdrijving): element hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Nietvorderendeuitdrijving): element hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Nietvorderendeuitdrijving): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Nietvorderendeuitdrijving): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901011
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']
Item: (Nietvorderendeuitdrijving)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Nietvorderendeuitdrijving): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901011')">(Nietvorderendeuitdrijving): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901011' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901011
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Nietvorderendeuitdrijving)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:code[(@code = '249166003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Nietvorderendeuitdrijving): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="@nullFlavor or (@code='249166003' and @codeSystem='2.16.840.1.113883.6.96')">(Nietvorderendeuitdrijving): de elementwaarde MOET een zijn van 'code '249166003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901011
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Nietvorderendeuitdrijving)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901011']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901011-2016-12-02T174122.html"
              test="@xsi:type">(Nietvorderendeuitdrijving): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901012
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]
Item: (Verdenkingfoetalenood)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901012
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]
Item: (Verdenkingfoetalenood)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="string(@classCode) = ('OBS')">(Verdenkingfoetalenood): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="string(@moodCode) = ('EVN')">(Verdenkingfoetalenood): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']) &gt;= 1">(Verdenkingfoetalenood): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']) &lt;= 1">(Verdenkingfoetalenood): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Verdenkingfoetalenood): element hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Verdenkingfoetalenood): element hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Verdenkingfoetalenood): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Verdenkingfoetalenood): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901012
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']
Item: (Verdenkingfoetalenood)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Verdenkingfoetalenood): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901012')">(Verdenkingfoetalenood): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901012' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901012
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Verdenkingfoetalenood)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:code[(@code = '609415007:246090004=12867002' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Verdenkingfoetalenood): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="@nullFlavor or (@code='609415007:246090004=12867002' and @codeSystem='2.16.840.1.113883.6.96')">(Verdenkingfoetalenood): de elementwaarde MOET een zijn van 'code '609415007:246090004=12867002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901012
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Verdenkingfoetalenood)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901012']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901012-2016-12-02T174235.html"
              test="@xsi:type">(Verdenkingfoetalenood): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]
Item: (IUVD)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="string(@classCode) = ('OBS')">(IUVD): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="string(@moodCode) = ('EVN')">(IUVD): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']) &gt;= 1">(IUVD): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']) &lt;= 1">(IUVD): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(IUVD): element hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(IUVD): element hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]) &gt;= 1">(IUVD): element hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]) &lt;= 1">(IUVD): element hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(IUVD): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(IUVD): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(IUVD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900918')">(IUVD): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900918' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IUVD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="@nullFlavor or (@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')">(IUVD): de elementwaarde MOET een zijn van 'code '59291004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IUVD): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="string(@code) = ('U')">(IUVD): de waarde van code MOET 'U' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.5.1053')">(IUVD): de waarde van codeSystem MOET '2.16.840.1.113883.5.1053' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="@xsi:type">(IUVD): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900918-2016-12-02T160924.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(IUVD): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901013
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]
Item: (Vastzittendeplacenta)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901013
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]
Item: (Vastzittendeplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="string(@classCode) = ('OBS')">(Vastzittendeplacenta): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="string(@moodCode) = ('EVN')">(Vastzittendeplacenta): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']) &gt;= 1">(Vastzittendeplacenta): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']) &lt;= 1">(Vastzittendeplacenta): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Vastzittendeplacenta): element hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Vastzittendeplacenta): element hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Vastzittendeplacenta): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Vastzittendeplacenta): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901013
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']
Item: (Vastzittendeplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Vastzittendeplacenta): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901013')">(Vastzittendeplacenta): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901013' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901013
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Vastzittendeplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:code[(@code = '109894007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Vastzittendeplacenta): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="@nullFlavor or (@code='109894007' and @codeSystem='2.16.840.1.113883.6.96')">(Vastzittendeplacenta): de elementwaarde MOET een zijn van 'code '109894007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901013
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Vastzittendeplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901013']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901013-2016-12-02T174410.html"
              test="@xsi:type">(Vastzittendeplacenta): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]
Item: (FluxusPostpartum)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]
Item: (FluxusPostpartum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@classCode) = ('OBS')">(FluxusPostpartum): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@moodCode) = ('EVN')">(FluxusPostpartum): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']) &gt;= 1">(FluxusPostpartum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']) &lt;= 1">(FluxusPostpartum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(FluxusPostpartum): element hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(FluxusPostpartum): element hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(FluxusPostpartum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(FluxusPostpartum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']
Item: (FluxusPostpartum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(FluxusPostpartum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901054')">(FluxusPostpartum): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901054' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (FluxusPostpartum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:code[(@code = '47821001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(FluxusPostpartum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="@nullFlavor or (@code='47821001' and @codeSystem='2.16.840.1.113883.6.96')">(FluxusPostpartum): de elementwaarde MOET een zijn van 'code '47821001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901054
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (FluxusPostpartum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901054']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901054-2016-12-02T165703.html"
              test="@xsi:type">(FluxusPostpartum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901099
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]
Item: (RedenVerwBev233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwBev233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwBev233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901254
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]
Item: (BehoeftePijnBestr)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901254
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]
Item: (BehoeftePijnBestr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="string(@classCode) = ('OBS')">(BehoeftePijnBestr): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="string(@moodCode) = ('EVN')">(BehoeftePijnBestr): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']) &gt;= 1">(BehoeftePijnBestr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']) &lt;= 1">(BehoeftePijnBestr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(BehoeftePijnBestr): element hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(BehoeftePijnBestr): element hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(BehoeftePijnBestr): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(BehoeftePijnBestr): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901254
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']
Item: (BehoeftePijnBestr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BehoeftePijnBestr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901254')">(BehoeftePijnBestr): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901254' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901254
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (BehoeftePijnBestr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:code[(@code = '30411000146101' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BehoeftePijnBestr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="@nullFlavor or (@code='30411000146101' and @codeSystem='2.16.840.1.113883.6.96')">(BehoeftePijnBestr): de elementwaarde MOET een zijn van 'code '30411000146101' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="@displayName">(BehoeftePijnBestr): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901254
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (BehoeftePijnBestr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901099']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901254']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901254-2022-01-18T000000.html"
              test="@xsi:type">(BehoeftePijnBestr): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
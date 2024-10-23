<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901100
Name: Reden verwijzing (deze zwangerschap)
Description: Reden verwijzing (deze zwangerschap)
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Reden verwijzing (deze zwangerschap)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]
Item: (RedenVerwZw233)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]"
         id="d40e10662-false-d75331e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@classCode) = ('CONTAINER')">(RedenVerwZw233): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@moodCode) = ('EVN')">(RedenVerwZw233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']) &gt;= 1">(RedenVerwZw233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']) &lt;= 1">(RedenVerwZw233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(RedenVerwZw233): element hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(RedenVerwZw233): element hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]) &lt;= 1">(RedenVerwZw233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']"
         id="d40e10668-false-d75591e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(RedenVerwZw233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901100')">(RedenVerwZw233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901100' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:code[(@code = '364320009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e10673-false-d75610e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RedenVerwZw233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="@nullFlavor or (@code='364320009' and @codeSystem='2.16.840.1.113883.6.96')">(RedenVerwZw233): de elementwaarde MOET een zijn van 'code '364320009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (Gynaecologischeaandoening)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@classCode) = ('OBS')">(Gynaecologischeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@moodCode) = ('EVN')">(Gynaecologischeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Gynaecologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Gynaecologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &gt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &lt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Gynaecologischeaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900954')">(Gynaecologischeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900954' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or (@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van 'code '310789003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Gynaecologischeaandoening): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@xsi:type">(Gynaecologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (Bloedverlies)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@classCode) = ('OBS')">(Bloedverlies): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@moodCode) = ('EVN')">(Bloedverlies): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']) &gt;= 1">(Bloedverlies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']) &lt;= 1">(Bloedverlies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Bloedverlies): element hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Bloedverlies): element hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Bloedverlies): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Bloedverlies): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Bloedverlies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900967')">(Bloedverlies): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900967' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Bloedverlies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@nullFlavor or (@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')">(Bloedverlies): de elementwaarde MOET een zijn van 'code '131148009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@xsi:type">(Bloedverlies): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]
Item: (Partielemola)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]
Item: (Partielemola)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@classCode) = ('OBS')">(Partielemola): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@moodCode) = ('EVN')">(Partielemola): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']) &gt;= 1">(Partielemola): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']) &lt;= 1">(Partielemola): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Partielemola): element hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Partielemola): element hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Partielemola): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Partielemola): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']
Item: (Partielemola)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Partielemola): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901005')">(Partielemola): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901005' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Partielemola)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:code[(@code = 'MolaPartieelIntacteZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Partielemola): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="@nullFlavor or (@code='MolaPartieelIntacteZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Partielemola): de elementwaarde MOET een zijn van 'code 'MolaPartieelIntacteZw' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901005
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Partielemola)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901005']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901005-2016-12-02T142628.html"
              test="@xsi:type">(Partielemola): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (Cervixinsufficientie)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@classCode) = ('OBS')">(Cervixinsufficientie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@moodCode) = ('EVN')">(Cervixinsufficientie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']) &gt;= 1">(Cervixinsufficientie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']) &lt;= 1">(Cervixinsufficientie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Cervixinsufficientie): element hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Cervixinsufficientie): element hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Cervixinsufficientie): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Cervixinsufficientie): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Cervixinsufficientie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900968')">(Cervixinsufficientie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900968' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Cervixinsufficientie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@nullFlavor or (@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')">(Cervixinsufficientie): de elementwaarde MOET een zijn van 'code '17382005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@xsi:type">(Cervixinsufficientie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (Infectie)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@classCode) = ('OBS')">(Infectie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@moodCode) = ('EVN')">(Infectie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']) &gt;= 1">(Infectie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']) &lt;= 1">(Infectie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Infectie): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Infectie): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Infectie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Infectie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Infectie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900975')">(Infectie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900975' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Infectie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or (@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')">(Infectie): de elementwaarde MOET een zijn van 'code '40733004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Infectie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Infectie): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (DYNAMISCH).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(Infectie): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@xsi:type">(Infectie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (Hyperemesisgravidarum)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@classCode) = ('OBS')">(Hyperemesisgravidarum): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@moodCode) = ('EVN')">(Hyperemesisgravidarum): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']) &gt;= 1">(Hyperemesisgravidarum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']) &lt;= 1">(Hyperemesisgravidarum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Hyperemesisgravidarum): element hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Hyperemesisgravidarum): element hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Hyperemesisgravidarum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Hyperemesisgravidarum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Hyperemesisgravidarum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900969')">(Hyperemesisgravidarum): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900969' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Hyperemesisgravidarum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@nullFlavor or (@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')">(Hyperemesisgravidarum): de elementwaarde MOET een zijn van 'code '14094001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@xsi:type">(Hyperemesisgravidarum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (Hypertensieveaandoening)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@classCode) = ('OBS')">(Hypertensieveaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@moodCode) = ('EVN')">(Hypertensieveaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']) &gt;= 1">(Hypertensieveaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']) &lt;= 1">(Hypertensieveaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Hypertensieveaandoening): element hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Hypertensieveaandoening): element hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Hypertensieveaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Hypertensieveaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Hypertensieveaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900977')">(Hypertensieveaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900977' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Hypertensieveaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or (@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')">(Hypertensieveaandoening): de elementwaarde MOET een zijn van 'code '38341003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Hypertensieveaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.36 Hypertensieve aandoening (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@xsi:type">(Hypertensieveaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (Zwangerschapscholestase)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@classCode) = ('OBS')">(Zwangerschapscholestase): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@moodCode) = ('EVN')">(Zwangerschapscholestase): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']) &gt;= 1">(Zwangerschapscholestase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']) &lt;= 1">(Zwangerschapscholestase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Zwangerschapscholestase): element hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Zwangerschapscholestase): element hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Zwangerschapscholestase): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Zwangerschapscholestase): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zwangerschapscholestase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900971')">(Zwangerschapscholestase): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900971' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zwangerschapscholestase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@nullFlavor or (@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')">(Zwangerschapscholestase): de elementwaarde MOET een zijn van 'code '235888006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@xsi:type">(Zwangerschapscholestase): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (Diabetesgravidarummetinsuline)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@classCode) = ('OBS')">(Diabetesgravidarummetinsuline): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@moodCode) = ('EVN')">(Diabetesgravidarummetinsuline): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Diabetesgravidarummetinsuline): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900978')">(Diabetesgravidarummetinsuline): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900978' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Diabetesgravidarummetinsuline): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@nullFlavor or (@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')">(Diabetesgravidarummetinsuline): de elementwaarde MOET een zijn van 'code '46894009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@xsi:type">(Diabetesgravidarummetinsuline): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]">
      <extends rule="d77163e0-false-d77169e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         id="d77163e0-false-d77169e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]) &lt;= 1">(Afwijkendegroei): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@classCode) = ('OBS')">(Afwijkendegroei): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@moodCode) = ('EVN')">(Afwijkendegroei): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Afwijkendegroei): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']) &gt;= 1">(Afwijkendegroei): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']) &lt;= 1">(Afwijkendegroei): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Afwijkendegroei): element hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Afwijkendegroei): element hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Afwijkendegroei): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Afwijkendegroei): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Afwijkendegroei): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900976')">(Afwijkendegroei): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900976' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Afwijkendegroei): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or (@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')">(Afwijkendegroei): de elementwaarde MOET een zijn van 'code '276604007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Afwijkendegroei): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (2022-04-12T12:05:39)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Afwijkendegroei): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (2022-04-12T12:05:39).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(Afwijkendegroei): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@xsi:type">(Afwijkendegroei): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (Dreigendepartusimmaturus)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@classCode) = ('OBS')">(Dreigendepartusimmaturus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@moodCode) = ('EVN')">(Dreigendepartusimmaturus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']) &gt;= 1">(Dreigendepartusimmaturus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']) &lt;= 1">(Dreigendepartusimmaturus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Dreigendepartusimmaturus): element hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Dreigendepartusimmaturus): element hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Dreigendepartusimmaturus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Dreigendepartusimmaturus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Dreigendepartusimmaturus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900972')">(Dreigendepartusimmaturus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900972' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Dreigendepartusimmaturus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@nullFlavor or (@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusimmaturus): de elementwaarde MOET een zijn van 'code 'PartusImmaturusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@xsi:type">(Dreigendepartusimmaturus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (Dreigendepartusprematurus)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@classCode) = ('OBS')">(Dreigendepartusprematurus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@moodCode) = ('EVN')">(Dreigendepartusprematurus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']) &gt;= 1">(Dreigendepartusprematurus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']) &lt;= 1">(Dreigendepartusprematurus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Dreigendepartusprematurus): element hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Dreigendepartusprematurus): element hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Dreigendepartusprematurus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Dreigendepartusprematurus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Dreigendepartusprematurus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900973')">(Dreigendepartusprematurus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900973' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Dreigendepartusprematurus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@nullFlavor or (@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusprematurus): de elementwaarde MOET een zijn van 'code 'PartusPrematurusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@xsi:type">(Dreigendepartusprematurus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (Abruptioplacentae)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@classCode) = ('OBS')">(Abruptioplacentae): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@moodCode) = ('EVN')">(Abruptioplacentae): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']) &gt;= 1">(Abruptioplacentae): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']) &lt;= 1">(Abruptioplacentae): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Abruptioplacentae): element hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Abruptioplacentae): element hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Abruptioplacentae): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Abruptioplacentae): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Abruptioplacentae): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900974')">(Abruptioplacentae): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900974' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Abruptioplacentae): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@nullFlavor or (@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')">(Abruptioplacentae): de elementwaarde MOET een zijn van 'code '415105001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@xsi:type">(Abruptioplacentae): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901052
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]
Item: (Navelstrengprolaps)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901052
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]
Item: (Navelstrengprolaps)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="string(@classCode) = ('OBS')">(Navelstrengprolaps): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="string(@moodCode) = ('EVN')">(Navelstrengprolaps): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']) &gt;= 1">(Navelstrengprolaps): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']) &lt;= 1">(Navelstrengprolaps): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Navelstrengprolaps): element hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Navelstrengprolaps): element hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Navelstrengprolaps): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Navelstrengprolaps): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901052
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']
Item: (Navelstrengprolaps)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Navelstrengprolaps): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901052')">(Navelstrengprolaps): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901052' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901052
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Navelstrengprolaps)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:code[(@code = '270500004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Navelstrengprolaps): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="@nullFlavor or (@code='270500004' and @codeSystem='2.16.840.1.113883.6.96')">(Navelstrengprolaps): de elementwaarde MOET een zijn van 'code '270500004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901052
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Navelstrengprolaps)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901052']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901052-2016-12-02T154625.html"
              test="@xsi:type">(Navelstrengprolaps): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901053
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]
Item: (Liggingsafwijking)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901053
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]
Item: (Liggingsafwijking)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="string(@classCode) = ('OBS')">(Liggingsafwijking): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="string(@moodCode) = ('EVN')">(Liggingsafwijking): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']) &gt;= 1">(Liggingsafwijking): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']) &lt;= 1">(Liggingsafwijking): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Liggingsafwijking): element hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Liggingsafwijking): element hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Liggingsafwijking): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Liggingsafwijking): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901053
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']
Item: (Liggingsafwijking)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Liggingsafwijking): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901053')">(Liggingsafwijking): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901053' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901053
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Liggingsafwijking)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:code[(@code = '80002007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Liggingsafwijking): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="@nullFlavor or (@code='80002007' and @codeSystem='2.16.840.1.113883.6.96')">(Liggingsafwijking): de elementwaarde MOET een zijn van 'code '80002007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901053
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Liggingsafwijking)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901053']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Liggingsafwijking): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.213 Ligging (afwijkend) (2015-10-19T16:43:13)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.213-2015-10-19T164313.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Liggingsafwijking): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.213 Ligging (afwijkend) (2015-10-19T16:43:13).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901053-2016-12-02T154917.html"
              test="@xsi:type">(Liggingsafwijking): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901248
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]
Item: (Meerlingzwangerschap)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901248
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]
Item: (Meerlingzwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="string(@classCode) = ('OBS')">(Meerlingzwangerschap): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="string(@moodCode) = ('EVN')">(Meerlingzwangerschap): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']) &gt;= 1">(Meerlingzwangerschap): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']) &lt;= 1">(Meerlingzwangerschap): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Meerlingzwangerschap): element hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Meerlingzwangerschap): element hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:value) &gt;= 1">(Meerlingzwangerschap): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="count(hl7:value) &lt;= 1">(Meerlingzwangerschap): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901248
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']
Item: (Meerlingzwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Meerlingzwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901248')">(Meerlingzwangerschap): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901248' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901248
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Meerlingzwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:code[(@code = '16356006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Meerlingzwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="@nullFlavor or (@code='16356006' and @codeSystem='2.16.840.1.113883.6.96')">(Meerlingzwangerschap): de elementwaarde MOET een zijn van 'code '16356006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901248
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:value
Item: (Meerlingzwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901248']]/hl7:value">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901248-2020-10-12T170047.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(Meerlingzwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]
Item: (IUVD)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900918
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]">
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
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']">
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
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]">
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
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053')]">
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
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (IUVD)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900918']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901100
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]
Item: (RedenVerwZw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@typeCode) = ('COMP')">(RedenVerwZw233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.html"
              test="string(@contextConductionInd) = ('true')">(RedenVerwZw233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901255
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]
Item: (Surmenage)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901255
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]
Item: (Surmenage)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="string(@classCode) = ('OBS')">(Surmenage): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="string(@moodCode) = ('EVN')">(Surmenage): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']) &gt;= 1">(Surmenage): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']) &lt;= 1">(Surmenage): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Surmenage): element hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Surmenage): element hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Surmenage): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Surmenage): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901255
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']
Item: (Surmenage)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Surmenage): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901255')">(Surmenage): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901255' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901255
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Surmenage)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:code[(@code = '87228002' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Surmenage): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="@nullFlavor or (@code='87228002' and @codeSystem='2.16.840.1.113883.6.96')">(Surmenage): de elementwaarde MOET een zijn van 'code '87228002' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="@displayName">(Surmenage): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901255
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Surmenage)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901100']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901255']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901255-2022-01-18T000000.html"
              test="@xsi:type">(Surmenage): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
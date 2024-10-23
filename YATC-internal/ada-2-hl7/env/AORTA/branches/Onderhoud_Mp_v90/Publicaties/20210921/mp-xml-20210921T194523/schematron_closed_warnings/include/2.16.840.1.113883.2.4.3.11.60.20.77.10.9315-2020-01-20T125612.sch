<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Name: Reden voor toedieningsafspraak
Description: Reden voor toedieningsafspraak
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Reden voor toedieningsafspraak</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]
Item: (RedenToedieningsAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]"
         id="d40e3949-false-d116701e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]) &gt;= 1">(RedenToedieningsAfspraak2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]) &lt;= 1">(RedenToedieningsAfspraak2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]
Item: (RedenToedieningsAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]"
         id="d40e3970-false-d116724e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="string(@classCode) = ('OBS')">(RedenToedieningsAfspraak2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="string(@moodCode) = ('EVN')">(RedenToedieningsAfspraak2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']) &gt;= 1">(RedenToedieningsAfspraak2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']) &lt;= 1">(RedenToedieningsAfspraak2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(RedenToedieningsAfspraak2): element hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(RedenToedieningsAfspraak2): element hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:text) &gt;= 1">(RedenToedieningsAfspraak2): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="count(hl7:text) &lt;= 1">(RedenToedieningsAfspraak2): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']
Item: (RedenToedieningsAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']"
         id="d40e3976-false-d116790e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(RedenToedieningsAfspraak2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9315')">(RedenToedieningsAfspraak2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (RedenToedieningsAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:code[(@code = '112231000146109' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e3981-false-d116809e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RedenToedieningsAfspraak2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="@nullFlavor or (@code='112231000146109' and @codeSystem='2.16.840.1.113883.6.96')">(RedenToedieningsAfspraak2): de elementwaarde MOET een zijn van 'code '112231000146109' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(RedenToedieningsAfspraak2): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(RedenToedieningsAfspraak2): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9315
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:text
Item: (RedenToedieningsAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9315']]/hl7:text"
         id="d40e3997-false-d116841e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(RedenToedieningsAfspraak2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9315-2020-01-20T125612.html"
              test="string(@mediaType) = ('text/plain') or not(@mediaType)">(RedenToedieningsAfspraak2): de waarde van mediaType MOET 'text/plain' zijn. Gevonden: "
<value-of select="@mediaType"/>"</assert>
   </rule>
</pattern>
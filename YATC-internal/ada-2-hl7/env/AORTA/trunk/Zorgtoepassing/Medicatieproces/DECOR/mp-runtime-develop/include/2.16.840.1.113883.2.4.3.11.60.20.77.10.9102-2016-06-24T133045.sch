<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Name: MP Verstrekking identificatie
Description: Identificatie van de verstrekking.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP Verstrekking identificatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Context: *[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]
Item: (MPVSIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]"
         id="d40e2005-false-d8048e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]) &gt;= 1">(MPVSIdentificatie): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]) &lt;= 1">(MPVSIdentificatie): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Context: *[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]
Item: (MPVSIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]"
         id="d40e2026-false-d8071e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="string(@classCode) = ('SPLY')">(MPVSIdentificatie): de waarde van classCode MOET 'SPLY' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="string(@moodCode) = ('EVN')">(MPVSIdentificatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']) &gt;= 1">(MPVSIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']) &lt;= 1">(MPVSIdentificatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:id) &gt;= 1">(MPVSIdentificatie): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:id) &lt;= 1">(MPVSIdentificatie): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPVSIdentificatie): element hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="count(hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPVSIdentificatie): element hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Context: *[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']
Item: (MPVSIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']"
         id="d40e2032-false-d8137e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVSIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9102')">(MPVSIdentificatie): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Context: *[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:id
Item: (MPVSIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:id"
         id="d40e2037-false-d8156e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPVSIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="@root">(MPVSIdentificatie): attribute @root MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(MPVSIdentificatie): attribuut @root MOET datatype 'uid' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="not(@extension) or string-length(@extension)&gt;0">(MPVSIdentificatie): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9102
Context: *[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MPVSIdentificatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9102']]/hl7:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e2044-false-d8185e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPVSIdentificatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="@nullFlavor or (@code='373784005' and @codeSystem='2.16.840.1.113883.6.96')">(MPVSIdentificatie): de elementwaarde MOET een zijn van 'code '373784005' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPVSIdentificatie): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9102-2016-06-24T133045.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPVSIdentificatie): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901104
Name: Conditie Perineum Postpartum (verwijsreden)
Description: Conditie Perineum Postpartum (verwijsreden)
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Conditie Perineum Postpartum (verwijsreden)</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901104
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]
Item: (CondPerPpRedVerw233)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901104
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]
Item: (CondPerPpRedVerw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]"
         id="d40e11322-false-d90227e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="string(@classCode) = ('OBS')">(CondPerPpRedVerw233): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="string(@moodCode) = ('EVN')">(CondPerPpRedVerw233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']) &gt;= 1">(CondPerPpRedVerw233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']) &lt;= 1">(CondPerPpRedVerw233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CondPerPpRedVerw233): element hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CondPerPpRedVerw233): element hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(CondPerPpRedVerw233): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(CondPerPpRedVerw233): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901104
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']
Item: (CondPerPpRedVerw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']"
         id="d40e11328-false-d90293e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CondPerPpRedVerw233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901104')">(CondPerPpRedVerw233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901104' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901104
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CondPerPpRedVerw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:code[(@code = '364297003' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e11333-false-d90312e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CondPerPpRedVerw233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="@nullFlavor or (@code='364297003' and @codeSystem='2.16.840.1.113883.6.96')">(CondPerPpRedVerw233): de elementwaarde MOET een zijn van 'code '364297003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901104
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (CondPerPpRedVerw233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901104']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]"
         id="d40e11338-false-d90332e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.html"
              test="@xsi:type">(CondPerPpRedVerw233): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901250
Name: Serotiniteit
Description: 
                 Serotiniteit 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Serotiniteit</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901250
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]
Item: (Serotiniteit)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901250
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]
Item: (Serotiniteit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]"
         id="d40e11847-false-d92509e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="string(@classCode) = ('OBS')">(Serotiniteit): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="string(@moodCode) = ('EVN')">(Serotiniteit): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']) &gt;= 1">(Serotiniteit): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']) &lt;= 1">(Serotiniteit): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Serotiniteit): element hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Serotiniteit): element hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:value) &gt;= 1">(Serotiniteit): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="count(hl7:value) &lt;= 1">(Serotiniteit): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901250
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']
Item: (Serotiniteit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']"
         id="d40e11853-false-d92575e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Serotiniteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901250')">(Serotiniteit): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901250' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901250
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Serotiniteit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:code[(@code = '90968009' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e11858-false-d92594e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Serotiniteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="@nullFlavor or (@code='90968009' and @codeSystem='2.16.840.1.113883.6.96')">(Serotiniteit): de elementwaarde MOET een zijn van 'code '90968009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901250
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:value
Item: (Serotiniteit)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901250']]/hl7:value"
         id="d40e11868-false-d92614e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(Serotiniteit): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
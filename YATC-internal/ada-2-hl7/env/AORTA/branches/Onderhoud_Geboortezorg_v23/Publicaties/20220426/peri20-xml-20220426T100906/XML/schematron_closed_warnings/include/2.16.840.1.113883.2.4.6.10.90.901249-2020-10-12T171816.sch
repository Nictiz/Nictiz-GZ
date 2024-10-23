<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901249
Name: Meconiumhoudend Vruchtwater
Description: 
                 Meconiumhoudend Vruchtwater 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Meconiumhoudend Vruchtwater</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901249
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]
Item: (Meconiumhoudendvruchtwater)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901249
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]
Item: (Meconiumhoudendvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]"
         id="d40e11801-false-d92373e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="string(@classCode) = ('OBS')">(Meconiumhoudendvruchtwater): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="string(@moodCode) = ('EVN')">(Meconiumhoudendvruchtwater): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']) &gt;= 1">(Meconiumhoudendvruchtwater): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']) &lt;= 1">(Meconiumhoudendvruchtwater): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Meconiumhoudendvruchtwater): element hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Meconiumhoudendvruchtwater): element hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:value) &gt;= 1">(Meconiumhoudendvruchtwater): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="count(hl7:value) &lt;= 1">(Meconiumhoudendvruchtwater): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901249
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']
Item: (Meconiumhoudendvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']"
         id="d40e11807-false-d92439e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Meconiumhoudendvruchtwater): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901249')">(Meconiumhoudendvruchtwater): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901249' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901249
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Meconiumhoudendvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:code[(@code = '168092006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e11812-false-d92458e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Meconiumhoudendvruchtwater): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="@nullFlavor or (@code='168092006' and @codeSystem='2.16.840.1.113883.6.96')">(Meconiumhoudendvruchtwater): de elementwaarde MOET een zijn van 'code '168092006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901249
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:value
Item: (Meconiumhoudendvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901249']]/hl7:value"
         id="d40e11822-false-d92478e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(Meconiumhoudendvruchtwater): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901105
Name: Indicatie primaire sectio
Description: Template: Indicatie primaire sectio caesarea
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Indicatie primaire sectio</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]
Item: (IndicatiePrimSC)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]
Item: (IndicatiePrimSC)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]"
         id="d40e11379-false-d90368e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@classCode) = ('OBS')">(IndicatiePrimSC): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@moodCode) = ('EVN')">(IndicatiePrimSC): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(IndicatiePrimSC): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(exists(@nullFlavor)) or not(exists(hl7:value/@code))">(IndicatiePrimSC): Wanneer er geen informatie over de indicatie sectio is (de observation heeft een @nullFlavor) kan er ook geen waarde voor indicatie opgenomen worden (de observation/value heeft een @code).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']) &gt;= 1">(IndicatiePrimSC): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']) &lt;= 1">(IndicatiePrimSC): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(IndicatiePrimSC): element hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(IndicatiePrimSC): element hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(IndicatiePrimSC): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']
Item: (IndicatiePrimSC)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']"
         id="d40e11391-false-d90436e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(IndicatiePrimSC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901105')">(IndicatiePrimSC): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901105' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (IndicatiePrimSC)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:code[(@code = 'SectioCaeInd' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]"
         id="d40e11400-false-d90455e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IndicatiePrimSC): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@nullFlavor or (@code='SectioCaeInd' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(IndicatiePrimSC): de elementwaarde MOET een zijn van 'code 'SectioCaeInd' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901105
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IndicatiePrimSC)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901105']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d40e11411-false-d90478e0">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(IndicatiePrimSC): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.220 SC Indicatie - primaire sectio (2021-05-04T09:43:15)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IndicatiePrimSC): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.220 SC Indicatie - primaire sectio (2021-05-04T09:43:15).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.220-2021-05-04T094315.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(IndicatiePrimSC): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.html"
              test="@xsi:type">(IndicatiePrimSC): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
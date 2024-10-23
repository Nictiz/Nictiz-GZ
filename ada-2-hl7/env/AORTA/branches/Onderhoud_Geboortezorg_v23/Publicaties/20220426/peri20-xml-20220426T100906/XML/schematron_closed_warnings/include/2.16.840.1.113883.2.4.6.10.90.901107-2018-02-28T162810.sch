<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901107
Name: Type partus
Description: Template: Type partus 
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Type partus</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]
Item: (TypePartus23)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]
Item: (TypePartus23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]"
         id="d40e11566-false-d91107e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@classCode) = ('OBS')">(TypePartus23): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@moodCode) = ('EVN')">(TypePartus23): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']) &gt;= 1">(TypePartus23): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']) &lt;= 1">(TypePartus23): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(TypePartus23): element hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(TypePartus23): element hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(TypePartus23): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(TypePartus23): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']
Item: (TypePartus23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']"
         id="d40e11572-false-d91175e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901107')">(TypePartus23): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901107' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (TypePartus23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:code[(@code = '364336006' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e11577-false-d91194e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or (@code='364336006' and @codeSystem='2.16.840.1.113883.6.96')">(TypePartus23): de elementwaarde MOET een zijn van 'code '364336006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901107
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]
Item: (TypePartus23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d40e11582-false-d91216e0">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(TypePartus23): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.182 TypePartus (2016-11-22T14:00:45)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.182-2016-11-22T140045.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(TypePartus23): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.182 TypePartus (2016-11-22T14:00:45).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(TypePartus23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
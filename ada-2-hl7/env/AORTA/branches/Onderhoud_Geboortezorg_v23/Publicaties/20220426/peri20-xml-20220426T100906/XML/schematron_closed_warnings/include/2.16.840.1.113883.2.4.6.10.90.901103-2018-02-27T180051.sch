<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901103
Name: Wijze waarop de baring begon
Description: Template: Wijze waarop de baring begon
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Wijze waarop de baring begon</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901103
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]
Item: (WijzeBaringBegon)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901103
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]
Item: (WijzeBaringBegon)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]"
         id="d40e11276-false-d90071e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="string(@classCode) = ('OBS')">(WijzeBaringBegon): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="string(@moodCode) = ('EVN')">(WijzeBaringBegon): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']) &gt;= 1">(WijzeBaringBegon): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']) &lt;= 1">(WijzeBaringBegon): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(WijzeBaringBegon): element hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(WijzeBaringBegon): element hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(WijzeBaringBegon): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(WijzeBaringBegon): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901103
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']
Item: (WijzeBaringBegon)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']"
         id="d40e11282-false-d90139e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(WijzeBaringBegon): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901103')">(WijzeBaringBegon): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901103' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901103
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (WijzeBaringBegon)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:code[(@code = 'BeginDeliv' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]"
         id="d40e11287-false-d90158e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(WijzeBaringBegon): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="@nullFlavor or (@code='BeginDeliv' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(WijzeBaringBegon): de elementwaarde MOET een zijn van 'code 'BeginDeliv' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901103
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code]
Item: (WijzeBaringBegon)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901103']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d40e11292-false-d90180e0">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(WijzeBaringBegon): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.16 WijzeBaringBegin (2013-01-10T12:25:06)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.16-2013-01-10T122506.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(WijzeBaringBegon): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.16 WijzeBaringBegin (2013-01-10T12:25:06).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.html"
              test="@xsi:type">(WijzeBaringBegon): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
</pattern>
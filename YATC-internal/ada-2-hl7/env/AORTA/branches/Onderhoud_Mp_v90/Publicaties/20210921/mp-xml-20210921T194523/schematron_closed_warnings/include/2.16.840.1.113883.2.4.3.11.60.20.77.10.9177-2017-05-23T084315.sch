<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Name: MP CDA MA Aanvullende informatie
Description: Aanvullende informatie bij medicatieafspraak.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA MA Aanvullende informatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]
Item: (MPCDAMAAanvullendeInformatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]"
         id="d40e2990-false-d91241e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]) &gt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]) &lt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]
Item: (MPCDAMAAanvullendeInformatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]"
         id="d40e3005-false-d91264e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="string(@classCode) = ('OBS')">(MPCDAMAAanvullendeInformatie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="string(@moodCode) = ('EVN')">(MPCDAMAAanvullendeInformatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']) &gt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']) &lt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &gt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &lt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MPCDAMAAanvullendeInformatie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']
Item: (MPCDAMAAanvullendeInformatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']"
         id="d40e3014-false-d91332e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMAAanvullendeInformatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9177')">(MPCDAMAAanvullendeInformatie): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]
Item: (MPCDAMAAanvullendeInformatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]"
         id="d40e3019-false-d91351e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="@nullFlavor or (@code='11' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2')">(MPCDAMAAanvullendeInformatie): de elementwaarde MOET een zijn van 'code '11' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.2''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9177
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MPCDAMAAanvullendeInformatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9177']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d40e3025-false-d91369e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMAAanvullendeInformatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.31-2017-05-05T124847.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MPCDAMAAanvullendeInformatie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.20.77.11.31 Aanvullende Informatie voor MA (2017-05-05T12:48:47)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9177-2017-05-23T084315.html"
              test="@nullFlavor or @displayName">(MPCDAMAAanvullendeInformatie): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
   </rule>
</pattern>
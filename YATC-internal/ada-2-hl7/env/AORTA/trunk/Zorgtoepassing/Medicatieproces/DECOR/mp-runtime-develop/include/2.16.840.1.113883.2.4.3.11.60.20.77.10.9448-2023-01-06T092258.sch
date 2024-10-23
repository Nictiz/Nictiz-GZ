<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9448
Name: Aanvullende wens
Description: Aanvullende wens
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Aanvullende wens</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9448
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]
Item: (AanvullendeWens2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]"
         id="d40e10574-false-d514282e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]) &gt;= 1">(AanvullendeWens2): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="count(hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]) &lt;= 1">(AanvullendeWens2): element hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9448
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]
Item: (AanvullendeWens2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]"
         id="d40e10596-false-d514305e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="string(@classCode) = ('ACT')">(AanvullendeWens2): de waarde van classCode MOET 'ACT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="string(@moodCode) = ('RQO')">(AanvullendeWens2): de waarde van moodCode MOET 'RQO' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']) &gt;= 1">(AanvullendeWens2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']) &lt;= 1">(AanvullendeWens2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2023-01-09T105413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(AanvullendeWens2): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2023-01-09T105413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9448
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']
Item: (AanvullendeWens2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']"
         id="d40e10602-false-d514352e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(AanvullendeWens2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9448')">(AanvullendeWens2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9448
Context: *[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2023-01-09T105413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (AanvullendeWens2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9448']]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2023-01-09T105413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d40e10607-false-d514373e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(AanvullendeWens2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2023-01-09T105413.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(AanvullendeWens2): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.20.77.11.32 Aanvullende wensen voor VV (2023-01-09T10:54:13)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9448-2023-01-06T092258.html"
              test="@nullFlavor or @displayName">(AanvullendeWens2): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
   </rule>
</pattern>
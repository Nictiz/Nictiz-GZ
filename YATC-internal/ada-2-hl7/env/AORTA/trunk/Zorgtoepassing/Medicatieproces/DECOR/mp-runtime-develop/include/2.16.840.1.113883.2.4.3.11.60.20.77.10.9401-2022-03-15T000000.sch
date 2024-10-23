<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Name: MP CDA MA Aanvullende informatie
Description: Aanvullende informatie bij medicatieafspraak.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA MA Aanvullende informatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]
Item: (MPCDAMAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]"
         id="d40e5963-false-d73945e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]) &gt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]) &lt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]
Item: (MPCDAMAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]"
         id="d40e5984-false-d73968e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="string(@classCode) = ('OBS')">(MPCDAMAAanvullendeInformatie2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="string(@moodCode) = ('EVN')">(MPCDAMAAanvullendeInformatie2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']) &gt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']) &lt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &gt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &lt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(MPCDAMAAanvullendeInformatie2): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']
Item: (MPCDAMAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']"
         id="d40e5993-false-d74036e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMAAanvullendeInformatie2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9401')">(MPCDAMAAanvullendeInformatie2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]
Item: (MPCDAMAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]"
         id="d40e5998-false-d74055e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="@nullFlavor or (@code='11' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2')">(MPCDAMAAanvullendeInformatie2): de elementwaarde MOET een zijn van 'code '11' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.2''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9401
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (MPCDAMAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]"
         id="d40e6004-false-d74073e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMAAanvullendeInformatie2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(MPCDAMAAanvullendeInformatie2): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.20.77.11.45 Aanvullende Informatie voor MA (2022-03-10T16:40:13)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9401-2022-03-15T000000.html"
              test="@nullFlavor or @displayName">(MPCDAMAAanvullendeInformatie2): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Name: MP CDA TA Aanvullende informatie
Description: Aanvullende informatie bij toedieningsafspraak.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA TA Aanvullende informatie</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]
Item: (MPCDATAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]"
         id="d40e6015-false-d74102e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]) &gt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]) &lt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]
Item: (MPCDATAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]"
         id="d40e6037-false-d74125e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="string(@classCode) = ('OBS')">(MPCDATAAanvullendeInformatie2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="string(@moodCode) = ('EVN')">(MPCDATAAanvullendeInformatie2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']) &gt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']) &lt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &gt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &lt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:text) &gt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="count(hl7:text) &lt;= 1">(MPCDATAAanvullendeInformatie2): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']
Item: (MPCDATAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']"
         id="d40e6046-false-d74191e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDATAAanvullendeInformatie2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9402')">(MPCDATAAanvullendeInformatie2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]
Item: (MPCDATAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]"
         id="d40e6051-false-d74210e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="@nullFlavor or (@code='12' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2')">(MPCDATAAanvullendeInformatie2): de elementwaarde MOET een zijn van 'code '12' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.2''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9402
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:text
Item: (MPCDATAAanvullendeInformatie2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/hl7:text"
         id="d40e6057-false-d74226e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(MPCDATAAanvullendeInformatie2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9402-2022-03-15T000000.html"
              test="string(@mediaType) = ('text/plain') or not(@mediaType)">(MPCDATAAanvullendeInformatie2): de waarde van mediaType MOET 'text/plain' zijn. Gevonden: "
<value-of select="@mediaType"/>"</assert>
   </rule>
</pattern>
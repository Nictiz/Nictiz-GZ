<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Name: Reden voor medicatiegebruik
Description: Reden voor medicatiegebruik
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Reden voor medicatiegebruik</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]
Item: (RedenMedicatieGebruik2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]"
         id="d40e5315-false-d48868e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]) &gt;= 1">(RedenMedicatieGebruik2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]) &lt;= 1">(RedenMedicatieGebruik2): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]
Item: (RedenMedicatieGebruik2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]"
         id="d40e5340-false-d48891e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="string(@classCode) = ('OBS')">(RedenMedicatieGebruik2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="string(@moodCode) = ('EVN')">(RedenMedicatieGebruik2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']) &gt;= 1">(RedenMedicatieGebruik2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']) &lt;= 1">(RedenMedicatieGebruik2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(RedenMedicatieGebruik2): element hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(RedenMedicatieGebruik2): element hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:text) &gt;= 1">(RedenMedicatieGebruik2): element hl7:text is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="count(hl7:text) &lt;= 1">(RedenMedicatieGebruik2): element hl7:text komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']
Item: (RedenMedicatieGebruik2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']"
         id="d40e5346-false-d48957e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(RedenMedicatieGebruik2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9390')">(RedenMedicatieGebruik2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (RedenMedicatieGebruik2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:code[(@code = '11611000146100' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e5351-false-d48976e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RedenMedicatieGebruik2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="@nullFlavor or (@code='11611000146100' and @codeSystem='2.16.840.1.113883.6.96')">(RedenMedicatieGebruik2): de elementwaarde MOET een zijn van 'code '11611000146100' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9390
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:text
Item: (RedenMedicatieGebruik2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9390']]/hl7:text"
         id="d40e5356-false-d48996e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(RedenMedicatieGebruik2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="string(@mediaType) = ('text/plain') or not(@mediaType)">(RedenMedicatieGebruik2): de waarde van mediaType MOET 'text/plain' zijn. Gevonden: "
<value-of select="@mediaType"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9390-2021-08-16T074229.html"
              test="not(@mediaType) or string-length(@mediaType)&gt;0">(RedenMedicatieGebruik2): attribuut @mediaType MOET datatype 'st' hebben  - '
<value-of select="@mediaType"/>'</assert>
   </rule>
</pattern>
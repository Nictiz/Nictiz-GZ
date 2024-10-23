<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Name: Kopie-indicator
Description: Kopie-indicator - bij bouwstenen in medicatieproces
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Kopie-indicator</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]
Item: (MPCDAKopieIndicator)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]
Item: (MPCDAKopieIndicator)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]"
         id="d42e3544-false-d83387e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="string(@classCode) = ('OBS')">(MPCDAKopieIndicator): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="string(@moodCode) = ('EVN')">(MPCDAKopieIndicator): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']) &gt;= 1">(MPCDAKopieIndicator): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']) &lt;= 1">(MPCDAKopieIndicator): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &gt;= 1">(MPCDAKopieIndicator): element hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &lt;= 1">(MPCDAKopieIndicator): element hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:value) &gt;= 1">(MPCDAKopieIndicator): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="count(hl7:value) &lt;= 1">(MPCDAKopieIndicator): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']
Item: (MPCDAKopieIndicator)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']"
         id="d42e3550-false-d83430e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAKopieIndicator): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9200')">(MPCDAKopieIndicator): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]
Item: (MPCDAKopieIndicator)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]"
         id="d42e3555-false-d83445e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="@nullFlavor or (@code='16' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2')">(MPCDAKopieIndicator): de elementwaarde MOET een zijn van 'code '16' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.2''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9200
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:value
Item: (MPCDAKopieIndicator)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/hl7:value"
         id="d42e3566-false-d83458e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9200-2018-01-12T101847.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(MPCDAKopieIndicator): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Name: Volgens afspraak indicator
Description: Volgens afspraak indicator - bij medicatiegebruik in medicatieproces
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Volgens afspraak indicator</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]
Item: (MPCDAVolgensAfspraak2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]
Item: (MPCDAVolgensAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]"
         id="d40e4127-false-d117104e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="string(@classCode) = ('OBS')">(MPCDAVolgensAfspraak2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="string(@moodCode) = ('EVN')">(MPCDAVolgensAfspraak2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']) &gt;= 1">(MPCDAVolgensAfspraak2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']) &lt;= 1">(MPCDAVolgensAfspraak2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(MPCDAVolgensAfspraak2): element hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(MPCDAVolgensAfspraak2): element hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:value) &gt;= 1">(MPCDAVolgensAfspraak2): element hl7:value is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="count(hl7:value) &lt;= 1">(MPCDAVolgensAfspraak2): element hl7:value komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']
Item: (MPCDAVolgensAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']"
         id="d40e4133-false-d117170e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAVolgensAfspraak2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9317')">(MPCDAVolgensAfspraak2): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (MPCDAVolgensAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:code[(@code = '112221000146107' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e4138-false-d117189e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="@nullFlavor or (@code='112221000146107' and @codeSystem='2.16.840.1.113883.6.96')">(MPCDAVolgensAfspraak2): de elementwaarde MOET een zijn van 'code '112221000146107' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9317
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:value
Item: (MPCDAVolgensAfspraak2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9317']]/hl7:value"
         id="d40e4149-false-d117206e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9317-2020-01-20T141110.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(MPCDAVolgensAfspraak2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
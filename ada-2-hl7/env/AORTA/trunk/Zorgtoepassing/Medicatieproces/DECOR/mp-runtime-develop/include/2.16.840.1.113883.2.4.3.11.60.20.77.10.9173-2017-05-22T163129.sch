<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Name: MP CDA verifier patiënt
Description: Template voor MP CDA verifier patiënt
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA verifier patiënt</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]
Item: (MPCDAverifierpatient)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]
Item: (MPCDAverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]"
         id="d40e2194-false-d8235e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="string(@typeCode) = ('VRF')">(MPCDAverifierpatient): de waarde van typeCode MOET 'VRF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']) &gt;= 1">(MPCDAverifierpatient): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']) &lt;= 1">(MPCDAverifierpatient): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']
Item: (MPCDAverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']"
         id="d40e2198-false-d8273e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAverifierpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9173')">(MPCDAverifierpatient): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:time
Item: (MPCDAverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:time"
         id="d40e2203-false-d8292e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAverifierpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="not(*)">(MPCDAverifierpatient): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9173
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:associatedEntity[@classCode = 'PAT']
Item: (MPCDAverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9173']]/hl7:associatedEntity[@classCode = 'PAT']"
         id="d40e2205-false-d8309e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9173-2017-05-22T163129.html"
              test="string(@classCode) = ('PAT')">(MPCDAverifierpatient): de waarde van classCode MOET 'PAT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
   </rule>
</pattern>
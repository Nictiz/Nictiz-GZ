<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Name: MP CDA verifier zorgverlener
Description: Template voor MP CDA verifier zorgverlener
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA verifier zorgverlener</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]
Item: (MPCDAverifierzorgverlener)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]
Item: (MPCDAverifierzorgverlener)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]"
         id="d40e2927-false-d90990e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="string(@typeCode) = ('VRF')">(MPCDAverifierzorgverlener): de waarde van typeCode MOET 'VRF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']) &gt;= 1">(MPCDAverifierzorgverlener): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']) &lt;= 1">(MPCDAverifierzorgverlener): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']
Item: (MPCDAverifierzorgverlener)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']"
         id="d40e2931-false-d91028e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAverifierzorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9174')">(MPCDAverifierzorgverlener): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:time
Item: (MPCDAverifierzorgverlener)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:time"
         id="d40e2936-false-d91047e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPCDAverifierzorgverlener): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="not(*)">(MPCDAverifierzorgverlener): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9174
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:associatedEntity[@classCode = 'ASSIGNED']
Item: (MPCDAverifierzorgverlener)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9174']]/hl7:associatedEntity[@classCode = 'ASSIGNED']"
         id="d40e2938-false-d91064e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9174-2017-05-22T163500.html"
              test="string(@classCode) = ('ASSIGNED')">(MPCDAverifierzorgverlener): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
   </rule>
</pattern>
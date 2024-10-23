<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Name: MP organizer verifier patiënt
Description: Template voor MP organizer verifier patiënt
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP organizer verifier patiënt</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]
Item: (MPOrganizerverifierpatient)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]
Item: (MPOrganizerverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]"
         id="d40e2324-false-d8605e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="string(@typeCode) = ('VRF')">(MPOrganizerverifierpatient): de waarde van typeCode MOET 'VRF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']) &gt;= 1">(MPOrganizerverifierpatient): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']) &lt;= 1">(MPOrganizerverifierpatient): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="count(hl7:time) &lt;= 1">(MPOrganizerverifierpatient): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="count(hl7:participantRole[@classCode = 'PAT']) &lt;= 1">(MPOrganizerverifierpatient): element hl7:participantRole[@classCode = 'PAT'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']
Item: (MPOrganizerverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']"
         id="d40e2328-false-d8653e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPOrganizerverifierpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9179')">(MPOrganizerverifierpatient): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:time
Item: (MPOrganizerverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:time"
         id="d40e2333-false-d8672e0">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(MPOrganizerverifierpatient): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="not(*)">(MPOrganizerverifierpatient): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9179
Context: *[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:participantRole[@classCode = 'PAT']
Item: (MPOrganizerverifierpatient)
-->
   <rule fpi="RULC-1"
         context="*[hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]]/hl7:participant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9179']]/hl7:participantRole[@classCode = 'PAT']"
         id="d40e2335-false-d8689e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9179-2017-05-23T115538.html"
              test="string(@classCode) = ('PAT')">(MPOrganizerverifierpatient): de waarde van classCode MOET 'PAT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
   </rule>
</pattern>
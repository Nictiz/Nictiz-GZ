<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901095
Name: Obstetrische anamnese Kernset
Description: Obstetrische anamnese Kernset, per voorgaande zwangerschap
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Obstetrische anamnese Kernset</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]"
         id="d40e9971-false-d59963e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@classCode) = ('CONTAINER')">(ObstanamnvoorgzwangerschapKS233): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@moodCode) = ('EVN')">(ObstanamnvoorgzwangerschapKS233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']"
         id="d40e9977-false-d60102e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ObstanamnvoorgzwangerschapKS233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901095')">(ObstanamnvoorgzwangerschapKS233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901095' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:code[(@code = '248983002' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e9982-false-d60121e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ObstanamnvoorgzwangerschapKS233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="@nullFlavor or (@code='248983002' and @codeSystem='2.16.840.1.113883.6.96')">(ObstanamnvoorgzwangerschapKS233): de elementwaarde MOET een zijn van 'code '248983002' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900876
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]
Item: (WijzeEindeZwangerschap)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900876
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]
Item: (WijzeEindeZwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="string(@classCode) = ('OBS')">(WijzeEindeZwangerschap): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="string(@moodCode) = ('EVN')">(WijzeEindeZwangerschap): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']) &gt;= 1">(WijzeEindeZwangerschap): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']) &lt;= 1">(WijzeEindeZwangerschap): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(WijzeEindeZwangerschap): element hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(WijzeEindeZwangerschap): element hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(WijzeEindeZwangerschap): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(WijzeEindeZwangerschap): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900876
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']
Item: (WijzeEindeZwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(WijzeEindeZwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900876')">(WijzeEindeZwangerschap): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900876' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900876
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (WijzeEindeZwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:code[(@code = 'EindeZw' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(WijzeEindeZwangerschap): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="@nullFlavor or (@code='EindeZw' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(WijzeEindeZwangerschap): de elementwaarde MOET een zijn van 'code 'EindeZw' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900876
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (WijzeEindeZwangerschap)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900876']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(WijzeEindeZwangerschap): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.171 WijzeEindeZwangerschap (2013-03-20T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.171-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(WijzeEindeZwangerschap): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.171 WijzeEindeZwangerschap (2013-03-20T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="@xsi:type">(WijzeEindeZwangerschap): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900876-2016-12-06T094326.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(WijzeEindeZwangerschap): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]
Item: (EDDdefinitive)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]
Item: (EDDdefinitive)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@classCode) = ('OBS')">(EDDdefinitive): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@moodCode) = ('EVN')">(EDDdefinitive): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']) &gt;= 1">(EDDdefinitive): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']) &lt;= 1">(EDDdefinitive): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(EDDdefinitive): element hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(EDDdefinitive): element hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &gt;= 1">(EDDdefinitive): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &lt;= 1">(EDDdefinitive): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']
Item: (EDDdefinitive)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(EDDdefinitive): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900928')">(EDDdefinitive): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900928' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (EDDdefinitive)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:code[(@code = 'EDDDef' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(EDDdefinitive): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@nullFlavor or (@code='EDDDef' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(EDDdefinitive): de elementwaarde MOET een zijn van 'code 'EDDDef' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900928
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]
Item: (EDDdefinitive)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900928']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="not(*)">(EDDdefinitive): 
<value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900928-2016-12-06T110006.html"
              test="@xsi:type">(EDDdefinitive): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]"
         id="d40e10008-false-d60521e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]"
         id="d40e10017-false-d60605e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@classCode) = ('CONTAINER')">(ObstanamnvoorgzwangerschapKS233): de waarde van classCode MOET 'CONTAINER' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@moodCode) = ('EVN')">(ObstanamnvoorgzwangerschapKS233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e10023-false-d60773e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ObstanamnvoorgzwangerschapKS233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="@nullFlavor or (@code='439401001' and @codeSystem='2.16.840.1.113883.6.96')">(ObstanamnvoorgzwangerschapKS233): de elementwaarde MOET een zijn van 'code '439401001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]
Item: (Gynaecologischeaandoening)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@classCode) = ('OBS')">(Gynaecologischeaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@moodCode) = ('EVN')">(Gynaecologischeaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Gynaecologischeaandoening): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="(@negationInd='true' or @nullFlavor or hl7:value) and not(hl7:value and @negationInd='true') and not(hl7:value and @nullFlavor) and not(@nullFlavor and @negationInd)">(Gynaecologischeaandoening): Er moet ofwel een nullFlavor, ofwel een negationInd='true', ofwel een hl7:value aanwezig zijn, maar niet meer dan een van deze drie. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &gt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']) &lt;= 1">(Gynaecologischeaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Gynaecologischeaandoening): element hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Gynaecologischeaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900954')">(Gynaecologischeaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900954' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:code[(@code = '310789003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Gynaecologischeaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or (@code='310789003' and @codeSystem='2.16.840.1.113883.6.96')">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van 'code '310789003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900954
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Gynaecologischeaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900954']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Gynaecologischeaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.16-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Gynaecologischeaandoening): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.16 Gynaecologische aandoeningen (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900954-2016-12-02T125822.html"
              test="@xsi:type">(Gynaecologischeaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]
Item: (Bloedverlies)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@classCode) = ('OBS')">(Bloedverlies): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@moodCode) = ('EVN')">(Bloedverlies): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']) &gt;= 1">(Bloedverlies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']) &lt;= 1">(Bloedverlies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Bloedverlies): element hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Bloedverlies): element hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Bloedverlies): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Bloedverlies): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Bloedverlies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900967')">(Bloedverlies): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900967' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:code[(@code = '131148009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Bloedverlies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@nullFlavor or (@code='131148009' and @codeSystem='2.16.840.1.113883.6.96')">(Bloedverlies): de elementwaarde MOET een zijn van 'code '131148009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900967
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Bloedverlies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900967']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900967-2016-12-02T142446.html"
              test="@xsi:type">(Bloedverlies): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]
Item: (Cervixinsufficientie)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@classCode) = ('OBS')">(Cervixinsufficientie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@moodCode) = ('EVN')">(Cervixinsufficientie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']) &gt;= 1">(Cervixinsufficientie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']) &lt;= 1">(Cervixinsufficientie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Cervixinsufficientie): element hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Cervixinsufficientie): element hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Cervixinsufficientie): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Cervixinsufficientie): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Cervixinsufficientie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900968')">(Cervixinsufficientie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900968' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:code[(@code = '17382005' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Cervixinsufficientie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@nullFlavor or (@code='17382005' and @codeSystem='2.16.840.1.113883.6.96')">(Cervixinsufficientie): de elementwaarde MOET een zijn van 'code '17382005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900968
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Cervixinsufficientie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900968']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900968-2016-12-02T144215.html"
              test="@xsi:type">(Cervixinsufficientie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]
Item: (Infectie)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@classCode) = ('OBS')">(Infectie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@moodCode) = ('EVN')">(Infectie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']) &gt;= 1">(Infectie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']) &lt;= 1">(Infectie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Infectie): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Infectie): element hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Infectie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Infectie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Infectie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900975')">(Infectie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900975' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:code[(@code = '40733004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Infectie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or (@code='40733004' and @codeSystem='2.16.840.1.113883.6.96')">(Infectie): de elementwaarde MOET een zijn van 'code '40733004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900975
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Infectie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900975']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Infectie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Infectie): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.204 Infectie (DYNAMISCH).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.204-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(Infectie): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900975-2016-12-02T144326.html"
              test="@xsi:type">(Infectie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]
Item: (Hyperemesisgravidarum)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@classCode) = ('OBS')">(Hyperemesisgravidarum): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@moodCode) = ('EVN')">(Hyperemesisgravidarum): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']) &gt;= 1">(Hyperemesisgravidarum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']) &lt;= 1">(Hyperemesisgravidarum): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Hyperemesisgravidarum): element hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Hyperemesisgravidarum): element hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Hyperemesisgravidarum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Hyperemesisgravidarum): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Hyperemesisgravidarum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900969')">(Hyperemesisgravidarum): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900969' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:code[(@code = '14094001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Hyperemesisgravidarum): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@nullFlavor or (@code='14094001' and @codeSystem='2.16.840.1.113883.6.96')">(Hyperemesisgravidarum): de elementwaarde MOET een zijn van 'code '14094001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900969
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Hyperemesisgravidarum)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900969']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900969-2016-12-02T144436.html"
              test="@xsi:type">(Hyperemesisgravidarum): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]
Item: (Hypertensieveaandoening)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@classCode) = ('OBS')">(Hypertensieveaandoening): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@moodCode) = ('EVN')">(Hypertensieveaandoening): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']) &gt;= 1">(Hypertensieveaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']) &lt;= 1">(Hypertensieveaandoening): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Hypertensieveaandoening): element hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Hypertensieveaandoening): element hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &gt;= 1">(Hypertensieveaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(Hypertensieveaandoening): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Hypertensieveaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900977')">(Hypertensieveaandoening): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900977' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:code[(@code = '38341003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Hypertensieveaandoening): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or (@code='38341003' and @codeSystem='2.16.840.1.113883.6.96')">(Hypertensieveaandoening): de elementwaarde MOET een zijn van 'code '38341003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900977
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (Hypertensieveaandoening)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900977']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.36-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Hypertensieveaandoening): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.36 Hypertensieve aandoening (DYNAMISCH)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900977-2016-12-02T145706.html"
              test="@xsi:type">(Hypertensieveaandoening): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]
Item: (Zwangerschapscholestase)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@classCode) = ('OBS')">(Zwangerschapscholestase): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@moodCode) = ('EVN')">(Zwangerschapscholestase): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']) &gt;= 1">(Zwangerschapscholestase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']) &lt;= 1">(Zwangerschapscholestase): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Zwangerschapscholestase): element hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Zwangerschapscholestase): element hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Zwangerschapscholestase): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Zwangerschapscholestase): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Zwangerschapscholestase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900971')">(Zwangerschapscholestase): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900971' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:code[(@code = '235888006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Zwangerschapscholestase): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@nullFlavor or (@code='235888006' and @codeSystem='2.16.840.1.113883.6.96')">(Zwangerschapscholestase): de elementwaarde MOET een zijn van 'code '235888006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900971
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Zwangerschapscholestase)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900971']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900971-2016-12-02T144715.html"
              test="@xsi:type">(Zwangerschapscholestase): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]
Item: (Diabetesgravidarummetinsuline)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@classCode) = ('OBS')">(Diabetesgravidarummetinsuline): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@moodCode) = ('EVN')">(Diabetesgravidarummetinsuline): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Diabetesgravidarummetinsuline): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Diabetesgravidarummetinsuline): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Diabetesgravidarummetinsuline): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900978')">(Diabetesgravidarummetinsuline): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900978' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:code[(@code = '46894009' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Diabetesgravidarummetinsuline): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@nullFlavor or (@code='46894009' and @codeSystem='2.16.840.1.113883.6.96')">(Diabetesgravidarummetinsuline): de elementwaarde MOET een zijn van 'code '46894009' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900978
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Diabetesgravidarummetinsuline)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900978']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900978-2016-12-02T144812.html"
              test="@xsi:type">(Diabetesgravidarummetinsuline): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]">
      <extends rule="d62165e0-false-d62171e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('false')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'false' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         id="d62165e0-false-d62171e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]) &lt;= 1">(Afwijkendegroei): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@classCode) = ('OBS')">(Afwijkendegroei): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@moodCode) = ('EVN')">(Afwijkendegroei): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Afwijkendegroei): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']) &gt;= 1">(Afwijkendegroei): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']) &lt;= 1">(Afwijkendegroei): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Afwijkendegroei): element hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Afwijkendegroei): element hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Afwijkendegroei): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Afwijkendegroei): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Afwijkendegroei): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900976')">(Afwijkendegroei): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900976' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:code[(@code = '276604007' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Afwijkendegroei): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or (@code='276604007' and @codeSystem='2.16.840.1.113883.6.96')">(Afwijkendegroei): de elementwaarde MOET een zijn van 'code '276604007' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900976
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Afwijkendegroei)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900976']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Afwijkendegroei): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (2022-04-12T12:05:39)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Afwijkendegroei): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.37 Groei afwijkend (2022-04-12T12:05:39).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.37-2022-04-12T120539.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(Afwijkendegroei): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900976-2016-12-02T144857.html"
              test="@xsi:type">(Afwijkendegroei): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]
Item: (Dreigendepartusimmaturus)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@classCode) = ('OBS')">(Dreigendepartusimmaturus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@moodCode) = ('EVN')">(Dreigendepartusimmaturus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']) &gt;= 1">(Dreigendepartusimmaturus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']) &lt;= 1">(Dreigendepartusimmaturus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Dreigendepartusimmaturus): element hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Dreigendepartusimmaturus): element hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Dreigendepartusimmaturus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Dreigendepartusimmaturus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Dreigendepartusimmaturus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900972')">(Dreigendepartusimmaturus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900972' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:code[(@code = 'PartusImmaturusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Dreigendepartusimmaturus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@nullFlavor or (@code='PartusImmaturusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusimmaturus): de elementwaarde MOET een zijn van 'code 'PartusImmaturusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900972
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Dreigendepartusimmaturus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900972']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900972-2016-12-02T144955.html"
              test="@xsi:type">(Dreigendepartusimmaturus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]
Item: (Dreigendepartusprematurus)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@classCode) = ('OBS')">(Dreigendepartusprematurus): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@moodCode) = ('EVN')">(Dreigendepartusprematurus): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']) &gt;= 1">(Dreigendepartusprematurus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']) &lt;= 1">(Dreigendepartusprematurus): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Dreigendepartusprematurus): element hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Dreigendepartusprematurus): element hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Dreigendepartusprematurus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Dreigendepartusprematurus): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Dreigendepartusprematurus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900973')">(Dreigendepartusprematurus): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900973' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:code[(@code = 'PartusPrematurusDreig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Dreigendepartusprematurus): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@nullFlavor or (@code='PartusPrematurusDreig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Dreigendepartusprematurus): de elementwaarde MOET een zijn van 'code 'PartusPrematurusDreig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900973
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Dreigendepartusprematurus)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900973']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900973-2016-12-02T145105.html"
              test="@xsi:type">(Dreigendepartusprematurus): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]
Item: (Abruptioplacentae)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@classCode) = ('OBS')">(Abruptioplacentae): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@moodCode) = ('EVN')">(Abruptioplacentae): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']) &gt;= 1">(Abruptioplacentae): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']) &lt;= 1">(Abruptioplacentae): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Abruptioplacentae): element hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Abruptioplacentae): element hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Abruptioplacentae): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Abruptioplacentae): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Abruptioplacentae): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900974')">(Abruptioplacentae): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900974' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:code[(@code = '415105001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Abruptioplacentae): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@nullFlavor or (@code='415105001' and @codeSystem='2.16.840.1.113883.6.96')">(Abruptioplacentae): de elementwaarde MOET een zijn van 'code '415105001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900974
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Abruptioplacentae)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:organizer[hl7:code[(@code = '439401001' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900974']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900974-2016-12-02T145207.html"
              test="@xsi:type">(Abruptioplacentae): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900993
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]
Item: (Irregulaireantistoffenjanee)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900993
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]
Item: (Irregulaireantistoffenjanee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="string(@classCode) = ('OBS')">(Irregulaireantistoffenjanee): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="string(@moodCode) = ('EVN')">(Irregulaireantistoffenjanee): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="@negationInd">(Irregulaireantistoffenjanee): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Irregulaireantistoffenjanee): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Irregulaireantistoffenjanee): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']) &gt;= 1">(Irregulaireantistoffenjanee): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']) &lt;= 1">(Irregulaireantistoffenjanee): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="count(hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Irregulaireantistoffenjanee): element hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="count(hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Irregulaireantistoffenjanee): element hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900993
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']
Item: (Irregulaireantistoffenjanee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Irregulaireantistoffenjanee): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900993')">(Irregulaireantistoffenjanee): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900993' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900993
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]/hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Irregulaireantistoffenjanee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900993']]/hl7:code[(@code = '312457003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Irregulaireantistoffenjanee): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900993-2016-12-06T101240.html"
              test="@nullFlavor or (@code='312457003' and @codeSystem='2.16.840.1.113883.6.96')">(Irregulaireantistoffenjanee): de elementwaarde MOET een zijn van 'code '312457003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]"
         id="d40e10129-false-d62987e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@contextConductionInd) = ('true')">(ObstanamnvoorgzwangerschapKS233): de waarde van contextConductionInd MOET 'true' zijn. Gevonden: "
<value-of select="@contextConductionInd"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]"
         id="d40e10138-false-d63059e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@classCode) = ('PROC')">(ObstanamnvoorgzwangerschapKS233): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@moodCode) = ('EVN')">(ObstanamnvoorgzwangerschapKS233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:id) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:id) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]) &lt;= 1">(ObstanamnvoorgzwangerschapKS233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id"
         id="d40e10144-false-d63150e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ObstanamnvoorgzwangerschapKS233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(ObstanamnvoorgzwangerschapKS233): attribuut @root MOET datatype 'uid' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="not(@extension) or string-length(@extension)&gt;0">(ObstanamnvoorgzwangerschapKS233): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(ObstanamnvoorgzwangerschapKS233): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e10160-false-d63181e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ObstanamnvoorgzwangerschapKS233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="@nullFlavor or (@code='236973005' and @codeSystem='2.16.840.1.113883.6.96')">(ObstanamnvoorgzwangerschapKS233): de elementwaarde MOET een zijn van 'code '236973005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]
Item: (Geboorteplacenta)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]
Item: (Geboorteplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="string(@classCode) = ('OBS')">(Geboorteplacenta): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="string(@moodCode) = ('EVN')">(Geboorteplacenta): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']) &gt;= 1">(Geboorteplacenta): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']) &lt;= 1">(Geboorteplacenta): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Geboorteplacenta): element hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Geboorteplacenta): element hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Geboorteplacenta): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Geboorteplacenta): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']
Item: (Geboorteplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Geboorteplacenta): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900214')">(Geboorteplacenta): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900214' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Geboorteplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:code[(@code = 'AfterBirthMethod' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Geboorteplacenta): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="@nullFlavor or (@code='AfterBirthMethod' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Geboorteplacenta): de elementwaarde MOET een zijn van 'code 'AfterBirthMethod' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900214
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Geboorteplacenta)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900214']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Geboorteplacenta): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.22 GeboortePlacenta (2013-01-10T12:31:24)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.22-2013-01-10T123124.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Geboorteplacenta): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.22 GeboortePlacenta (2013-01-10T12:31:24).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900214-2016-12-06T101905.html"
              test="@xsi:type">(Geboorteplacenta): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900900
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]
Item: (HoeveelheidBloedverlies_2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900900
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]
Item: (HoeveelheidBloedverlies_2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="string(@classCode) = ('OBS')">(HoeveelheidBloedverlies_2): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="string(@moodCode) = ('EVN')">(HoeveelheidBloedverlies_2): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']) &gt;= 1">(HoeveelheidBloedverlies_2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']) &lt;= 1">(HoeveelheidBloedverlies_2): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(HoeveelheidBloedverlies_2): element hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(HoeveelheidBloedverlies_2): element hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &gt;= 1">(HoeveelheidBloedverlies_2): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &lt;= 1">(HoeveelheidBloedverlies_2): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900900
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']
Item: (HoeveelheidBloedverlies_2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(HoeveelheidBloedverlies_2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900900')">(HoeveelheidBloedverlies_2): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900900' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900900
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (HoeveelheidBloedverlies_2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:code[(@code = '364332008' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(HoeveelheidBloedverlies_2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="@nullFlavor or (@code='364332008' and @codeSystem='2.16.840.1.113883.6.96')">(HoeveelheidBloedverlies_2): de elementwaarde MOET een zijn van 'code '364332008' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900900
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]
Item: (HoeveelheidBloedverlies_2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900900']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="(@nullFlavor or (@unit='ml'))">(HoeveelheidBloedverlies_2): value MOET eenheid 'ml' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="(@nullFlavor or (number(@value)&gt;=0))">(HoeveelheidBloedverlies_2): value MOET in bereik [0..] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(HoeveelheidBloedverlies_2): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(HoeveelheidBloedverlies_2): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="@xsi:type">(HoeveelheidBloedverlies_2): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(HoeveelheidBloedverlies_2): attribuut @unit MOET datatype 'cs' hebben  - '
<value-of select="@unit"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900900-2016-12-06T102207.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(HoeveelheidBloedverlies_2): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901095
Context: *[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]
Item: (ObstanamnvoorgzwangerschapKS233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]]/hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901095']]/hl7:component[hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '236973005' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.html"
              test="string(@typeCode) = ('COMP')">(ObstanamnvoorgzwangerschapKS233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
</pattern>
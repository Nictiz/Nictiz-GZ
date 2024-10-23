<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901102
Name: Baring Kernset
Description: Groepering per baring - het geboren laten worden van één uitkomst (kind). Kernset versie.
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Baring Kernset</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]"
         id="d40e10987-false-d83478e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]) &lt;= 1">(BaringPRNKernset233): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]"
         id="d40e11089-false-d83653e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@classCode) = ('PROC')">(BaringPRNKernset233): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@moodCode) = ('EVN')">(BaringPRNKernset233): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']) &gt;= 1">(BaringPRNKernset233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']) &lt;= 1">(BaringPRNKernset233): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(BaringPRNKernset233): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(BaringPRNKernset233): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &gt;= 1">(BaringPRNKernset233): element hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &lt;= 1">(BaringPRNKernset233): element hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]) &lt;= 1">(BaringPRNKernset233): element hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(BaringPRNKernset233): element hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(BaringPRNKernset233): element hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]) &lt;= 1">(BaringPRNKernset233): element hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901106']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901106']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]) &lt;= 1">(BaringPRNKernset233): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']"
         id="d40e11095-false-d84026e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901102')">(BaringPRNKernset233): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901102' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:id[@nullFlavor = 'NI']
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:id[@nullFlavor = 'NI']"
         id="d40e11100-false-d84045e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@nullFlavor) = ('NI')">(BaringPRNKernset233): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]"
         id="d40e11105-false-d84064e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BaringPRNKernset233): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="@nullFlavor or (@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(BaringPRNKernset233): de elementwaarde MOET een zijn van 'code 'Baring' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]
Item: (UitkomstperkindsubjectPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]"
         id="d84078e5-false-d84092e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@typeCode) = ('SBJ')">(UitkomstperkindsubjectPRNKernset): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &gt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (UitkomstperkindsubjectPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d84078e51-false-d84134e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@classCode) = ('PRS')">(UitkomstperkindsubjectPRNKernset): de waarde van classCode MOET 'PRS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &gt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (UitkomstperkindsubjectPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d84078e55-false-d84185e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(UitkomstperkindsubjectPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(UitkomstperkindsubjectPRNKernset): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (UitkomstperkindsubjectPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d84078e60-false-d84211e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@classCode) = ('PSN')">(UitkomstperkindsubjectPRNKernset): de waarde van classCode MOET 'PSN' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@determinerCode) = ('INSTANCE')">(UitkomstperkindsubjectPRNKernset): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="hl7:deceasedInd[string(@value)='true'] or not(hl7:deceasedTime)">(UitkomstperkindsubjectPRNKernset): Datum perinatale sterfte: deceasedTime is only applicable when deceasedInd=true</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.6.3']) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:id[@root = '2.16.840.1.113883.2.4.6.3'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:birthTime) &gt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:birthTime is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:birthTime) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:birthTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:deceasedInd[not(@nullFlavor)]) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:deceasedInd[not(@nullFlavor)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="count(hl7:deceasedTime) &lt;= 1">(UitkomstperkindsubjectPRNKernset): element hl7:deceasedTime komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900987
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']
Item: (UitkomstperkindsubjectPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:id[@root = '2.16.840.1.113883.2.4.6.3']"
         id="d84078e66-false-d84292e0">
      <extends rule="II.NL.BSN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(UitkomstperkindsubjectPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900987-2014-11-03T214710.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.3')">(UitkomstperkindsubjectPRNKernset): de waarde van root MOET '2.16.840.1.113883.2.4.6.3' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900259
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:birthTime
Item: (GeboortedatumKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:birthTime"
         id="d84305e5-false-d84313e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900259-2009-10-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(GeboortedatumKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900259-2009-10-01T000000.html"
              test="not(*)">(GeboortedatumKind): 
<value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900432
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:deceasedInd[not(@nullFlavor)]
Item: (Perinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:deceasedInd[not(@nullFlavor)]"
         id="d84324e5-false-d84332e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900432-2009-10-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')">(Perinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:BL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900443
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:deceasedTime
Item: (Datumperinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:deceasedTime"
         id="d84339e5-false-d84347e0">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900443-2009-10-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(Datumperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900443-2009-10-01T000000.html"
              test="not(*)">(Datumperinatalesterfte): 
<value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Rolsupervisor)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d84358e7-false-d84368e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="string(@typeCode) = ('RESP')">(Rolsupervisor): de waarde van typeCode MOET 'RESP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Rolsupervisor): element hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Rolsupervisor): element hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Rolsupervisor)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d84358e22-false-d84402e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="string(@classCode) = ('ASSIGNED')">(Rolsupervisor): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Rolsupervisor): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Rolsupervisor): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900990
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Rolsupervisor)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:responsibleParty[hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:assignedEntity[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d84358e26-false-d84436e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Rolsupervisor): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Rolsupervisor): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.193 Eindverantwoordelijke (2.2) (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.193-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900990-2014-11-04T003617.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Rolsupervisor): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.193 Eindverantwoordelijke (2.2) (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (RolaanpakkerkindPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d84459e7-false-d84469e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@typeCode) = ('PRF')">(RolaanpakkerkindPRNKernset): de waarde van typeCode MOET 'PRF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(RolaanpakkerkindPRNKernset): element hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(RolaanpakkerkindPRNKernset): element hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (RolaanpakkerkindPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d84459e24-false-d84503e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@classCode) = ('ASSIGNED')">(RolaanpakkerkindPRNKernset): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(RolaanpakkerkindPRNKernset): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(RolaanpakkerkindPRNKernset): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:agentPerson[@nullFlavor = 'NI']) &gt;= 1">(RolaanpakkerkindPRNKernset): element hl7:agentPerson[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="count(hl7:agentPerson[@nullFlavor = 'NI']) &lt;= 1">(RolaanpakkerkindPRNKernset): element hl7:agentPerson[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (RolaanpakkerkindPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d84459e28-false-d84552e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RolaanpakkerkindPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(RolaanpakkerkindPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.186 RolZorgverlener22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(RolaanpakkerkindPRNKernset): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.186 RolZorgverlener22 (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900991
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:agentPerson[@nullFlavor = 'NI']
Item: (RolaanpakkerkindPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:performer[hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:responsibleParty[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.186-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:agentPerson[@nullFlavor = 'NI']"
         id="d84459e35-false-d84581e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900991-2014-11-04T004426.html"
              test="string(@nullFlavor) = ('NI')">(RolaanpakkerkindPRNKernset): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]
Item: (Faciliteitwerkelijkeplaatsbaring)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]"
         id="d84590e7-false-d84600e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="string(@typeCode) = ('ELOC')">(Faciliteitwerkelijkeplaatsbaring): de waarde van typeCode MOET 'ELOC' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:healthCareFacility[@classCode = 'DSDLOC']) &gt;= 1">(Faciliteitwerkelijkeplaatsbaring): element hl7:healthCareFacility[@classCode = 'DSDLOC'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:healthCareFacility[@classCode = 'DSDLOC']) &lt;= 1">(Faciliteitwerkelijkeplaatsbaring): element hl7:healthCareFacility[@classCode = 'DSDLOC'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']
Item: (Faciliteitwerkelijkeplaatsbaring)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']"
         id="d84590e22-false-d84634e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="string(@classCode) = ('DSDLOC')">(Faciliteitwerkelijkeplaatsbaring): de waarde van classCode MOET 'DSDLOC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &lt;= 1">(Faciliteitwerkelijkeplaatsbaring): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Faciliteitwerkelijkeplaatsbaring): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']"
         id="d84669e5-false-d84677e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900233
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Faciliteitwerkelijkeplaatsbaring)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:location[@typeCode = 'ELOC'][hl7:healthCareFacility[@classCode = 'DSDLOC']]/hl7:healthCareFacility[@classCode = 'DSDLOC']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d84590e30-false-d84703e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Faciliteitwerkelijkeplaatsbaring): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Faciliteitwerkelijkeplaatsbaring): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.178 WerkelijkePlaatsBaring22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.178-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900233-2014-11-04T005410.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Faciliteitwerkelijkeplaatsbaring): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.178 WerkelijkePlaatsBaring22 (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]
Item: (Geslachtmedischeobservatie)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]
Item: (Geslachtmedischeobservatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@classCode) = ('OBS')">(Geslachtmedischeobservatie): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@moodCode) = ('EVN')">(Geslachtmedischeobservatie): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']) &gt;= 1">(Geslachtmedischeobservatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']) &lt;= 1">(Geslachtmedischeobservatie): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Geslachtmedischeobservatie): element hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Geslachtmedischeobservatie): element hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Geslachtmedischeobservatie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Geslachtmedischeobservatie): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']
Item: (Geslachtmedischeobservatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Geslachtmedischeobservatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900255')">(Geslachtmedischeobservatie): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900255' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Geslachtmedischeobservatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:code[(@code = '46098-0' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Geslachtmedischeobservatie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@nullFlavor or (@code='46098-0' and @codeSystem='2.16.840.1.113883.6.1')">(Geslachtmedischeobservatie): de elementwaarde MOET een zijn van 'code '46098-0' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900255
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Geslachtmedischeobservatie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900255']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Geslachtmedischeobservatie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.110 GenderMedisch (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.110-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Geslachtmedischeobservatie): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.110 GenderMedisch (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900255-2016-12-06T133653.html"
              test="@xsi:type">(Geslachtmedischeobservatie): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]
Item: (Rangnummerkind)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]
Item: (Rangnummerkind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@classCode) = ('OBS')">(Rangnummerkind): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@moodCode) = ('EVN')">(Rangnummerkind): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']) &gt;= 1">(Rangnummerkind): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']) &lt;= 1">(Rangnummerkind): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Rangnummerkind): element hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Rangnummerkind): element hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]) &gt;= 1">(Rangnummerkind): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]) &lt;= 1">(Rangnummerkind): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']
Item: (Rangnummerkind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Rangnummerkind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900400')">(Rangnummerkind): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900400' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Rangnummerkind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:code[(@code = 'BirthOrderNumber' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Rangnummerkind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="@nullFlavor or (@code='BirthOrderNumber' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Rangnummerkind): de elementwaarde MOET een zijn van 'code 'BirthOrderNumber' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900400
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]
Item: (Rangnummerkind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900400']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="(@nullFlavor or (number(@value)&gt;=1 and number(@value)&lt;=9))">(Rangnummerkind): value MOET in bereik [1..9] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Rangnummerkind): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900400-2016-12-06T133754.html"
              test="@xsi:type">(Rangnummerkind): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]
Item: (Bijstimulatietoegediend)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]
Item: (Bijstimulatietoegediend)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@classCode) = ('OBS')">(Bijstimulatietoegediend): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@moodCode) = ('EVN')">(Bijstimulatietoegediend): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']) &gt;= 1">(Bijstimulatietoegediend): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']) &lt;= 1">(Bijstimulatietoegediend): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &gt;= 1">(Bijstimulatietoegediend): element hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &lt;= 1">(Bijstimulatietoegediend): element hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Bijstimulatietoegediend): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Bijstimulatietoegediend): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']
Item: (Bijstimulatietoegediend)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Bijstimulatietoegediend): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900217')">(Bijstimulatietoegediend): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900217' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]
Item: (Bijstimulatietoegediend)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:code[(@code = 'PRN540201' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Bijstimulatietoegediend): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="@nullFlavor or (@code='PRN540201' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(Bijstimulatietoegediend): de elementwaarde MOET een zijn van 'code 'PRN540201' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900217
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Bijstimulatietoegediend)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900217']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900217-2016-12-06T130714.html"
              test="@xsi:type">(Bijstimulatietoegediend): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]
Item: (Tijdstipbrekenvliezen)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]
Item: (Tijdstipbrekenvliezen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@classCode) = ('OBS')">(Tijdstipbrekenvliezen): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@moodCode) = ('EVN')">(Tijdstipbrekenvliezen): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']) &gt;= 1">(Tijdstipbrekenvliezen): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']) &lt;= 1">(Tijdstipbrekenvliezen): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Tijdstipbrekenvliezen): element hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Tijdstipbrekenvliezen): element hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &gt;= 1">(Tijdstipbrekenvliezen): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &lt;= 1">(Tijdstipbrekenvliezen): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']
Item: (Tijdstipbrekenvliezen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Tijdstipbrekenvliezen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900198')">(Tijdstipbrekenvliezen): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900198' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Tijdstipbrekenvliezen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:code[(@code = '289251005' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Tijdstipbrekenvliezen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="@nullFlavor or (@code='289251005' and @codeSystem='2.16.840.1.113883.6.96')">(Tijdstipbrekenvliezen): de elementwaarde MOET een zijn van 'code '289251005' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900198
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]
Item: (Tijdstipbrekenvliezen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900198']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="not(*)">(Tijdstipbrekenvliezen): 
<value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="@nullFlavor or ($xsiLocalName='TS' and $xsiLocalNS='urn:hl7-org:v3')">(Tijdstipbrekenvliezen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900198-2016-12-06T133840.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Tijdstipbrekenvliezen): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]
Item: (Kleurvruchtwater)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]
Item: (Kleurvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@classCode) = ('OBS')">(Kleurvruchtwater): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@moodCode) = ('EVN')">(Kleurvruchtwater): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']) &gt;= 1">(Kleurvruchtwater): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']) &lt;= 1">(Kleurvruchtwater): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Kleurvruchtwater): element hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Kleurvruchtwater): element hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Kleurvruchtwater): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Kleurvruchtwater): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']
Item: (Kleurvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Kleurvruchtwater): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900199')">(Kleurvruchtwater): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900199' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Kleurvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:code[(@code = '38386-9' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Kleurvruchtwater): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@nullFlavor or (@code='38386-9' and @codeSystem='2.16.840.1.113883.6.1')">(Kleurvruchtwater): de elementwaarde MOET een zijn van 'code '38386-9' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900199
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Kleurvruchtwater)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900199']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Kleurvruchtwater): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.20 KleurVruchtwater (2013-01-10T12:22:05)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.20-2013-01-10T122205.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Kleurvruchtwater): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.20 KleurVruchtwater (2013-01-10T12:22:05).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900199-2016-12-06T133935.html"
              test="@xsi:type">(Kleurvruchtwater): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]
Item: (Tijdstipactiefmeepersen)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]
Item: (Tijdstipactiefmeepersen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@classCode) = ('OBS')">(Tijdstipactiefmeepersen): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@moodCode) = ('EVN')">(Tijdstipactiefmeepersen): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']) &gt;= 1">(Tijdstipactiefmeepersen): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']) &lt;= 1">(Tijdstipactiefmeepersen): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(Tijdstipactiefmeepersen): element hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(Tijdstipactiefmeepersen): element hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &gt;= 1">(Tijdstipactiefmeepersen): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]) &lt;= 1">(Tijdstipactiefmeepersen): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']
Item: (Tijdstipactiefmeepersen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Tijdstipactiefmeepersen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900261')">(Tijdstipactiefmeepersen): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900261' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Tijdstipactiefmeepersen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:code[(@code = 'PRN530401' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Tijdstipactiefmeepersen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="@nullFlavor or (@code='PRN530401' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Tijdstipactiefmeepersen): de elementwaarde MOET een zijn van 'code 'PRN530401' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900261
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]
Item: (Tijdstipactiefmeepersen)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900261']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')]">
      <extends rule="TS.DATE.MIN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="not(*)">(Tijdstipactiefmeepersen): 
<value-of select="local-name()"/> met datatype TS.DATE.MIN, MAG GEEN elementen bevatten.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900261-2016-12-06T133947.html"
              test="@nullFlavor or ($xsiLocalName='TS' and $xsiLocalNS='urn:hl7-org:v3')">(Tijdstipactiefmeepersen): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]
Item: (Episiotomie23)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]
Item: (Episiotomie23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@classCode) = ('PROC')">(Episiotomie23): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@moodCode) = ('EVN')">(Episiotomie23): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Episiotomie23): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']) &gt;= 1">(Episiotomie23): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']) &lt;= 1">(Episiotomie23): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:id) &gt;= 1">(Episiotomie23): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:id) &lt;= 1">(Episiotomie23): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &gt;= 1">(Episiotomie23): element hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &lt;= 1">(Episiotomie23): element hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="count(hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Episiotomie23): element hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']
Item: (Episiotomie23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Episiotomie23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901063')">(Episiotomie23): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901063' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:id
Item: (Episiotomie23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Episiotomie23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]
Item: (Episiotomie23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:code[(@code = 'PRN540701' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Episiotomie23): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="@nullFlavor or (@code='PRN540701' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(Episiotomie23): de elementwaarde MOET een zijn van 'code 'PRN540701' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900272
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Locatieepisiotomie)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:targetSiteCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Locatieepisiotomie): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Locatieepisiotomie): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.161 EpisiotomieType (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.161-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900272-2009-10-01T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Locatieepisiotomie): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.161 EpisiotomieType (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901063
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]
Item: (Episiotomie23)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]">
      <extends rule="d85984e0-false-d85990e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901063-2016-12-06T000000.html"
              test="string(@typeCode) = ('RSON')">(Episiotomie23): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]
Item: (IndicatieEpi)
-->
   <rule fpi="RULC-1"
         id="d85984e0-false-d85990e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]) &lt;= 1">(IndicatieEpi): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]
Item: (IndicatieEpi)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@classCode) = ('OBS')">(IndicatieEpi): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@moodCode) = ('EVN')">(IndicatieEpi): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']) &gt;= 1">(IndicatieEpi): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']) &lt;= 1">(IndicatieEpi): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(IndicatieEpi): element hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(IndicatieEpi): element hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(IndicatieEpi): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']
Item: (IndicatieEpi)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(IndicatieEpi): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901064')">(IndicatieEpi): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901064' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (IndicatieEpi)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:code[(@code = '61' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IndicatieEpi): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or (@code='61' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(IndicatieEpi): de elementwaarde MOET een zijn van 'code '61' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901064
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IndicatieEpi)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901063']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901064']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(IndicatieEpi): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.210 Indicatie episiotomie (2014-12-22T15:41:15)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.210-2014-12-22T154115.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IndicatieEpi): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.210 Indicatie episiotomie (2014-12-22T15:41:15).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901064-2016-12-06T000000.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(IndicatieEpi): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]
Item: (RuggeprikGewNGekr)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]
Item: (RuggeprikGewNGekr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@classCode) = ('OBS')">(RuggeprikGewNGekr): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@moodCode) = ('EVN')">(RuggeprikGewNGekr): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']) &gt;= 1">(RuggeprikGewNGekr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']) &lt;= 1">(RuggeprikGewNGekr): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(RuggeprikGewNGekr): element hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(RuggeprikGewNGekr): element hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(RuggeprikGewNGekr): element hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="count(hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(RuggeprikGewNGekr): element hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']
Item: (RuggeprikGewNGekr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(RuggeprikGewNGekr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900992')">(RuggeprikGewNGekr): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900992' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (RuggeprikGewNGekr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:code[(@code = 'RuggeprikGewNGekr' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(RuggeprikGewNGekr): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="@nullFlavor or (@code='RuggeprikGewNGekr' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(RuggeprikGewNGekr): de elementwaarde MOET een zijn van 'code 'RuggeprikGewNGekr' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900992
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (RuggeprikGewNGekr)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900992']]/hl7:value[not(@nullFlavor)][resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900992-2016-12-06T134140.html"
              test="@xsi:type">(RuggeprikGewNGekr): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]
Item: (PijnbestrijdingPRNKernset)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode) = ('PROC')">(PijnbestrijdingPRNKernset): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode) = ('EVN')">(PijnbestrijdingPRNKernset): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@negationInd">(PijnbestrijdingPRNKernset): attribute @negationInd MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(PijnbestrijdingPRNKernset): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test=".[string(@negationInd)='true'] or hl7:methodCode">(PijnbestrijdingPRNKernset): Als er sprake is van pijnbestrijding (negationInd=false) dan de methode (hl7:methodCode) ook opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900995')">(PijnbestrijdingPRNKernset): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900995' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:id[@nullFlavor = 'NI']
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor) = ('NI')">(PijnbestrijdingPRNKernset): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:code[(@code = '278414003' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='278414003' and @codeSystem='2.16.840.1.113883.6.96')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code '278414003' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.6 PainManagementMethod (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.6-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.6 PainManagementMethod (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]">
      <extends rule="d86546e0-false-d86552e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode) = ('COMP')">(PijnbestrijdingPRNKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]
Item: (PijnbestrijdingPeriode)
-->
   <rule fpi="RULC-1"
         id="d86546e0-false-d86552e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]) &lt;= 1">(PijnbestrijdingPeriode): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]
Item: (PijnbestrijdingPeriode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@classCode) = ('OBS')">(PijnbestrijdingPeriode): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@moodCode) = ('EVN')">(PijnbestrijdingPeriode): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']) &gt;= 1">(PijnbestrijdingPeriode): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']) &lt;= 1">(PijnbestrijdingPeriode): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(PijnbestrijdingPeriode): element hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(PijnbestrijdingPeriode): element hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]) &lt;= 1">(PijnbestrijdingPeriode): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']
Item: (PijnbestrijdingPeriode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PijnbestrijdingPeriode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901022')">(PijnbestrijdingPeriode): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901022' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (PijnbestrijdingPeriode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:code[(@code = 'PijnbestrPeriode' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPeriode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or (@code='PijnbestrPeriode' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(PijnbestrijdingPeriode): de elementwaarde MOET een zijn van 'code 'PijnbestrPeriode' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901022
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]
Item: (PijnbestrijdingPeriode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901022']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.208-2014-11-13T155707.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PijnbestrijdingPeriode): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.208 Pijnbestrijding periode (2014-11-13T15:57:07)'.</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901022-2016-12-06T145212.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(PijnbestrijdingPeriode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode) = ('COMP')">(PijnbestrijdingPRNKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode) = ('PROC')">(PijnbestrijdingPRNKernset): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode) = ('EVN')">(PijnbestrijdingPRNKernset): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id[@nullFlavor = 'NI']
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor) = ('NI')">(PijnbestrijdingPRNKernset): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='PijnbestrOverig' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code 'PijnbestrOverig' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.7 PainManagementAlternativeMethod (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.7-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.7 PainManagementAlternativeMethod (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@typeCode) = ('COMP')">(PijnbestrijdingPRNKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@classCode) = ('PROC')">(PijnbestrijdingPRNKernset): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@moodCode) = ('EVN')">(PijnbestrijdingPRNKernset): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(PijnbestrijdingPRNKernset): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="string(@nullFlavor) = ('NI')">(PijnbestrijdingPRNKernset): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or (@code='416118004' and @codeSystem='2.16.840.1.113883.6.96')">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van 'code '416118004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900995
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PijnbestrijdingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900995']]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]]/hl7:procedure[hl7:code[(@code = 'PijnbestrOverig' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]]/hl7:outboundRelationship[hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]]/hl7:procedure[hl7:code[(@code = '416118004' and @codeSystem = '2.16.840.1.113883.6.96')]]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PijnbestrijdingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PijnbestrijdingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.8 Administration (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.8-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900995-2016-12-06T134416.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PijnbestrijdingPRNKernset): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.8 Administration (DYNAMISCH).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]">
      <extends rule="d87055e0-false-d87061e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]
Item: (SedatieJaNee)
-->
   <rule fpi="RULC-1"
         id="d87055e0-false-d87061e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]) &lt;= 1">(SedatieJaNee): element hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]
Item: (SedatieJaNee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@classCode) = ('PROC')">(SedatieJaNee): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@moodCode) = ('EVN')">(SedatieJaNee): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(SedatieJaNee): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']) &gt;= 1">(SedatieJaNee): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']) &lt;= 1">(SedatieJaNee): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(SedatieJaNee): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(SedatieJaNee): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(SedatieJaNee): element hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="count(hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(SedatieJaNee): element hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']
Item: (SedatieJaNee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(SedatieJaNee): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900996')">(SedatieJaNee): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900996' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:id[@nullFlavor = 'NI']
Item: (SedatieJaNee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(SedatieJaNee): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="string(@nullFlavor) = ('NI')">(SedatieJaNee): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900996
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (SedatieJaNee)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900996']]/hl7:code[(@code = '72641008' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(SedatieJaNee): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900996-2016-12-06T134556.html"
              test="@nullFlavor or (@code='72641008' and @codeSystem='2.16.840.1.113883.6.96')">(SedatieJaNee): de elementwaarde MOET een zijn van 'code '72641008' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (Apgarscorena5min)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@classCode) = ('OBS')">(Apgarscorena5min): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@moodCode) = ('EVN')">(Apgarscorena5min): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']) &gt;= 1">(Apgarscorena5min): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']) &lt;= 1">(Apgarscorena5min): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Apgarscorena5min): element hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Apgarscorena5min): element hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]) &gt;= 1">(Apgarscorena5min): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]) &lt;= 1">(Apgarscorena5min): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Apgarscorena5min): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900294')">(Apgarscorena5min): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900294' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Apgarscorena5min): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@nullFlavor or (@code='9274-2' and @codeSystem='2.16.840.1.113883.6.1')">(Apgarscorena5min): de elementwaarde MOET een zijn van 'code '9274-2' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]">
      <extends rule="INT"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and number(@value)&lt;=10))">(Apgarscorena5min): value MOET in bereik [0..10] liggen  </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="not(@value) or matches(@value, '^-?[1-9]\d*$|^+?\d*$')">(Apgarscorena5min): @value is geen geldig INT getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900294-2016-12-06T103247.html"
              test="@xsi:type">(Apgarscorena5min): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]
Item: (Liggingbijgeboorte)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]
Item: (Liggingbijgeboorte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@classCode) = ('OBS')">(Liggingbijgeboorte): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@moodCode) = ('EVN')">(Liggingbijgeboorte): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']) &gt;= 1">(Liggingbijgeboorte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']) &lt;= 1">(Liggingbijgeboorte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(Liggingbijgeboorte): element hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(Liggingbijgeboorte): element hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Liggingbijgeboorte): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Liggingbijgeboorte): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']
Item: (Liggingbijgeboorte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Liggingbijgeboorte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900359')">(Liggingbijgeboorte): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900359' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Liggingbijgeboorte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:code[(@code = 'LigGbrt' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Liggingbijgeboorte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@nullFlavor or (@code='LigGbrt' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Liggingbijgeboorte): de elementwaarde MOET een zijn van 'code 'LigGbrt' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900359
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Liggingbijgeboorte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900359']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Liggingbijgeboorte): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.177 LiggingBijGeboorte22 (2013-12-24T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.177-2013-12-24T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Liggingbijgeboorte): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.177 LiggingBijGeboorte22 (2013-12-24T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900359-2016-12-06T134724.html"
              test="@xsi:type">(Liggingbijgeboorte): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@classCode) = ('PROC')">(VaginalekunstverlossingPRNKernset): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@moodCode) = ('EVN')">(VaginalekunstverlossingPRNKernset): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(VaginalekunstverlossingPRNKernset): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@nullFlavor) = ('NI') or not(@nullFlavor)">(VaginalekunstverlossingPRNKernset): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']) &gt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']) &lt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:id) &gt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:id) &lt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]) &lt;= 1">(VaginalekunstverlossingPRNKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(VaginalekunstverlossingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900999')">(VaginalekunstverlossingPRNKernset): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900999' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:id
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:id">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(VaginalekunstverlossingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:code[(@code = '3311000146109' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(VaginalekunstverlossingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="@nullFlavor or (@code='3311000146109' and @codeSystem='2.16.840.1.113883.6.96')">(VaginalekunstverlossingPRNKernset): de elementwaarde MOET een zijn van 'code '3311000146109' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:methodCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(VaginalekunstverlossingPRNKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(VaginalekunstverlossingPRNKernset): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.181 VaginaleKunstverlossing22 (2014-01-02T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.181-2014-01-02T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(VaginalekunstverlossingPRNKernset): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.181 VaginaleKunstverlossing22 (2014-01-02T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900999
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]
Item: (VaginalekunstverlossingPRNKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900999-2016-12-06T134830.html"
              test="string(@typeCode) = ('OUTC')">(VaginalekunstverlossingPRNKernset): de waarde van typeCode MOET 'OUTC' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]
Item: (Succesvaginalekunstverlossing)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]
Item: (Succesvaginalekunstverlossing)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@classCode) = ('OBS')">(Succesvaginalekunstverlossing): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@moodCode) = ('EVN')">(Succesvaginalekunstverlossing): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']) &gt;= 1">(Succesvaginalekunstverlossing): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']) &lt;= 1">(Succesvaginalekunstverlossing): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Succesvaginalekunstverlossing): element hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Succesvaginalekunstverlossing): element hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(Succesvaginalekunstverlossing): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(Succesvaginalekunstverlossing): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']
Item: (Succesvaginalekunstverlossing)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Succesvaginalekunstverlossing): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900275')">(Succesvaginalekunstverlossing): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900275' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Succesvaginalekunstverlossing)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:code[(@code = 'KuVerlSucces' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Succesvaginalekunstverlossing): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="@nullFlavor or (@code='KuVerlSucces' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Succesvaginalekunstverlossing): de elementwaarde MOET een zijn van 'code 'KuVerlSucces' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900275
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (Succesvaginalekunstverlossing)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900999']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900275']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="@xsi:type">(Succesvaginalekunstverlossing): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900275-2016-12-15T134619.html"
              test="not(@value='true') or (@value='true' and ../../../../../hl7:outboundRelationship/hl7:observation[hl7:code/@code='364336006']/hl7:value/(@code='8561000146109' or @code='3311000146109'))">(Succesvaginalekunstverlossing): Alleen een succesvolle vaginale kunstverlossing opnemen als type partus = vaginale kunstverlossing.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901106']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901106']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]
Item: (Overigeinterventies)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]
Item: (Overigeinterventies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@classCode) = ('OBS')">(Overigeinterventies): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@moodCode) = ('EVN')">(Overigeinterventies): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="not(hl7:value) or (@negationInd='false' or not(@negationInd) and not(@nullFlavor))">(Overigeinterventies): Geen value opnemen wanneer er geen overige interventies zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']) &gt;= 1">(Overigeinterventies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']) &lt;= 1">(Overigeinterventies): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &gt;= 1">(Overigeinterventies): element hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]) &lt;= 1">(Overigeinterventies): element hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Overigeinterventies): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']
Item: (Overigeinterventies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Overigeinterventies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900893')">(Overigeinterventies): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900893' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]
Item: (Overigeinterventies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:code[(@code = 'Interv' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Overigeinterventies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or (@code='Interv' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.1')">(Overigeinterventies): de elementwaarde MOET een zijn van 'code 'Interv' codeSystem '2.16.840.1.113883.2.4.3.22.1.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900893
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Overigeinterventies)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900893']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Overigeinterventies): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.20 Overige interventies (2016-11-23T20:45:23)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.20-2016-11-23T204523.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Overigeinterventies): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.20 Overige interventies (2016-11-23T20:45:23).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900893-2016-12-06T135049.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(Overigeinterventies): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]
Item: (Geboortegewicht)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]
Item: (Geboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@classCode) = ('OBS')">(Geboortegewicht): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@moodCode) = ('EVN')">(Geboortegewicht): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']) &gt;= 1">(Geboortegewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']) &lt;= 1">(Geboortegewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &gt;= 1">(Geboortegewicht): element hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]) &lt;= 1">(Geboortegewicht): element hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &gt;= 1">(Geboortegewicht): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &lt;= 1">(Geboortegewicht): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']
Item: (Geboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Geboortegewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900425')">(Geboortegewicht): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900425' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Geboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:code[(@code = '8339-4' and @codeSystem = '2.16.840.1.113883.6.1')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Geboortegewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="@nullFlavor or (@code='8339-4' and @codeSystem='2.16.840.1.113883.6.1')">(Geboortegewicht): de elementwaarde MOET een zijn van 'code '8339-4' codeSystem '2.16.840.1.113883.6.1''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900425
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]
Item: (Geboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900425']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]">
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="(@nullFlavor or (@unit='g'))">(Geboortegewicht): value MOET eenheid 'g' gebruiken en </assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="(@nullFlavor or (number(@value)&gt;=0 and (matches(string(@value), '^[-+]?\d*$'))))">(Geboortegewicht): value MOET in bereik [0..] liggen  en minimaal 0 decimalen nauwkeurig zijn </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(Geboortegewicht): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(Geboortegewicht): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="@xsi:type">(Geboortegewicht): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900425-2016-12-06T135217.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(Geboortegewicht): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]">
      <extends rule="d88377e0-false-d88383e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]
Item: (CongenitaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         id="d88377e0-false-d88383e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]) &lt;= 1">(CongenitaleafwijkingenNU): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]
Item: (CongenitaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@classCode) = ('OBS')">(CongenitaleafwijkingenNU): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@moodCode) = ('EVN')">(CongenitaleafwijkingenNU): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(CongenitaleafwijkingenNU): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI','UNK')))])">(CongenitaleafwijkingenNU): de waarde van nullFlavor MOET 'code NI of code UNK' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor and @negationInd)">(CongenitaleafwijkingenNU): Er mag ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@negationInd='true' or @nullFlavor or hl7:value or ../../*/hl7:observation[hl7:code[@code='74345006'][@codeSystem='2.16.840.1.113883.6.96']]/hl7:value">(CongenitaleafwijkingenNU): Als er sprake is van congenitale afwijkingen, ook een waarde voor de congenitale óf chromosomale afwijking opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="(not(@negationInd='true') and not(@nullFlavor)) or ((@negationInd='true' or @nullFlavor) and not(../../*/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')][(not(@negationInd) or (@negationInd='false')) and not(@nullFlavor)]))">(CongenitaleafwijkingenNU): Als er géén sprake is van congenitale afwijkingen, kan er niet tegelijkertijd tóch een congenitale afwijking zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']) &gt;= 1">(CongenitaleafwijkingenNU): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']) &lt;= 1">(CongenitaleafwijkingenNU): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(CongenitaleafwijkingenNU): element hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(CongenitaleafwijkingenNU): element hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(CongenitaleafwijkingenNU): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']
Item: (CongenitaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(CongenitaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901017')">(CongenitaleafwijkingenNU): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901017' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (CongenitaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '276654001' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(CongenitaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or (@code='443341004' and @codeSystem='2.16.840.1.113883.6.96') or (@code='276654001' and @codeSystem='2.16.840.1.113883.6.96')">(CongenitaleafwijkingenNU): de elementwaarde MOET een zijn van 'code '443341004' codeSystem '2.16.840.1.113883.6.96' of code '276654001' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901017
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (CongenitaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901017']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(CongenitaleafwijkingenNU): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.196 Congenitale afwijking (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(CongenitaleafwijkingenNU): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.196 Congenitale afwijking (DYNAMISCH).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.11.196-DYNAMIC.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(CongenitaleafwijkingenNU): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(CongenitaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901017-2016-12-06T135251.html"
              test="@nullFlavor or not(../(@nullFlavor or @negationInd='true'))">(CongenitaleafwijkingenNU): Alleen een waarde voor congenitale afwijking opnemen als er ook sprake is van een congenitale afwijking.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]">
      <extends rule="d88583e0-false-d88589e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         id="d88583e0-false-d88589e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]) &lt;= 1">(ChromosomaleafwijkingenNU): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@classCode) = ('OBS')">(ChromosomaleafwijkingenNU): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@moodCode) = ('EVN')">(ChromosomaleafwijkingenNU): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(ChromosomaleafwijkingenNU): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI','UNK')))])">(ChromosomaleafwijkingenNU): de waarde van nullFlavor MOET 'code NI of code UNK' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or ../hl7:observation/@nullFlavor or hl7:value">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, ook een waarde opnemen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor and @negationInd)">(ChromosomaleafwijkingenNU): Er moet ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or @negationInd='true' or not(exists(../../hl7:outboundRelationship/hl7:observation[hl7:code[@code=('443341004', '276654001')][@codeSystem='2.16.840.1.113883.6.96']][@negationInd='true' or @nullFlavor]))">(ChromosomaleafwijkingenNU): Chromosomale afwijking(en) zijn alleen van toepassing wanneer er sprake is van congenitale afwijkingen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']) &gt;= 1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']) &lt;= 1">(ChromosomaleafwijkingenNU): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(ChromosomaleafwijkingenNU): element hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(ChromosomaleafwijkingenNU): element hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(ChromosomaleafwijkingenNU): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']
Item: (ChromosomaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ChromosomaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901016')">(ChromosomaleafwijkingenNU): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901016' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ChromosomaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or (@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van 'code '74345006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901016
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ChromosomaleafwijkingenNU)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901016']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ChromosomaleafwijkingenNU): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.198-2016-10-26T164418.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ChromosomaleafwijkingenNU): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.198 ChromosomaleAfwijkingen (2016-10-26T16:44:18).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(ChromosomaleafwijkingenNU): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="not(../(@nullFlavor or @negationInd='true'))">(ChromosomaleafwijkingenNU): Alleen een waarde voor chromosomale afwijking opnemen als er ook sprake is van een chromosomale afwijking.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901016-2016-12-06T135419.html"
              test="../hl7:observation/@negationInd='true' or not(exists(../../*/hl7:observation[hl7:code[@code=('443341004', '276654001')][@codeSystem='2.16.840.1.113883.6.96']][not(@negationInd='true' or @nullFlavor)]))">(ChromosomaleafwijkingenNU): Als er sprake is van Chromosomale afwijkingen, moet er ook sprake zijn van congenitale afwijkingen (dus congenitale afwijkingen moet waarde 'true' hebben).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]">
      <extends rule="d88780e0-false-d88786e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]
Item: (ProblematiekKind)
-->
   <rule fpi="RULC-1"
         id="d88780e0-false-d88786e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]) &lt;= 1">(ProblematiekKind): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]
Item: (ProblematiekKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@classCode) = ('OBS')">(ProblematiekKind): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@moodCode) = ('EVN')">(ProblematiekKind): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']) &gt;= 1">(ProblematiekKind): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']) &lt;= 1">(ProblematiekKind): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(ProblematiekKind): element hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(ProblematiekKind): element hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(ProblematiekKind): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']
Item: (ProblematiekKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ProblematiekKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901019')">(ProblematiekKind): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901019' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (ProblematiekKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:code[(@code = 'ProblematiekKind' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(ProblematiekKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or (@code='ProblematiekKind' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(ProblematiekKind): de elementwaarde MOET een zijn van 'code 'ProblematiekKind' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901019
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/exception/@code]
Item: (ProblematiekKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901019']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(ProblematiekKind): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.12 Problematiek kind (2021-07-06T06:27:34)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(ProblematiekKind): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.12 Problematiek kind (2021-07-06T06:27:34).</assert>
      <report fpi="CD-DEPR-BSP"
              role="warning"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.12-2021-07-06T062734.xml')//valueSet[1]/conceptList/concept[@type='D'][@code = $theCode][@codeSystem = $theCodeSystem])">(ProblematiekKind): element hl7:value is gecodeerd met bindingssterkte 'required' en bevat een code die verouderd is.</report>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901019-2016-12-06T135430.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(ProblematiekKind): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]">
      <extends rule="d88966e0-false-d88972e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         id="d88966e0-false-d88972e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@classCode) = ('OBS')">(BetrokkenheidKinderarts): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@moodCode) = ('EVN')">(BetrokkenheidKinderarts): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(BetrokkenheidKinderarts): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']) &gt;= 1">(BetrokkenheidKinderarts): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']) &lt;= 1">(BetrokkenheidKinderarts): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(BetrokkenheidKinderarts): element hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:performer[@typeCode = 'SPRF']) &lt;= 1">(BetrokkenheidKinderarts): element hl7:performer[@typeCode = 'SPRF'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BetrokkenheidKinderarts): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901020')">(BetrokkenheidKinderarts): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901020' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:code[(@code = 'KinderartsBetrokken' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BetrokkenheidKinderarts): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@nullFlavor or (@code='KinderartsBetrokken' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(BetrokkenheidKinderarts): de elementwaarde MOET een zijn van 'code 'KinderartsBetrokken' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BetrokkenheidKinderarts): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.183 AndereZorgverlenerBetrokken22 (DYNAMISCH)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.183-DYNAMIC.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(BetrokkenheidKinderarts): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.183 AndereZorgverlenerBetrokken22 (DYNAMISCH).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@xsi:type">(BetrokkenheidKinderarts): attribute @xsi:type MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@typeCode) = ('SPRF')">(BetrokkenheidKinderarts): de waarde van typeCode MOET 'SPRF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:time) &lt;= 1">(BetrokkenheidKinderarts): element hl7:time komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:time
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:time">
      <extends rule="TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')">(BetrokkenheidKinderarts): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="not(*)">(BetrokkenheidKinderarts): 
<value-of select="local-name()"/> met datatype TS, MAG GEEN elementen bevatten.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="@value">(BetrokkenheidKinderarts): attribute @value MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@classCode) = ('ASSIGNED')">(BetrokkenheidKinderarts): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]) &gt;= 1">(BetrokkenheidKinderarts): element hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]) &lt;= 1">(BetrokkenheidKinderarts): element hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@code) = ('01.019')">(BetrokkenheidKinderarts): de waarde van code MOET '01.019' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.15.111')">(BetrokkenheidKinderarts): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.15.111' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@classCode) = ('ORG')">(BetrokkenheidKinderarts): de waarde van classCode MOET 'ORG' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@determinerCode) = ('INSTANCE')">(BetrokkenheidKinderarts): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &gt;= 1">(BetrokkenheidKinderarts): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="count(hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']) &lt;= 1">(BetrokkenheidKinderarts): element hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901018
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']
Item: (ZorginstellingLVRID)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:performer[@typeCode = 'SPRF']/hl7:assignedEntity[hl7:code[(@code = '01.019' and @codeSystem = '2.16.840.1.113883.2.4.15.111')]]/hl7:representedOrganization[hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']]/hl7:id[@root = '2.16.840.1.113883.2.4.3.22.96.6']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(ZorginstellingLVRID): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.22.96.6')">(ZorginstellingLVRID): de waarde van root MOET '2.16.840.1.113883.2.4.3.22.96.6' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901018-2014-11-07T145228.html"
              test="@extension">(ZorginstellingLVRID): attribute @extension MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901020
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]
Item: (BetrokkenheidKinderarts)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]">
      <extends rule="d89374e0-false-d89380e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901020-2016-12-06T135638.html"
              test="string(@typeCode) = ('RSON')">(BetrokkenheidKinderarts): de waarde van typeCode MOET 'RSON' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule fpi="RULC-1"
         id="d89374e0-false-d89380e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]) &lt;= 1">(BetrokkenheidKinderartsReden): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@classCode) = ('OBS')">(BetrokkenheidKinderartsReden): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@moodCode) = ('EVN')">(BetrokkenheidKinderartsReden): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']) &gt;= 1">(BetrokkenheidKinderartsReden): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']) &lt;= 1">(BetrokkenheidKinderartsReden): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(BetrokkenheidKinderartsReden): element hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(BetrokkenheidKinderartsReden): element hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(BetrokkenheidKinderartsReden): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']
Item: (BetrokkenheidKinderartsReden)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(BetrokkenheidKinderartsReden): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901021')">(BetrokkenheidKinderartsReden): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901021' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:code[(@code = 'PediatrischeVerwijsindicatie' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(BetrokkenheidKinderartsReden): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or (@code='PediatrischeVerwijsindicatie' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(BetrokkenheidKinderartsReden): de elementwaarde MOET een zijn van 'code 'PediatrischeVerwijsindicatie' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901021
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/exception/@code]
Item: (BetrokkenheidKinderartsReden)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901020']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901021']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception/@code or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(BetrokkenheidKinderartsReden): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2014-02-04T17:23:16) of 2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2016-11-23T21:34:13)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2014-02-04T172316.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008']) or exists(doc('include/voc-2.16.840.1.113883.2.4.11.202-2016-11-23T213413.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(BetrokkenheidKinderartsReden): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2014-02-04T17:23:16) of 2.16.840.1.113883.2.4.11.202 Pediatrische verwijsindicatie (2016-11-23T21:34:13).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901021-2016-12-15T161133.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(BetrokkenheidKinderartsReden): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]">
      <extends rule="d89559e0-false-d89565e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         id="d89559e0-false-d89565e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]) &gt;= 1">(Voedingkind_3): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]) &lt;= 1">(Voedingkind_3): element hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode) = ('DIET')">(Voedingkind_3): de waarde van classCode MOET 'DIET' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@moodCode) = ('EVN')">(Voedingkind_3): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']) &gt;= 1">(Voedingkind_3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']) &lt;= 1">(Voedingkind_3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &gt;= 1">(Voedingkind_3): element hl7:id[@nullFlavor = 'NI'] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:id[@nullFlavor = 'NI']) &lt;= 1">(Voedingkind_3): element hl7:id[@nullFlavor = 'NI'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Voedingkind_3): element hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Voedingkind_3): element hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:effectiveTime) &lt;= 1">(Voedingkind_3): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]) &gt;= 1">(Voedingkind_3): element hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']] is required [min 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Voedingkind_3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900724')">(Voedingkind_3): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900724' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:id[@nullFlavor = 'NI']
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:id[@nullFlavor = 'NI']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Voedingkind_3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@nullFlavor) = ('NI')">(Voedingkind_3): de waarde van nullFlavor MOET 'NI' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:code[(@code = '230126006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Voedingkind_3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="@nullFlavor or (@code='230126006' and @codeSystem='2.16.840.1.113883.6.96')">(Voedingkind_3): de elementwaarde MOET een zijn van 'code '230126006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:effectiveTime
Item: (Voedingkind_3)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@typeCode) = ('PRD')">(Voedingkind_3): de waarde van typeCode MOET 'PRD' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]) &gt;= 1">(Voedingkind_3): element hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(Voedingkind_3): element hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode) = ('ACCESS')">(Voedingkind_3): de waarde van classCode MOET 'ACCESS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(Voedingkind_3): element hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(Voedingkind_3): element hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@classCode) = ('MAT')">(Voedingkind_3): de waarde van classCode MOET 'MAT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="string(@determinerCode) = ('KIND')">(Voedingkind_3): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Voedingkind_3): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Voedingkind_3): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900724
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Voedingkind_3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900724']]/hl7:product[@typeCode = 'PRD'][hl7:product[@classCode = 'ACCESS']]/hl7:product[hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:playingMaterial[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Voedingkind_3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Voedingkind_3): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.212 Substantie voeding kind (2015-06-10T09:55:27)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.212-2015-06-10T095527.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900724-2016-12-06T135654.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Voedingkind_3): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.212 Substantie voeding kind (2015-06-10T09:55:27).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901102
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]
Item: (BaringPRNKernset233)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="string(@typeCode) = ('COMP')">(BaringPRNKernset233): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.html"
              test="../hl7:subject/hl7:personalRelationship/hl7:relationshipHolder/hl7:deceasedInd/@value='true'">(BaringPRNKernset233): Fase perinatale sterfte alleen opnemen wanneer er sprake is van perinatale sterfte kind.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]
Item: (Faseperinatalesterfte)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]
Item: (Faseperinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@classCode) = ('OBS')">(Faseperinatalesterfte): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@moodCode) = ('EVN')">(Faseperinatalesterfte): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']) &gt;= 1">(Faseperinatalesterfte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']) &lt;= 1">(Faseperinatalesterfte): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &gt;= 1">(Faseperinatalesterfte): element hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]) &lt;= 1">(Faseperinatalesterfte): element hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(Faseperinatalesterfte): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(Faseperinatalesterfte): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']
Item: (Faseperinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Faseperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900433')">(Faseperinatalesterfte): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900433' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]
Item: (Faseperinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:code[(@code = 'FasePerinataleSterfte' and @codeSystem = '2.16.840.1.113883.2.4.4.13')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Faseperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or (@code='FasePerinataleSterfte' and @codeSystem='2.16.840.1.113883.2.4.4.13')">(Faseperinatalesterfte): de elementwaarde MOET een zijn van 'code 'FasePerinataleSterfte' codeSystem '2.16.840.1.113883.2.4.4.13''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900433
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]
Item: (Faseperinatalesterfte)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901102']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900433']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(Faseperinatalesterfte): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.90.77.11.10 Fase Perinatale Sterfte (2.2) (2014-08-13T09:40:49)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.90.77.11.10-2014-08-13T094049.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(Faseperinatalesterfte): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.90.77.11.10 Fase Perinatale Sterfte (2.2) (2014-08-13T09:40:49).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900433-2016-12-06T135827.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(Faseperinatalesterfte): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
</pattern>
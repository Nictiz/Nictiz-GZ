<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901108
Name: Vorige uitkomst per kind Kernset Geboortezorg
Description: Vorige uitkomst per kind Kernset Geboortezorg
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Vorige uitkomst per kind Kernset Geboortezorg</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]"
         id="d40e11639-false-d91312e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@classCode) = ('PROC')">(VorigeUitkomstperkindKernset): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@moodCode) = ('EVN')">(VorigeUitkomstperkindKernset): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:id) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:id) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']"
         id="d40e11645-false-d91439e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(VorigeUitkomstperkindKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901108')">(VorigeUitkomstperkindKernset): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901108' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:id
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:id"
         id="d40e11650-false-d91458e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(VorigeUitkomstperkindKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="not(@root) or matches(@root,'^[0-2](\.(0|[1-9]\d*))*$') or matches(@root,'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$') or matches(@root,'^[A-Za-z][A-Za-z\d\-]*$')">(VorigeUitkomstperkindKernset): attribuut @root MOET datatype 'uid' hebben  - '
<value-of select="@root"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="not(@extension) or string-length(@extension)&gt;0">(VorigeUitkomstperkindKernset): attribuut @extension MOET datatype 'st' hebben  - '
<value-of select="@extension"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(VorigeUitkomstperkindKernset): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:code[(@code = 'Baring' and @codeSystem = '2.16.840.1.113883.2.4.3.22.1.3')]"
         id="d40e11666-false-d91489e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(VorigeUitkomstperkindKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="@nullFlavor or (@code='Baring' and @codeSystem='2.16.840.1.113883.2.4.3.22.1.3')">(VorigeUitkomstperkindKernset): de elementwaarde MOET een zijn van 'code 'Baring' codeSystem '2.16.840.1.113883.2.4.3.22.1.3''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]"
         id="d40e11672-false-d91511e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('SBJ')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'SBJ' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d40e11689-false-d91545e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@classCode) = ('PRS')">(VorigeUitkomstperkindKernset): de waarde van classCode MOET 'PRS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &gt;= 1">(VorigeUitkomstperkindKernset): element hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="count(hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']) &lt;= 1">(VorigeUitkomstperkindKernset): element hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d40e11693-false-d91592e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(VorigeUitkomstperkindKernset): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="@nullFlavor or (@code='CHILD' and @codeSystem='2.16.840.1.113883.5.111')">(VorigeUitkomstperkindKernset): de elementwaarde MOET een zijn van 'code 'CHILD' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']"
         id="d40e11698-false-d91614e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@classCode) = ('PSN')">(VorigeUitkomstperkindKernset): de waarde van classCode MOET 'PSN' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@determinerCode) = ('INSTANCE')">(VorigeUitkomstperkindKernset): de waarde van determinerCode MOET 'INSTANCE' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900259
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:birthTime
Item: (GeboortedatumKind)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:subject[hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]]/hl7:personalRelationship[hl7:code[(@code = 'CHILD' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:relationshipHolder[not(@nullFlavor)][@classCode = 'PSN'][@determinerCode = 'INSTANCE']/hl7:birthTime"
         id="d91639e5-false-d91647e0">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901107']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('COMP')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('COMP')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]
Item: (PercentielGeboortegewicht)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]
Item: (PercentielGeboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="string(@classCode) = ('OBS')">(PercentielGeboortegewicht): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="string(@moodCode) = ('EVN')">(PercentielGeboortegewicht): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']) &gt;= 1">(PercentielGeboortegewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']) &lt;= 1">(PercentielGeboortegewicht): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(PercentielGeboortegewicht): element hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(PercentielGeboortegewicht): element hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(PercentielGeboortegewicht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(PercentielGeboortegewicht): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']
Item: (PercentielGeboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(PercentielGeboortegewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900902')">(PercentielGeboortegewicht): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900902' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (PercentielGeboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:code[(@code = '301334000' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(PercentielGeboortegewicht): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="@nullFlavor or (@code='301334000' and @codeSystem='2.16.840.1.113883.6.96')">(PercentielGeboortegewicht): de elementwaarde MOET een zijn van 'code '301334000' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900902
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (PercentielGeboortegewicht)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900902']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception/@code]">
      <extends rule="CE"/>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(PercentielGeboortegewicht): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.176 PercentielGeboortegewicht (2013-11-08T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.176-2013-11-08T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(PercentielGeboortegewicht): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.176 PercentielGeboortegewicht (2013-11-08T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="@xsi:type">(PercentielGeboortegewicht): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900902-2016-12-06T103023.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(PercentielGeboortegewicht): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('COMP')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]
Item: (Apgarscorena5min)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900294
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:code[(@code = '9274-2' and @codeSystem = '2.16.840.1.113883.6.1')]">
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
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]
Item: (Apgarscorena5min)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900294']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'INT')]">
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
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]">
      <extends rule="d92064e0-false-d92070e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('COMP')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]
Item: (Congenitaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         id="d92064e0-false-d92070e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]) &lt;= 1">(Congenitaleafwijkingen3): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]
Item: (Congenitaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@classCode) = ('OBS')">(Congenitaleafwijkingen3): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@moodCode) = ('EVN')">(Congenitaleafwijkingen3): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Congenitaleafwijkingen3): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI','UNK')))])">(Congenitaleafwijkingen3): de waarde van nullFlavor MOET 'code NI of code UNK' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']) &gt;= 1">(Congenitaleafwijkingen3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']) &lt;= 1">(Congenitaleafwijkingen3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Congenitaleafwijkingen3): element hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="count(hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Congenitaleafwijkingen3): element hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']
Item: (Congenitaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Congenitaleafwijkingen3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901015')">(Congenitaleafwijkingen3): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901015' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901015
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Congenitaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901015']]/hl7:code[(@code = '443341004' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Congenitaleafwijkingen3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901015-2016-12-06T103349.html"
              test="@nullFlavor or (@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')">(Congenitaleafwijkingen3): de elementwaarde MOET een zijn van 'code '443341004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901108
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]
Item: (VorigeUitkomstperkindKernset)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]">
      <extends rule="d92218e0-false-d92224e0"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.html"
              test="string(@typeCode) = ('COMP')">(VorigeUitkomstperkindKernset): de waarde van typeCode MOET 'COMP' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900981
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]
Item: (Chromosomaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         id="d92218e0-false-d92224e0"
         abstract="true">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]) &lt;= 1">(Chromosomaleafwijkingen3): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900981
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]
Item: (Chromosomaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="string(@classCode) = ('OBS')">(Chromosomaleafwijkingen3): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="string(@moodCode) = ('EVN')">(Chromosomaleafwijkingen3): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="not(@negationInd) or string(@negationInd)=('true','false')">(Chromosomaleafwijkingen3): attribuut @negationInd MOET datatype 'bl' hebben  - '
<value-of select="@negationInd"/>'</assert>
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@nullFlavor),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="not(@nullFlavor) or empty($theAttValue[not(. = (('NI','UNK')))])">(Chromosomaleafwijkingen3): de waarde van nullFlavor MOET 'code NI of code UNK' zijn. Gevonden: "
<value-of select="@nullFlavor"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="not(@nullFlavor and @negationInd)">(Chromosomaleafwijkingen3): Er moet ofwel een nullFlavor, ofwel een negationInd aanwezig zijn, maar niet beide. </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="@nullFlavor or @negationInd='true' or not(../../hl7:outboundRelationship/hl7:observation[hl7:code/(@code='443341004' and @codeSystem='2.16.840.1.113883.6.96')]/(@negationInd='true' or @nullFlavor))">(Chromosomaleafwijkingen3): Chromosomale afwijking(en) zijn alleen van toepassing wanneer er sprake is van congenitale afwijkingen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']) &gt;= 1">(Chromosomaleafwijkingen3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']) &lt;= 1">(Chromosomaleafwijkingen3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="count(hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(Chromosomaleafwijkingen3): element hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="count(hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(Chromosomaleafwijkingen3): element hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900981
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']
Item: (Chromosomaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(Chromosomaleafwijkingen3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.900981')">(Chromosomaleafwijkingen3): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.900981' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.900981
Context: *[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]/hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (Chromosomaleafwijkingen3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901108']]/hl7:outboundRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.900981']]/hl7:code[(@code = '74345006' and @codeSystem = '2.16.840.1.113883.6.96')]">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(Chromosomaleafwijkingen3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.900981-2016-12-06T103540.html"
              test="@nullFlavor or (@code='74345006' and @codeSystem='2.16.840.1.113883.6.96')">(Chromosomaleafwijkingen3): de elementwaarde MOET een zijn van 'code '74345006' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
</pattern>
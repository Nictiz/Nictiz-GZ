<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.6.10.90.901091
Name: Intra-uteriene vruchtdood en methode
Description: Template: Vermoeden intra-uteriene vruchtdood met methode waarop dit gebaseerd is.
-->
<pattern id="template-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Intra-uteriene vruchtdood en methode</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]
Item: (IUVDMetObv)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]"
         id="d40e9291-false-d59413e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@classCode) = ('OBS')">(IUVDMetObv): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@moodCode) = ('EVN')">(IUVDMetObv): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']) &gt;= 1">(IUVDMetObv): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']) &lt;= 1">(IUVDMetObv): element hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(IUVDMetObv): element hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(IUVDMetObv): element hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &gt;= 1">(IUVDMetObv): element hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]) &lt;= 1">(IUVDMetObv): element hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &gt;= 1">(IUVDMetObv): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]) &lt;= 1">(IUVDMetObv): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]) &lt;= 1">(IUVDMetObv): element hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']"
         id="d40e9297-false-d59508e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.6.10.90.901091')">(IUVDMetObv): de waarde van root MOET '2.16.840.1.113883.2.4.6.10.90.901091' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:code[(@code = '59291004' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d40e9302-false-d59527e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or (@code='59291004' and @codeSystem='2.16.840.1.113883.6.96')">(IUVDMetObv): de elementwaarde MOET een zijn van 'code '59291004' codeSystem '2.16.840.1.113883.6.96''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:uncertaintyCode[(@code = 'U' and @codeSystem = '2.16.840.1.113883.5.1053') or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)]"
         id="d40e9307-false-d59550e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(IUVDMetObv): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.52 UncertaintyCode 2 (2013-03-20T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.52-2013-03-20T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IUVDMetObv): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.52 UncertaintyCode 2 (2013-03-20T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@code) = ('U')">(IUVDMetObv): de waarde van code MOET 'U' zijn. Gevonden: "
<value-of select="@code"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.5.1053')">(IUVDMetObv): de waarde van codeSystem MOET '2.16.840.1.113883.5.1053' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'BL')]"
         id="d40e9328-false-d59596e0">
      <extends rule="BL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@xsi:type">(IUVDMetObv): attribute @xsi:type MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]"
         id="d40e9340-false-d59619e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@typeCode) = ('PERT')">(IUVDMetObv): de waarde van typeCode MOET 'PERT' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]) &gt;= 1">(IUVDMetObv): element hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]) &lt;= 1">(IUVDMetObv): element hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]"
         id="d40e9347-false-d59653e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@classCode) = ('PROC')">(IUVDMetObv): de waarde van classCode MOET 'PROC' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="string(@moodCode) = ('EVN')">(IUVDMetObv): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:id) &gt;= 1">(IUVDMetObv): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:id) &lt;= 1">(IUVDMetObv): element hl7:id komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(IUVDMetObv): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(IUVDMetObv): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:id
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:id"
         id="d40e9353-false-d59706e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(IUVDMetObv): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.6.10.90.901091
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]
Item: (IUVDMetObv)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.6.10.90.901091']]/hl7:outboundRelationship[hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]]/hl7:procedure[hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d40e9362-false-d59727e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(IUVDMetObv): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(IUVDMetObv): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.11.223 IUVD methode (2016-12-02T16:23:49)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.11.223-2016-12-02T162349.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(IUVDMetObv): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.11.223 IUVD methode (2016-12-02T16:23:49).</assert>
   </rule>
</pattern>
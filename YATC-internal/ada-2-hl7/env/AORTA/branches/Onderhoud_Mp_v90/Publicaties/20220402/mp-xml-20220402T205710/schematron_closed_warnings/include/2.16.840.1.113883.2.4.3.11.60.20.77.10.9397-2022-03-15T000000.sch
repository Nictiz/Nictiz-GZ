<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Name: Antwoord voorstel medicatieafspraak
Description: Observatie met het inhoudelijke antwoord op voorstel verstrekkingsverzoek
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Antwoord voorstel medicatieafspraak</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]
Item: (OBSAntwVMA)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]
Item: (OBSAntwVMA)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]"
         id="d42e11515-false-d472900e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="string(@classCode) = ('OBS')">(OBSAntwVMA): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="string(@moodCode) = ('EVN')">(OBSAntwVMA): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']) &gt;= 1">(OBSAntwVMA): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']) &lt;= 1">(OBSAntwVMA): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &gt;= 1">(OBSAntwVMA): element hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]) &lt;= 1">(OBSAntwVMA): element hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code]) &gt;= 1">(OBSAntwVMA): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="count(hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(OBSAntwVMA): element hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']
Item: (OBSAntwVMA)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']"
         id="d42e11521-false-d472946e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(OBSAntwVMA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9397')">(OBSAntwVMA): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]
Item: (OBSAntwVMA)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:code[(@code = '17' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')]"
         id="d42e11526-false-d472961e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="@nullFlavor or (@code='17' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2')">(OBSAntwVMA): de elementwaarde MOET een zijn van 'code '17' codeSystem '2.16.840.1.113883.2.4.3.11.60.20.77.5.2''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9397
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code]
Item: (OBSAntwVMA)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9397']]/hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d42e11543-false-d472978e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(OBSAntwVMA): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(OBSAntwVMA): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.20.77.11.44 Voorstel antwoord medicatieafspraak (2022-03-02T10:50:41)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.44-2022-03-02T105041.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9397-2022-03-15T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(OBSAntwVMA): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.20.77.11.44 Voorstel antwoord medicatieafspraak (2022-03-02T10:50:41).</assert>
   </rule>
</pattern>
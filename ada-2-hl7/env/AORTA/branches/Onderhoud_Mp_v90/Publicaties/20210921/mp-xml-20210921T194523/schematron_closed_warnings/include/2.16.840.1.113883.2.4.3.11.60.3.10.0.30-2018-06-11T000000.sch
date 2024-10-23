<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Name: informant
Description: Template voor de weergave van gegevens over informant
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>informant</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]"
         id="d40e11536-false-d533829e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]) &lt;= 1">(informant): element hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]"
         id="d40e11551-false-d533962e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="string(@typeCode) = ('INF') or not(@typeCode)">(informant): de waarde van typeCode MOET 'INF' zijn. Gevonden: "
<value-of select="@typeCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']) &gt;= 1">(informant): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']) &lt;= 1">(informant): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.26']]) &lt;= 1">(informant): element hl7:assignedEntity[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.26']] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]) &lt;= 1">(informant): element hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:relatedEntity[@classCode = 'ASSIGNED']) &lt;= 1">(informant): element hl7:relatedEntity[@classCode = 'ASSIGNED'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']"
         id="d40e11566-false-d534075e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(informant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.3.10.0.30')">(informant): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.3.10.0.30' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]"
         id="d40e11587-false-d534096e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="string(@classCode) = ('ASSIGNED') or not(@classCode)">(informant): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:id) &gt;= 1">(informant): element hl7:id is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &gt;= 1">(informant): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]) &lt;= 1">(informant): element hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:id"
         id="d40e11594-false-d534136e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(informant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:assignedEntity[hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]]/hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')]"
         id="d40e11596-false-d534149e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(informant): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="@nullFlavor or (@code='ONESELF' and @codeSystem='2.16.840.1.113883.5.111')">(informant): de elementwaarde MOET een zijn van 'code 'ONESELF' codeSystem '2.16.840.1.113883.5.111''.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.30
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']
Item: (informant)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']"
         id="d40e11605-false-d534192e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="string(@classCode) = ('ASSIGNED')">(informant): de waarde van classCode MOET 'ASSIGNED' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]) &lt;= 1">(informant): element hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:effectiveTime) &lt;= 1">(informant): element hl7:effectiveTime komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.30-2018-06-11T000000.html"
              test="count(hl7:relatedPerson) &lt;= 1">(informant): element hl7:relatedPerson komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]"
         id="d534258e26-false-d534268e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(relatedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1][conceptList/concept[@code = $theCode][@codeSystem = $theCodeSystem]])">(relatedEntity): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2017-12-31T00:00:00)'.</assert>
      <let name="theNullFlavor"
           value="@nullFlavor"/>
      <let name="validNullFlavorsFound"
           value="exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception[@code = $theNullFlavor][@codeSystem = '2.16.840.1.113883.5.1008'])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@nullFlavor) or $validNullFlavorsFound">(relatedEntity): de nulwaarde '
<value-of select="@nullFlavor"/>' voor @code MOET komen uit de set die is gedefinieerd voor dit attribuut of zijn gekoppeld aan waardelijst 2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1 RelatieCodelijst (2017-12-31T00:00:00).</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr"
         id="d534258e32-false-d534306e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(relatedEntity): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.5.3' AdresSoortCodelijst (2017-12-31T00:00:00).</assert>
      <extends rule="AD.NL"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'AD')">(relatedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:AD" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:streetName) &lt;= 1">(relatedEntity): element hl7:streetName komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:houseNumber) &lt;= 1">(relatedEntity): element hl7:houseNumber komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:buildingNumberSuffix) &lt;= 1">(relatedEntity): element hl7:buildingNumberSuffix komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:additionalLocator) &lt;= 1">(relatedEntity): element hl7:additionalLocator komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:postalCode) &lt;= 1">(relatedEntity): element hl7:postalCode komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:county) &lt;= 1">(relatedEntity): element hl7:county komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:city) &lt;= 1">(relatedEntity): element hl7:city komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:country) &lt;= 1">(relatedEntity): element hl7:country komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:unitID) &lt;= 1">(relatedEntity): element hl7:unitID komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="count(hl7:useablePeriod) &lt;= 1">(relatedEntity): element hl7:useablePeriod komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:streetName
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:streetName"
         id="d534422e50-false-d534430e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:houseNumber
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:houseNumber"
         id="d534422e62-false-d534443e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:buildingNumberSuffix
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:buildingNumberSuffix"
         id="d534422e77-false-d534456e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:additionalLocator
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:additionalLocator"
         id="d534422e117-false-d534469e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="text()='to' or text()='by'">(AD.NL): de elementinhoud van hl7:additionalLocator MOET ''to' of 'by'' zijn. Gevonden: "
<value-of select="."/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:postalCode
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:postalCode"
         id="d534422e130-false-d534490e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:county
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:county"
         id="d534422e161-false-d534505e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:city
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:city"
         id="d534422e170-false-d534518e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:country
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:country"
         id="d534422e179-false-d534531e0">
      <extends rule="ADXP"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ADXP')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ADXP" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:unitID
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:unitID"
         id="d534422e216-false-d534546e0">
      <extends rule="ST"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ST')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ST" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.1.101
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:useablePeriod
Item: (AD.NL)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:addr/hl7:useablePeriod"
         id="d534422e233-false-d534559e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1.101-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(AD.NL): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:telecom[starts-with(@value,'tel:')]
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:telecom[starts-with(@value,'tel:')]"
         id="d534258e37-false-d534570e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (('MC','PG'), doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(relatedEntity): de waarde van use MOET worden gekozen uit code MC of code PG of waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.2' NummerSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="@value">(relatedEntity): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(relatedEntity): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(relatedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:telecom[starts-with(@value,'mailto:')]
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:telecom[starts-with(@value,'mailto:')]"
         id="d534258e42-false-d534622e0">
      <let name="theAttValue"
           value="distinct-values(tokenize(normalize-space(@use),'\s'))"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@use) or empty($theAttValue[not(. = (doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3-2017-12-31T000000.xml')/*/valueSet/conceptList/concept/@code))])">(relatedEntity): de waarde van use MOET worden gekozen uit waardelijst '2.16.840.1.113883.2.4.3.11.60.40.2.20.6.3' EmailSoortCodelijst (2017-12-31T00:00:00).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="@value">(relatedEntity): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="not(@value) or string(@value castable as xs:anyURI)">(relatedEntity): attribuut @value MOET datatype 'url' hebben  - '
<value-of select="@value"/>'</assert>
      <extends rule="TEL.NL.EXTENDED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TEL')">(relatedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:TEL" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:effectiveTime
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:effectiveTime"
         id="d534258e47-false-d534666e0">
      <extends rule="IVL_TS"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'IVL_TS')">(relatedEntity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:IVL_TS" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.3.10.0.15
Context: *[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:relatedPerson
Item: (relatedEntity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]]/hl7:informant[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.30']]/hl7:relatedEntity[@classCode = 'ASSIGNED']/hl7:relatedPerson"
         id="d534258e54-false-d534682e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.15-2018-06-11T000000.html"
              test="string(@classCode) = ('PSN') or not(@classCode)">(relatedEntity): de waarde van classCode MOET 'PSN' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
   </rule>
</pattern>
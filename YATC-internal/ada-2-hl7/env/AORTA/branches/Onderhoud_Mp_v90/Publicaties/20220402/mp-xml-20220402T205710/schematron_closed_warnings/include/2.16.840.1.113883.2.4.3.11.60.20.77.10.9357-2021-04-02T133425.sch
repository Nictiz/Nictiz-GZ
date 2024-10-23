<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Name: Financiële indicatiecode
Description: 
                 Financiële indicatiecode 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Financiële indicatiecode</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]
Item: (FinancieleIndicatiecode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]"
         id="d42e7586-false-d425931e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]) &gt;= 1">(FinancieleIndicatiecode): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]) &lt;= 1">(FinancieleIndicatiecode): element hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]
Item: (FinancieleIndicatiecode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]"
         id="d42e7616-false-d425948e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="string(@classCode) = ('OBS')">(FinancieleIndicatiecode): de waarde van classCode MOET 'OBS' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="string(@moodCode) = ('EVN')">(FinancieleIndicatiecode): de waarde van moodCode MOET 'EVN' zijn. Gevonden: "
<value-of select="@moodCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="@nullFlavor or hl7:value">(FinancieleIndicatiecode): Het is verplicht een waarde (xml element value) op te nemen als er een financiële indicatiecode is. Gebruik anders nullFlavor NI bij het xml element observation of neem de entryRelationship niet op bij de bouwsteen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']) &gt;= 1">(FinancieleIndicatiecode): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']) &lt;= 1">(FinancieleIndicatiecode): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &gt;= 1">(FinancieleIndicatiecode): element hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')]) &lt;= 1">(FinancieleIndicatiecode): element hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="count(hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')]) &lt;= 1">(FinancieleIndicatiecode): element hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']
Item: (FinancieleIndicatiecode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']"
         id="d42e7625-false-d425989e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(FinancieleIndicatiecode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9357')">(FinancieleIndicatiecode): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')]
Item: (FinancieleIndicatiecode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')]"
         id="d42e7630-false-d426004e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(FinancieleIndicatiecode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="@nullFlavor or (@code='153931000146103' and @codeSystem='2.16.840.1.113883.6.96')">(FinancieleIndicatiecode): de elementwaarde MOET een zijn van 'code '153931000146103' codeSystem '2.16.840.1.113883.6.96''.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(FinancieleIndicatiecode): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(FinancieleIndicatiecode): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9357
Context: *[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')]
Item: (FinancieleIndicatiecode)
-->
   <rule fpi="RULC-1"
         context="*[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')]"
         id="d42e7651-false-d426026e0">
      <extends rule="CE"/>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="@nullFlavor or ($xsiLocalName='CE' and $xsiLocalNS='urn:hl7-org:v3')">(FinancieleIndicatiecode): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@code) or string-length(@code)&gt;0">(FinancieleIndicatiecode): attribuut @code MOET datatype 'st' hebben  - '
<value-of select="@code"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@codeSystem) or string-length(@codeSystem)&gt;0">(FinancieleIndicatiecode): attribuut @codeSystem MOET datatype 'st' hebben  - '
<value-of select="@codeSystem"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(FinancieleIndicatiecode): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(FinancieleIndicatiecode): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9357-2021-04-02T133425.html"
              test="@nullFlavor or @displayName">(FinancieleIndicatiecode): Het is verplicht de displayName mee te geven als er een waarde is.</assert>
   </rule>
</pattern>
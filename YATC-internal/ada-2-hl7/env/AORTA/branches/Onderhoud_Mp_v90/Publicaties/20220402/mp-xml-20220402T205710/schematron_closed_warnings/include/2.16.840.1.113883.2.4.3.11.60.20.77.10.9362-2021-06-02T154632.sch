<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9362
Name: MP CDA Medication Information
Description: MP CDA Medication Information
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP CDA Medication Information</title>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9362
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]
Item: (MPCDAMedicationInformation3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]"
         id="d42e8254-false-d427223e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]) &gt;= 1">(MPCDAMedicationInformation3): element hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]) &lt;= 1">(MPCDAMedicationInformation3): element hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9362
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]
Item: (MPCDAMedicationInformation3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]"
         id="d42e8277-false-d427266e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="string(@classCode) = ('MANU') or not(@classCode)">(MPCDAMedicationInformation3): de waarde van classCode MOET 'MANU' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="hl7:manufacturedMaterial/hl7:code/@code or hl7:manufacturedMaterial/pharm:ingredient">(MPCDAMedicationInformation3): Als er geen gecodeerde medicatie is moet er minimaal één ingrediënt zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="hl7:manufacturedMaterial/hl7:code/@code or hl7:manufacturedMaterial/pharm:desc">(MPCDAMedicationInformation3): Geneesmiddel omschrijving (pharm:desc) verplicht opnemen wanneer de codering *niet* afdoende is om de samenstelling van het geneesmiddel te achterhalen.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']) &gt;= 1">(MPCDAMedicationInformation3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] is mandatory [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']) &lt;= 1">(MPCDAMedicationInformation3): element hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:manufacturedMaterial) &gt;= 1">(MPCDAMedicationInformation3): element hl7:manufacturedMaterial is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="count(hl7:manufacturedMaterial) &lt;= 1">(MPCDAMedicationInformation3): element hl7:manufacturedMaterial komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9362
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']
Item: (MPCDAMedicationInformation3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']"
         id="d42e8281-false-d427325e0">
      <extends rule="II"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'II')">(MPCDAMedicationInformation3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:II" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9362-2021-06-02T154632.html"
              test="string(@root) = ('2.16.840.1.113883.2.4.3.11.60.20.77.10.9362')">(MPCDAMedicationInformation3): de waarde van root MOET '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362' zijn. Gevonden: "
<value-of select="@root"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9361
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial
Item: (MPCDAMedicationInformationContents2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial"
         id="d427326e121-false-d427364e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="string(@classCode) = ('MMAT') or not(@classCode)">(MPCDAMedicationInformationContents2): de waarde van classCode MOET 'MMAT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="string(@determinerCode) = ('KIND') or not(@determinerCode)">(MPCDAMedicationInformationContents2): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
      <let name="SNK"
           value="'2.16.840.1.113883.2.4.4.1.750'"/>
      <let name="SSK"
           value="'2.16.840.1.113883.2.4.4.1.725'"/>
      <let name="GPK"
           value="'2.16.840.1.113883.2.4.4.1'"/>
      <let name="PRK"
           value="'2.16.840.1.113883.2.4.4.10'"/>
      <let name="HPK"
           value="'2.16.840.1.113883.2.4.4.7'"/>
      <let name="ZI"
           value="'2.16.840.1.113883.2.4.4.8'"/>
      <let name="ATC"
           value="'2.16.840.1.113883.6.73'"/>
      <let name="GTIN"
           value="'1.3.160'"/>
      <let name="GstdCodeSystems"
           value="$SNK, $SSK, $GPK, $PRK, $HPK, $ZI"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="hl7:code[@codeSystem=data($GstdCodeSystems)][@code] or hl7:name">(MPCDAMedicationInformationContents2): Geneesmiddel naam (name) verplicht opnemen wanneer de codering *niet* afdoende is om de samenstelling van het geneesmiddel te achterhalen</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(hl7:name and hl7:code[@codeSystem=data($GstdCodeSystems)][@code])">(MPCDAMedicationInformationContents2): Geneesmiddel naam (name) niet opnemen wanneer de codering afdoende is om de samenstelling van het geneesmiddel te achterhalen. Geneesmiddel naam (name) is alleen toegestaan bij eigen productdefinities, zoals magistralen of 90 miljoen nummers.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(pharm:desc and hl7:code[@codeSystem=data($GstdCodeSystems)][@code])">(MPCDAMedicationInformationContents2): Geneesmiddel omschrijving (pharm:desc) niet opnemen wanneer de codering afdoende is om de samenstelling van het geneesmiddel te achterhalen. Geneesmiddel omschrijving (pharm:desc) is alleen toegestaan bij eigen productdefinities, zoals magistralen of 90 miljoen nummers.</assert>
      <let name="elmcount"
           value="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))])"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="$elmcount &lt;= 1">(MPCDAMedicationInformationContents2): keuze (hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]  of  hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))]) bevat te veel elementen [max 1x]</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="count(hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]) &lt;= 1">(MPCDAMedicationInformationContents2): element hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="count(hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))]) &lt;= 1">(MPCDAMedicationInformationContents2): element hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="count(hl7:name) &lt;= 1">(MPCDAMedicationInformationContents2): element hl7:name komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="count(pharm:desc) &lt;= 1">(MPCDAMedicationInformationContents2): element pharm:desc komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="count(pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11']) &lt;= 1">(MPCDAMedicationInformationContents2): element pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9360
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial
Item: (MPCDAMedicationCode3)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9360
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]
Item: (MPCDAMedicationCode3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]"
         id="d427379e83-false-d427486e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicationCode3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <let name="theCode"
           value="@code"/>
      <let name="theCodeSystem"
           value="@codeSystem"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@nullFlavor or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]]) or exists(doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1][completeCodeSystem[@codeSystem=$theCodeSystem]])">(MPCDAMedicationCode3): de elementwaarde MOET een zijn van '2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10 SpecifiekeStofSNKCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9 SpecifiekeStofSSKCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8 VoorschriftProductGPKCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10 VoorschriftProductPRKCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9 VoorschriftProductHPKCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13 VoorschriftProductZICodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20 VoorschriftProductATCCodelijst (2015-04-01T00:00:00) of 2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11 VoorschriftProductGTINCodelijst (2015-04-01T00:00:00)'.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@code">(MPCDAMedicationCode3): attribute @code MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@codeSystem">(MPCDAMedicationCode3): attribute @codeSystem MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@displayName">(MPCDAMedicationCode3): attribute @displayName MOET aanwezig zijn.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(../pharm:ingredient)">(MPCDAMedicationCode3): Bij gecodeerde medicatie volgens de G-standaard mag ingredient geen waarde hebben. Ingredient is alleen toegestaan bij eigen productdefinities, zoals magistralen of 90 miljoen nummers.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(hl7:translation/@codeSystem=@codeSystem)">(MPCDAMedicationCode3): Medicatiecode mag geen translation hebben uit hetzelfde codesysteem.</assert>
      <let name="SNK"
           value="'2.16.840.1.113883.2.4.4.1.750'"/>
      <let name="SSK"
           value="'2.16.840.1.113883.2.4.4.1.725'"/>
      <let name="GPK"
           value="'2.16.840.1.113883.2.4.4.1'"/>
      <let name="PRK"
           value="'2.16.840.1.113883.2.4.4.10'"/>
      <let name="HPK"
           value="'2.16.840.1.113883.2.4.4.7'"/>
      <let name="ZI"
           value="'2.16.840.1.113883.2.4.4.8'"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(hl7:translation) or not(hl7:translation[@codeSystem=$ZI])">(MPCDAMedicationCode3): Eventuele translation elementen moeten meer algemene alternatieve coderingen bevatten. Translation mag niet een ZI-nummer zijn (gevonden: 
<value-of select="hl7:translation[@codeSystem=$ZI]/concat('code: ', @code, ', in codeSystem: ', @codeSystem)"/>).</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@codeSystem!=$PRK or not(hl7:translation[@codeSystem=$HPK])">(MPCDAMedicationCode3): Eventuele translation elementen moeten equivalente of meer algemene alternatieve coderingen bevatten. PRK kan niet vertaald worden naar HPK.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@codeSystem!=$GPK or not(hl7:translation[@codeSystem=($PRK, $HPK)])">(MPCDAMedicationCode3): Eventuele translation elementen moeten equivalente of meer algemene alternatieve coderingen bevatten. GPK kan niet vertaald worden naar PRK of HPK.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@codeSystem!=$SSK or not(hl7:translation[@codeSystem=($GPK, $PRK, $HPK)])">(MPCDAMedicationCode3): Eventuele translation elementen moeten equivalente of meer algemene alternatieve coderingen bevatten. SSK kan niet vertaald worden naar GPK, PRK of HPK.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="@codeSystem!=$SNK or not(hl7:translation[@codeSystem=($SSK, $GPK, $PRK, $HPK)])">(MPCDAMedicationCode3): Eventuele translation elementen moeten equivalente of meer algemene alternatieve coderingen bevatten. SNK kan niet vertaald worden naar SSK, GPK, PRK of HPK.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(@codeSystem = $HPK) or (hl7:translation[@codeSystem = $GPK] and hl7:translation[@codeSystem = $PRK])">(MPCDAMedicationCode3): Bij HPK, indien beschikbaar, ook vertaling naar PRK én GPK opnemen. Indien niet beschikbaar is het toegestaan de HPK zonder vertaling te communiceren.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(@codeSystem = $ZI) or (hl7:translation[@codeSystem = $GPK] and hl7:translation[@codeSystem = $PRK] and hl7:translation[@codeSystem = $HPK])">(MPCDAMedicationCode3): Bij ZI-nummer ook vertaling naar HPK, en - indien beschikbaar - PRK én GPK opnemen. Indien niet beschikbaar is het toegestaan het ZI-nummer zonder (alle) vertaling(en) te communiceren.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9360
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/hl7:translation
Item: (MPCDAMedicationCode3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/hl7:translation"
         id="d427379e115-false-d427544e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicationCode3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9360
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))]
Item: (MPCDAMedicationCode3)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))]"
         id="d427379e162-false-d427552e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicationCode3): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPCDAMedicationCode3): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="(@code and @displayName) or not(@code)">(MPCDAMedicationCode3): Medicatiecode moet attribuut @displayName hebben tenzij er geen @code is (er moet dan een @nullFlavor zijn).</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="../pharm:ingredient">(MPCDAMedicationCode3): Bij magistraal / eigen bereiding / eigen codering moet er minimaal één - volgens de G-standaard gecodeerd - ingrediënt worden opgenomen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9361
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:name
Item: (MPCDAMedicationInformationContents2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:name"
         id="d427326e133-false-d427569e0">
      <extends rule="EN"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'EN')">(MPCDAMedicationInformationContents2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:EN" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9361
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:desc
Item: (MPCDAMedicationInformationContents2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:desc"
         id="d427326e161-false-d427579e0">
      <extends rule="ED"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'ED')">(MPCDAMedicationInformationContents2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:ED" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9361
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11']
Item: (MPCDAMedicationInformationContents2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11']"
         id="d427326e167-false-d427590e0">
      <extends rule="CE"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')">(MPCDAMedicationInformationContents2): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:CE" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="@code">(MPCDAMedicationInformationContents2): attribute @code MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(MPCDAMedicationInformationContents2): attribuut @code MOET datatype 'cs' hebben  - '
<value-of select="@code"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(@displayName) or string-length(@displayName)&gt;0">(MPCDAMedicationInformationContents2): attribuut @displayName MOET datatype 'st' hebben  - '
<value-of select="@displayName"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.4.11')">(MPCDAMedicationInformationContents2): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.4.11' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="string(@codeSystemName) = ('G-Standaard Farmaceutische vormen (tabel 6)') or not(@codeSystemName)">(MPCDAMedicationInformationContents2): de waarde van codeSystemName MOET 'G-Standaard Farmaceutische vormen (tabel 6)' zijn. Gevonden: "
<value-of select="@codeSystemName"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(@codeSystemName) or string-length(@codeSystemName)&gt;0">(MPCDAMedicationInformationContents2): attribuut @codeSystemName MOET datatype 'st' hebben  - '
<value-of select="@codeSystemName"/>'</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(hl7:formcode and hl7:code/@code)">(MPCDAMedicationInformationContents2): Farmaceutische vorm niet opnemen wanneer de codering afdoende is om de samenstelling van het geneesmiddel te achterhalen.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9367
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']
Item: (MPCDAIngredient2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']"
         id="d427591e42-false-d427618e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="string(@classCode) = ('INGR') or not(@classCode)">(MPCDAIngredient2): de waarde van classCode MOET 'INGR' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="count(pharm:quantity) &lt;= 1">(MPCDAIngredient2): element pharm:quantity komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="count(pharm:ingredient[@classCode='MMAT']) &lt;= 1">(MPCDAIngredient2): element pharm:ingredient[@classCode='MMAT'] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9367
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity
Item: (MPCDAIngredient2)
-->
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9071
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity
Item: (MPIngredientQuantity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &gt;= 1">(MPIngredientQuantity): element hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &lt;= 1">(MPIngredientQuantity): element hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] komt te vaak voor [max 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &gt;= 1">(MPIngredientQuantity): element hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] is required [min 1x].</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]) &lt;= 1">(MPIngredientQuantity): element hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] komt te vaak voor [max 1x].</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9071
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]
Item: (MPIngredientQuantity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(MPIngredientQuantity): attribuut @unit MOET datatype 'cs' hebben  - '
<value-of select="@unit"/>'</assert>
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPIngredientQuantity): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(MPIngredientQuantity): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="@nullFlavor or ($xsiLocalName='PQ' and $xsiLocalNS='urn:hl7-org:v3')">(MPIngredientQuantity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@nullFlavor) or (string-length(@nullFlavor) &gt; 0 and not(matches(@nullFlavor,'\s')))">(MPIngredientQuantity): attribuut @nullFlavor MOET datatype 'cs' hebben  - '
<value-of select="@nullFlavor"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPIngredientQuantity): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']) &lt;= 1">(MPIngredientQuantity): element hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] komt te vaak voor [max 1x].</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@unit) or matches(string(@unit),'^1$|^[umcdk]?[mgl]+$|^\[drp\]$|^\[tsp_us\]$|^\[tbs_us\]$|^\[iU\]$')">(MPIngredientQuantity): De gevonden UCUM eenheid '
<value-of select="@unit"/>' behoort niet tot de meest gebruikte. Is de UCUM eenheid correct?</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">(MPIngredientQuantity): Vertaling naar de G-Standaard basiseenheden (tabel 2 van de thesauraus) is verplicht.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2' and @value=../@value]">(MPIngredientQuantity): translation/@value in G-Standaard basiseenheden tabel 2 is niet gelijk aan dose(Check)Quantity/@value, controleer of dit klopt.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9021
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']
Item: (QuantUnitAndTranslation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">
      <extends rule="PQR"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQR')">(QuantUnitAndTranslation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQR" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@value">(QuantUnitAndTranslation): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(QuantUnitAndTranslation): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@code">(QuantUnitAndTranslation): attribute @code MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(QuantUnitAndTranslation): attribuut @code MOET datatype 'cs' hebben  - '
<value-of select="@code"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.4.1.900.2')">(QuantUnitAndTranslation): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.4.1.900.2' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@displayName">(QuantUnitAndTranslation): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9071
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]
Item: (MPIngredientQuantity)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@unit) or (string-length(@unit) &gt; 0 and not(matches(@unit,'\s')))">(MPIngredientQuantity): attribuut @unit MOET datatype 'cs' hebben  - '
<value-of select="@unit"/>'</assert>
      <extends rule="PQ"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@value) or matches(@value, '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPIngredientQuantity): @value is geen geldig PQ getal 
<value-of select="@value"/>
      </assert>
      <let name="theUnit"
           value="@unit"/>
      <let name="UCUMtest"
           value="doc('include/voc-UCUM.xml')/*/ucum[@unit=$theUnit]/@message"/>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="$UCUMtest='OK' or string-length($UCUMtest)=0">(MPIngredientQuantity): value/@unit (PQ) MOET een geldige UCUM-eenheid zijn (
<value-of select="$UCUMtest"/>).</assert>
      <let name="xsiLocalName"
           value="if (contains(@xsi:type, ':')) then substring-after(@xsi:type,':') else @xsi:type"/>
      <let name="xsiLocalNS"
           value="if (contains(@xsi:type, ':')) then namespace-uri-for-prefix(substring-before(@xsi:type,':'),.) else namespace-uri-for-prefix('',.)"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="@nullFlavor or ($xsiLocalName='PQ' and $xsiLocalNS='urn:hl7-org:v3')">(MPIngredientQuantity): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQ" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="@value">(MPIngredientQuantity): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(MPIngredientQuantity): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="count(hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']) &lt;= 1">(MPIngredientQuantity): element hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] komt te vaak voor [max 1x].</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(@unit) or matches(string(@unit),'^1$|^[umcdk]?[mgl]+$|^\[drp\]$|^\[tsp_us\]$|^\[tbs_us\]$|^\[iU\]$')">(MPIngredientQuantity): De gevonden UCUM eenheid '
<value-of select="@unit"/>' behoort niet tot de meest gebruikte. Is de UCUM eenheid correct?</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">(MPIngredientQuantity): Vertaling naar de G-Standaard basiseenheden (tabel 2 van de thesauraus) is verplicht.</assert>
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9071-2016-06-18T204153.html"
              test="not(exists(@value)) or hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2' and @value=../@value]">(MPIngredientQuantity): translation/@value in G-Standaard basiseenheden tabel 2 is niet gelijk aan dose(Check)Quantity/@value, controleer of dit klopt.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9021
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']
Item: (QuantUnitAndTranslation)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2']">
      <extends rule="PQR"/>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="empty(@xsi:type) or resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQR')">(QuantUnitAndTranslation): indien er een @xsi:type instructie aanwezig is MOET deze de waarde "{urn:hl7-org:v3}:PQR" bevatten. Gevonden "{
<value-of select="namespace-uri-from-QName(resolve-QName(@xsi:type,.))"/>}:
<value-of select="local-name-from-QName(resolve-QName(@xsi:type,.))"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@value">(QuantUnitAndTranslation): attribute @value MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@value) or matches(string(@value), '^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$')">(QuantUnitAndTranslation): attribuut @value is geen geldig real getal 
<value-of select="@value"/>
      </assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@code">(QuantUnitAndTranslation): attribute @code MOET aanwezig zijn.</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="not(@code) or (string-length(@code) &gt; 0 and not(matches(@code,'\s')))">(QuantUnitAndTranslation): attribuut @code MOET datatype 'cs' hebben  - '
<value-of select="@code"/>'</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="string(@codeSystem) = ('2.16.840.1.113883.2.4.4.1.900.2')">(QuantUnitAndTranslation): de waarde van codeSystem MOET '2.16.840.1.113883.2.4.4.1.900.2' zijn. Gevonden: "
<value-of select="@codeSystem"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9021-2015-03-05T000000.html"
              test="@displayName">(QuantUnitAndTranslation): attribute @displayName MOET aanwezig zijn.</assert>
   </rule>
   <!--
Template derived rules for ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9368
Context: *[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']
Item: (MPCDAIngredientMaterialKind2)
-->
   <rule fpi="RULC-1"
         context="*[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']"
         id="d427679e180-false-d427867e0">
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9368-2021-06-02T171340.html"
              test="string(@classCode) = ('MMAT') or not(@classCode)">(MPCDAIngredientMaterialKind2): de waarde van classCode MOET 'MMAT' zijn. Gevonden: "
<value-of select="@classCode"/>"</assert>
      <assert role="error"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9368-2021-06-02T171340.html"
              test="string(@determinerCode) = ('KIND') or not(@determinerCode)">(MPCDAIngredientMaterialKind2): de waarde van determinerCode MOET 'KIND' zijn. Gevonden: "
<value-of select="@determinerCode"/>"</assert>
   </rule>
</pattern>
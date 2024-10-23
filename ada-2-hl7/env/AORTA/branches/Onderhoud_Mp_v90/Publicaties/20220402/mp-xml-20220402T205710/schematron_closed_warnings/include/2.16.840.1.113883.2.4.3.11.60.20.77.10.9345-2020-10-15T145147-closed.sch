<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9345
Name: Basis Afhandeling Voorschrift
Description: Basis voor Afhandeling Voorschrift. Template voor keuze tussen CDA of HL7 template.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9345-2020-10-15T145147-closed"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Basis Afhandeling Voorschrift</title>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[@code = 'NL'] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | self::hl7:languageCode[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:component)]"
         id="d395762e61-true-d396308e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e61-true-d396308e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:realmCode[@code = 'NL'] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | hl7:languageCode[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author | hl7:custodian[hl7:assignedCustodian] | hl7:component (rule-reference: d395762e61-true-d396308e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d396366e19-true-d396440e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e19-true-d396440e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d396366e19-true-d396440e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d396366e21-true-d396519e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e21-true-d396519e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d396366e21-true-d396519e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d396366e75-true-d396557e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e75-true-d396557e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d396366e75-true-d396557e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d396366e80-true-d396617e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e80-true-d396617e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d396366e80-true-d396617e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d396366e85-true-d396627e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e85-true-d396627e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d396366e85-true-d396627e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d396366e90-true-d396732e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e90-true-d396732e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d396366e90-true-d396732e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d396366e92-true-d396753e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e92-true-d396753e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d396366e92-true-d396753e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d396366e159-true-d396905e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e159-true-d396905e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d396366e159-true-d396905e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d396366e168-true-d396946e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e168-true-d396946e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d396366e168-true-d396946e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d396366e173-true-d397006e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e173-true-d397006e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d396366e173-true-d397006e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d396366e178-true-d397016e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e178-true-d397016e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d396366e178-true-d397016e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d396366e186-true-d397054e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e186-true-d397054e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d396366e186-true-d397054e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d396366e188-true-d397075e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e188-true-d397075e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d396366e188-true-d397075e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d396366e193-true-d397166e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d396366e193-true-d397166e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d396366e193-true-d397166e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | self::hl7:assignedAuthor[hl7:code/@code = 'ONESELF'])]"
         id="d397180e18-true-d397238e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e18-true-d397238e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | hl7:assignedAuthor[hl7:code/@code = 'ONESELF'] (rule-reference: d397180e18-true-d397238e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization)]"
         id="d397180e37-true-d397325e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e37-true-d397325e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization (rule-reference: d397180e37-true-d397325e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d397180e60-true-d397405e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e60-true-d397405e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d397180e60-true-d397405e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d397180e69-true-d397465e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e69-true-d397465e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d397180e69-true-d397465e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d397180e77-true-d397475e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e77-true-d397475e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d397180e77-true-d397475e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d397180e87-true-d397507e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e87-true-d397507e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d397180e87-true-d397507e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d397489e1-true-d397528e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397489e1-true-d397528e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d397489e1-true-d397528e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d397180e89-true-d397629e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e89-true-d397629e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/completeCodeSystem/@codeSystem or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.16040-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:manufacturerModelName | hl7:softwareName (rule-reference: d397180e89-true-d397629e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d397651e30-true-d397710e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e30-true-d397710e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d397651e30-true-d397710e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d397651e53-true-d397761e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e53-true-d397761e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d397651e53-true-d397761e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d397651e62-true-d397771e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e62-true-d397771e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d397651e62-true-d397771e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d397651e70-true-d397805e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e70-true-d397805e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d397651e70-true-d397805e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d397651e86-true-d397889e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e86-true-d397889e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d397651e86-true-d397889e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d397651e102-true-d397911e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d397651e102-true-d397911e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d397651e102-true-d397911e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:author/hl7:assignedAuthor[hl7:code/@code = 'ONESELF']/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@nullFlavor] | self::hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')])]"
         id="d397180e95-true-d397928e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d397180e95-true-d397928e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor] | hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] (rule-reference: d397180e95-true-d397928e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[hl7:representedCustodianOrganization])]"
         id="d397955e17-true-d397967e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d397955e17-true-d397967e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedCustodian[hl7:representedCustodianOrganization] (rule-reference: d397955e17-true-d397967e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization)]"
         id="d397955e21-true-d397981e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d397955e21-true-d397981e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:representedCustodianOrganization (rule-reference: d397955e21-true-d397981e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | self::hl7:name | self::hl7:telecom | self::hl7:addr)]"
         id="d397955e25-true-d398014e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d397955e25-true-d398014e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | hl7:name | hl7:telecom | hl7:addr (rule-reference: d397955e25-true-d398014e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:structuredBody[hl7:component])]"
         id="d395762e104-true-d398439e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e104-true-d398439e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:structuredBody[hl7:component] (rule-reference: d395762e104-true-d398439e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section])]"
         id="d395762e106-true-d398828e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e106-true-d398828e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:component[hl7:section] (rule-reference: d395762e106-true-d398828e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/*[not(@xsi:nil = 'true')][not(self::hl7:section)]"
         id="d395762e108-true-d399217e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e108-true-d399217e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:section (rule-reference: d395762e108-true-d399217e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/*[not(@xsi:nil = 'true')][not(self::hl7:text | self::hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | self::hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | self::hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]])]"
         id="d395762e110-true-d399631e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e110-true-d399631e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:text | hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]] (rule-reference: d395762e110-true-d399631e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']])]"
         id="d395762e114-true-d399851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e114-true-d399851e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']] (rule-reference: d395762e114-true-d399851e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:statusCode | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d399710e1-true-d400063e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d399710e1-true-d400063e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:statusCode | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d399710e1-true-d400063e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d400073e149-true-d400113e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d400073e149-true-d400113e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d400073e149-true-d400113e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d400073e190-true-d400200e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e190-true-d400200e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d400073e190-true-d400200e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d400162e1-true-d400258e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400162e1-true-d400258e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d400162e1-true-d400258e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d400268e106-true-d400339e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d400268e106-true-d400339e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d400268e106-true-d400339e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d400339e119-true-d400394e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d400339e119-true-d400394e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d400339e119-true-d400394e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d400422e7-true-d400462e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400422e7-true-d400462e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d400422e7-true-d400462e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d400422e11-true-d400516e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400422e11-true-d400516e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d400422e11-true-d400516e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d400466e5-true-d400532e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400466e5-true-d400532e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d400466e5-true-d400532e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d400466e19-true-d400552e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400466e19-true-d400552e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d400466e19-true-d400552e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d400560e11-true-d400607e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400560e11-true-d400607e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d400560e11-true-d400607e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d400563e4-true-d400638e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d400563e4-true-d400638e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d400563e4-true-d400638e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d400073e192-true-d400697e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d400073e192-true-d400697e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d400073e192-true-d400697e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d400073e207-true-d400742e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d400073e207-true-d400742e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d400073e207-true-d400742e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d400751e30-true-d400810e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e30-true-d400810e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d400751e30-true-d400810e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d400751e53-true-d400861e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e53-true-d400861e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d400751e53-true-d400861e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d400751e62-true-d400871e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e62-true-d400871e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d400751e62-true-d400871e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d400751e70-true-d400905e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e70-true-d400905e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d400751e70-true-d400905e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d400751e86-true-d400989e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e86-true-d400989e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d400751e86-true-d400989e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d400751e102-true-d401011e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d400751e102-true-d401011e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d400751e102-true-d401011e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']])]"
         id="d400073e230-true-d401036e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e230-true-d401036e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']] (rule-reference: d400073e230-true-d401036e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | self::hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d401021e6-true-d401071e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401021e6-true-d401071e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d401021e6-true-d401071e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']])]"
         id="d400073e238-true-d401111e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e238-true-d401111e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']] (rule-reference: d400073e238-true-d401111e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d401096e6-true-d401146e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401096e6-true-d401146e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d401096e6-true-d401146e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d400073e246-true-d401195e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e246-true-d401195e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d400073e246-true-d401195e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d401171e6-true-d401217e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401171e6-true-d401217e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d401171e6-true-d401217e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d401227e38-true-d401244e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d401227e38-true-d401244e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d401227e38-true-d401244e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d400073e254-true-d401269e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e254-true-d401269e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d400073e254-true-d401269e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d401254e6-true-d401297e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401254e6-true-d401297e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d401254e6-true-d401297e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d400073e262-true-d401331e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e262-true-d401331e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d400073e262-true-d401331e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d401316e6-true-d401360e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401316e6-true-d401360e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d401316e6-true-d401360e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d400073e270-true-d401397e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e270-true-d401397e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d400073e270-true-d401397e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d401382e7-true-d401426e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d401382e7-true-d401426e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d401382e7-true-d401426e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d400073e281-true-d401537e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d400073e281-true-d401537e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d400073e281-true-d401537e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d401546e47-true-d401667e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401546e47-true-d401667e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d401546e47-true-d401667e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d401546e66-true-d401690e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401546e66-true-d401690e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d401546e66-true-d401690e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d401705e9-true-d401736e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d401705e9-true-d401736e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d401705e9-true-d401736e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d401705e24-true-d401757e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d401705e24-true-d401757e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d401705e24-true-d401757e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d401705e33-true-d401796e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d401705e33-true-d401796e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d401705e33-true-d401796e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d401705e47-true-d401817e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d401705e47-true-d401817e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d401705e47-true-d401817e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d401705e55-true-d401849e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d401705e55-true-d401849e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d401705e55-true-d401849e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d401864e16-true-d401886e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d401864e16-true-d401886e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d401864e16-true-d401886e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d401546e85-true-d401948e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401546e85-true-d401948e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d401546e85-true-d401948e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d401906e5-true-d401969e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401906e5-true-d401969e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d401906e5-true-d401969e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d401546e101-true-d402013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401546e101-true-d402013e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d401546e101-true-d402013e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d401546e116-true-d402024e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d401546e116-true-d402024e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d401546e116-true-d402024e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d402017e17-true-d402039e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d402017e17-true-d402039e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d402017e17-true-d402039e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d400073e303-true-d402064e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e303-true-d402064e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d400073e303-true-d402064e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d402049e6-true-d402093e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402049e6-true-d402093e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d402049e6-true-d402093e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d400073e311-true-d402130e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e311-true-d402130e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d400073e311-true-d402130e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d402115e9-true-d402164e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402115e9-true-d402164e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d402115e9-true-d402164e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d400073e322-true-d402206e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d400073e322-true-d402206e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d400073e322-true-d402206e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d402191e10-true-d402235e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402191e10-true-d402235e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d402191e10-true-d402235e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']])]"
         id="d395762e116-true-d402467e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e116-true-d402467e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']] (rule-reference: d395762e116-true-d402467e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:statusCode | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d402326e1-true-d402679e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402326e1-true-d402679e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:statusCode | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d402326e1-true-d402679e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d402689e149-true-d402729e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d402689e149-true-d402729e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d402689e149-true-d402729e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d402689e190-true-d402816e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e190-true-d402816e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d402689e190-true-d402816e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d402778e1-true-d402874e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402778e1-true-d402874e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d402778e1-true-d402874e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d402884e106-true-d402955e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d402884e106-true-d402955e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d402884e106-true-d402955e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d402955e119-true-d403010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d402955e119-true-d403010e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d402955e119-true-d403010e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d403038e7-true-d403078e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403038e7-true-d403078e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d403038e7-true-d403078e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d403038e11-true-d403132e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403038e11-true-d403132e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d403038e11-true-d403132e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d403082e5-true-d403148e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403082e5-true-d403148e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d403082e5-true-d403148e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d403082e19-true-d403168e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403082e19-true-d403168e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d403082e19-true-d403168e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d403176e11-true-d403223e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403176e11-true-d403223e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d403176e11-true-d403223e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d403179e4-true-d403254e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d403179e4-true-d403254e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d403179e4-true-d403254e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d402689e192-true-d403313e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d402689e192-true-d403313e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d402689e192-true-d403313e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d402689e207-true-d403358e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d402689e207-true-d403358e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d402689e207-true-d403358e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d403367e30-true-d403426e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e30-true-d403426e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d403367e30-true-d403426e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d403367e53-true-d403477e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e53-true-d403477e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d403367e53-true-d403477e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d403367e62-true-d403487e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e62-true-d403487e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d403367e62-true-d403487e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d403367e70-true-d403521e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e70-true-d403521e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d403367e70-true-d403521e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d403367e86-true-d403605e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e86-true-d403605e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d403367e86-true-d403605e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d403367e102-true-d403627e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d403367e102-true-d403627e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d403367e102-true-d403627e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']])]"
         id="d402689e230-true-d403652e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e230-true-d403652e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']] (rule-reference: d402689e230-true-d403652e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | self::hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d403637e6-true-d403687e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403637e6-true-d403687e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d403637e6-true-d403687e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']])]"
         id="d402689e238-true-d403727e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e238-true-d403727e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']] (rule-reference: d402689e238-true-d403727e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d403712e6-true-d403762e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403712e6-true-d403762e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d403712e6-true-d403762e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d402689e246-true-d403811e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e246-true-d403811e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d402689e246-true-d403811e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d403787e6-true-d403833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403787e6-true-d403833e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d403787e6-true-d403833e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d403843e38-true-d403860e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d403843e38-true-d403860e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d403843e38-true-d403860e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d402689e254-true-d403885e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e254-true-d403885e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d402689e254-true-d403885e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d403870e6-true-d403913e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403870e6-true-d403913e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d403870e6-true-d403913e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d402689e262-true-d403947e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e262-true-d403947e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d402689e262-true-d403947e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d403932e6-true-d403976e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403932e6-true-d403976e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d403932e6-true-d403976e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d402689e270-true-d404013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e270-true-d404013e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d402689e270-true-d404013e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d403998e7-true-d404042e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d403998e7-true-d404042e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d403998e7-true-d404042e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d402689e281-true-d404153e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d402689e281-true-d404153e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d402689e281-true-d404153e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d404162e47-true-d404283e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404162e47-true-d404283e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d404162e47-true-d404283e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d404162e66-true-d404306e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404162e66-true-d404306e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d404162e66-true-d404306e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d404321e9-true-d404352e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d404321e9-true-d404352e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d404321e9-true-d404352e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d404321e24-true-d404373e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d404321e24-true-d404373e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d404321e24-true-d404373e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d404321e33-true-d404412e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d404321e33-true-d404412e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d404321e33-true-d404412e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d404321e47-true-d404433e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d404321e47-true-d404433e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d404321e47-true-d404433e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d404321e55-true-d404465e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d404321e55-true-d404465e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d404321e55-true-d404465e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d404480e16-true-d404502e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d404480e16-true-d404502e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d404480e16-true-d404502e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d404162e85-true-d404564e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404162e85-true-d404564e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d404162e85-true-d404564e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d404522e5-true-d404585e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404522e5-true-d404585e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d404522e5-true-d404585e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d404162e101-true-d404629e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404162e101-true-d404629e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d404162e101-true-d404629e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d404162e116-true-d404640e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404162e116-true-d404640e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d404162e116-true-d404640e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d404633e17-true-d404655e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d404633e17-true-d404655e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d404633e17-true-d404655e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d402689e303-true-d404680e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e303-true-d404680e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d402689e303-true-d404680e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d404665e6-true-d404709e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404665e6-true-d404709e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d404665e6-true-d404709e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d402689e311-true-d404746e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e311-true-d404746e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d402689e311-true-d404746e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d404731e9-true-d404780e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404731e9-true-d404780e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d404731e9-true-d404780e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d402689e322-true-d404822e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d402689e322-true-d404822e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d402689e322-true-d404822e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d404807e10-true-d404851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404807e10-true-d404851e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d404807e10-true-d404851e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']])]"
         id="d395762e118-true-d405044e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d395762e118-true-d405044e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']] (rule-reference: d395762e118-true-d405044e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | self::cda:id | self::cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:effectiveTime | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:performer[cda:assignedEntity] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | self::cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'])]"
         id="d404929e1-true-d405295e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e1-true-d405295e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | cda:id | cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:effectiveTime | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:performer[cda:assignedEntity] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'] (rule-reference: d404929e1-true-d405295e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d404929e53-true-d405337e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e53-true-d405337e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d404929e53-true-d405337e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:width)]"
         id="d404929e66-true-d405358e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e66-true-d405358e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:width (rule-reference: d404929e66-true-d405358e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d404929e85-true-d405424e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e85-true-d405424e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d404929e85-true-d405424e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d405368e5-true-d405482e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d405368e5-true-d405482e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d405368e5-true-d405482e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d405492e106-true-d405563e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d405492e106-true-d405563e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d405492e106-true-d405563e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d405563e119-true-d405618e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d405563e119-true-d405618e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d405563e119-true-d405618e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d405646e7-true-d405686e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405646e7-true-d405686e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d405646e7-true-d405686e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d405646e11-true-d405740e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405646e11-true-d405740e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d405646e11-true-d405740e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d405690e5-true-d405756e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405690e5-true-d405756e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d405690e5-true-d405756e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d405690e19-true-d405776e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405690e19-true-d405776e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d405690e19-true-d405776e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d405784e11-true-d405831e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405784e11-true-d405831e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d405784e11-true-d405831e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d405787e4-true-d405862e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d405787e4-true-d405862e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d405787e4-true-d405862e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d404929e91-true-d405916e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e91-true-d405916e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d404929e91-true-d405916e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d404929e93-true-d405955e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e93-true-d405955e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d404929e93-true-d405955e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d405964e30-true-d406023e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e30-true-d406023e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d405964e30-true-d406023e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d405964e53-true-d406074e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e53-true-d406074e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d405964e53-true-d406074e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d405964e62-true-d406084e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e62-true-d406084e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d405964e62-true-d406084e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d405964e70-true-d406118e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e70-true-d406118e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d405964e70-true-d406118e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d405964e86-true-d406202e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e86-true-d406202e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d405964e86-true-d406202e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d405964e102-true-d406224e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d405964e102-true-d406224e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d405964e102-true-d406224e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d404929e109-true-d406257e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e109-true-d406257e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d404929e109-true-d406257e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d406234e6-true-d406280e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406234e6-true-d406280e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d406234e6-true-d406280e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d406290e47-true-d406316e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d406290e47-true-d406316e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d406290e47-true-d406316e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']])]"
         id="d404929e118-true-d406379e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e118-true-d406379e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']] (rule-reference: d404929e118-true-d406379e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | self::hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')])]"
         id="d406364e6-true-d406408e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406364e6-true-d406408e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] (rule-reference: d406364e6-true-d406408e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d404929e126-true-d406445e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e126-true-d406445e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d404929e126-true-d406445e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d406430e6-true-d406473e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406430e6-true-d406473e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d406430e6-true-d406473e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']])]"
         id="d404929e134-true-d406507e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e134-true-d406507e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']] (rule-reference: d404929e134-true-d406507e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | self::hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d406492e6-true-d406542e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406492e6-true-d406542e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d406492e6-true-d406542e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d404929e142-true-d406582e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e142-true-d406582e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d404929e142-true-d406582e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d406567e7-true-d406611e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406567e7-true-d406611e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d406567e7-true-d406611e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/*[not(@xsi:nil = 'true')][not(self::hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']])]"
         id="d404929e152-true-d406648e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e152-true-d406648e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']] (rule-reference: d404929e152-true-d406648e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | self::hl7:id | self::hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d406633e6-true-d406677e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406633e6-true-d406677e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | hl7:id | hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d406633e6-true-d406677e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d404929e160-true-d406711e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d404929e160-true-d406711e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d404929e160-true-d406711e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9347']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d406699e7-true-d406740e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9347-2020-10-15T145401.html"
              test="not(.)">(MPCDAAfhVoorschrift4)/d406699e7-true-d406740e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d406699e7-true-d406740e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346'] | self::hl7:code[(@code = '131' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4') or @nullFlavor] | self::hl7:statusCode | self::hl7:recordTarget[hl7:patientRole] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | self::hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]])]"
         id="d406761e46-true-d407235e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d406761e46-true-d407235e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346'] | hl7:code[(@code = '131' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4') or @nullFlavor] | hl7:statusCode | hl7:recordTarget[hl7:patientRole] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]] | hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]] (rule-reference: d406761e46-true-d407235e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d407256e19-true-d407330e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e19-true-d407330e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d407256e19-true-d407330e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d407256e21-true-d407409e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e21-true-d407409e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d407256e21-true-d407409e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d407256e75-true-d407447e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e75-true-d407447e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d407256e75-true-d407447e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d407256e80-true-d407507e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e80-true-d407507e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d407256e80-true-d407507e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d407256e85-true-d407517e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e85-true-d407517e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d407256e85-true-d407517e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d407256e90-true-d407622e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e90-true-d407622e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d407256e90-true-d407622e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d407256e92-true-d407643e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e92-true-d407643e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d407256e92-true-d407643e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d407256e159-true-d407795e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e159-true-d407795e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d407256e159-true-d407795e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d407256e168-true-d407836e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e168-true-d407836e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d407256e168-true-d407836e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d407256e173-true-d407896e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e173-true-d407896e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d407256e173-true-d407896e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d407256e178-true-d407906e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e178-true-d407906e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d407256e178-true-d407906e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d407256e186-true-d407944e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e186-true-d407944e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d407256e186-true-d407944e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d407256e188-true-d407965e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e188-true-d407965e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d407256e188-true-d407965e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d407256e193-true-d408056e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d407256e193-true-d408056e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d407256e193-true-d408056e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']])]"
         id="d406761e111-true-d408279e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d406761e111-true-d408279e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']] (rule-reference: d406761e111-true-d408279e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:statusCode | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d408069e6-true-d408491e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408069e6-true-d408491e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:statusCode | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d408069e6-true-d408491e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d408501e149-true-d408541e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d408501e149-true-d408541e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d408501e149-true-d408541e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d408501e190-true-d408628e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e190-true-d408628e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d408501e190-true-d408628e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d408590e1-true-d408686e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408590e1-true-d408686e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d408590e1-true-d408686e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d408696e106-true-d408767e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d408696e106-true-d408767e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d408696e106-true-d408767e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d408767e119-true-d408822e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d408767e119-true-d408822e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d408767e119-true-d408822e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d408850e7-true-d408890e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408850e7-true-d408890e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d408850e7-true-d408890e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d408850e11-true-d408944e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408850e11-true-d408944e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d408850e11-true-d408944e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d408894e5-true-d408960e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408894e5-true-d408960e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d408894e5-true-d408960e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d408894e19-true-d408980e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408894e19-true-d408980e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d408894e19-true-d408980e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d408988e11-true-d409035e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408988e11-true-d409035e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d408988e11-true-d409035e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d408991e4-true-d409066e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d408991e4-true-d409066e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d408991e4-true-d409066e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d408501e192-true-d409125e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d408501e192-true-d409125e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d408501e192-true-d409125e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d408501e207-true-d409170e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d408501e207-true-d409170e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d408501e207-true-d409170e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d409179e30-true-d409238e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e30-true-d409238e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d409179e30-true-d409238e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d409179e53-true-d409289e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e53-true-d409289e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d409179e53-true-d409289e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d409179e62-true-d409299e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e62-true-d409299e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d409179e62-true-d409299e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d409179e70-true-d409333e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e70-true-d409333e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d409179e70-true-d409333e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d409179e86-true-d409417e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e86-true-d409417e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d409179e86-true-d409417e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d409179e102-true-d409439e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d409179e102-true-d409439e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d409179e102-true-d409439e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']])]"
         id="d408501e230-true-d409464e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e230-true-d409464e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']] (rule-reference: d408501e230-true-d409464e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | self::hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d409449e6-true-d409499e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409449e6-true-d409499e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d409449e6-true-d409499e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']])]"
         id="d408501e238-true-d409539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e238-true-d409539e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']] (rule-reference: d408501e238-true-d409539e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d409524e6-true-d409574e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409524e6-true-d409574e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d409524e6-true-d409574e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d408501e246-true-d409623e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e246-true-d409623e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d408501e246-true-d409623e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d409599e6-true-d409645e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409599e6-true-d409645e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d409599e6-true-d409645e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d409655e38-true-d409672e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d409655e38-true-d409672e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d409655e38-true-d409672e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d408501e254-true-d409697e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e254-true-d409697e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d408501e254-true-d409697e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d409682e6-true-d409725e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409682e6-true-d409725e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d409682e6-true-d409725e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d408501e262-true-d409759e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e262-true-d409759e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d408501e262-true-d409759e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d409744e6-true-d409788e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409744e6-true-d409788e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d409744e6-true-d409788e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d408501e270-true-d409825e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e270-true-d409825e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d408501e270-true-d409825e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d409810e7-true-d409854e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d409810e7-true-d409854e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d409810e7-true-d409854e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d408501e281-true-d409965e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d408501e281-true-d409965e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d408501e281-true-d409965e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d409974e47-true-d410095e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d409974e47-true-d410095e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d409974e47-true-d410095e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d409974e66-true-d410118e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d409974e66-true-d410118e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d409974e66-true-d410118e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d410133e9-true-d410164e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d410133e9-true-d410164e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d410133e9-true-d410164e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d410133e24-true-d410185e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d410133e24-true-d410185e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d410133e24-true-d410185e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d410133e33-true-d410224e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d410133e33-true-d410224e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d410133e33-true-d410224e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d410133e47-true-d410245e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d410133e47-true-d410245e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d410133e47-true-d410245e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d410133e55-true-d410277e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d410133e55-true-d410277e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d410133e55-true-d410277e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d410292e16-true-d410314e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d410292e16-true-d410314e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d410292e16-true-d410314e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d409974e85-true-d410376e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d409974e85-true-d410376e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d409974e85-true-d410376e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d410334e5-true-d410397e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d410334e5-true-d410397e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d410334e5-true-d410397e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d409974e101-true-d410441e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d409974e101-true-d410441e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d409974e101-true-d410441e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d409974e116-true-d410452e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d409974e116-true-d410452e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d409974e116-true-d410452e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d410445e17-true-d410467e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d410445e17-true-d410467e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d410445e17-true-d410467e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d408501e303-true-d410492e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e303-true-d410492e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d408501e303-true-d410492e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d410477e6-true-d410521e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d410477e6-true-d410521e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d410477e6-true-d410521e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d408501e311-true-d410558e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e311-true-d410558e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d408501e311-true-d410558e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d410543e9-true-d410592e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d410543e9-true-d410592e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d410543e9-true-d410592e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d408501e322-true-d410634e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d408501e322-true-d410634e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d408501e322-true-d410634e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9332'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d410619e10-true-d410663e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d410619e10-true-d410663e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d410619e10-true-d410663e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']])]"
         id="d406761e119-true-d410895e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d406761e119-true-d410895e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']] (rule-reference: d406761e119-true-d410895e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:statusCode | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d410685e6-true-d411107e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d410685e6-true-d411107e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:statusCode | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d410685e6-true-d411107e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d411117e149-true-d411157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d411117e149-true-d411157e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d411117e149-true-d411157e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d411117e190-true-d411244e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e190-true-d411244e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d411117e190-true-d411244e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d411206e1-true-d411302e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411206e1-true-d411302e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d411206e1-true-d411302e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d411312e106-true-d411383e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d411312e106-true-d411383e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d411312e106-true-d411383e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d411383e119-true-d411438e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d411383e119-true-d411438e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d411383e119-true-d411438e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d411466e7-true-d411506e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411466e7-true-d411506e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d411466e7-true-d411506e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d411466e11-true-d411560e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411466e11-true-d411560e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d411466e11-true-d411560e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d411510e5-true-d411576e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411510e5-true-d411576e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d411510e5-true-d411576e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d411510e19-true-d411596e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411510e19-true-d411596e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d411510e19-true-d411596e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d411604e11-true-d411651e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411604e11-true-d411651e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d411604e11-true-d411651e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d411607e4-true-d411682e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d411607e4-true-d411682e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d411607e4-true-d411682e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d411117e192-true-d411741e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d411117e192-true-d411741e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d411117e192-true-d411741e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d411117e207-true-d411786e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d411117e207-true-d411786e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d411117e207-true-d411786e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d411795e30-true-d411854e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e30-true-d411854e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d411795e30-true-d411854e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d411795e53-true-d411905e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e53-true-d411905e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d411795e53-true-d411905e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d411795e62-true-d411915e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e62-true-d411915e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d411795e62-true-d411915e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d411795e70-true-d411949e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e70-true-d411949e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d411795e70-true-d411949e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d411795e86-true-d412033e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e86-true-d412033e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d411795e86-true-d412033e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d411795e102-true-d412055e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d411795e102-true-d412055e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d411795e102-true-d412055e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']])]"
         id="d411117e230-true-d412080e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e230-true-d412080e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']] (rule-reference: d411117e230-true-d412080e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | self::hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d412065e6-true-d412115e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412065e6-true-d412115e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9372'] | hl7:code[(@code = '274512008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-03-14T121305.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d412065e6-true-d412115e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']])]"
         id="d411117e238-true-d412155e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e238-true-d412155e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']] (rule-reference: d411117e238-true-d412155e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d412140e6-true-d412190e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412140e6-true-d412190e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9394'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-03-11T132509.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d412140e6-true-d412190e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d411117e246-true-d412239e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e246-true-d412239e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d411117e246-true-d412239e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d412215e6-true-d412261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412215e6-true-d412261e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d412215e6-true-d412261e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d412271e38-true-d412288e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d412271e38-true-d412288e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d412271e38-true-d412288e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d411117e254-true-d412313e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e254-true-d412313e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d411117e254-true-d412313e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d412298e6-true-d412341e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412298e6-true-d412341e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d412298e6-true-d412341e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d411117e262-true-d412375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e262-true-d412375e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d411117e262-true-d412375e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d412360e6-true-d412404e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412360e6-true-d412404e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d412360e6-true-d412404e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d411117e270-true-d412441e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e270-true-d412441e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d411117e270-true-d412441e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d412426e7-true-d412470e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d412426e7-true-d412470e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d412426e7-true-d412470e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d411117e281-true-d412581e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9326-2020-10-15T132826.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud4)/d411117e281-true-d412581e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d411117e281-true-d412581e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d412590e47-true-d412711e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412590e47-true-d412711e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d412590e47-true-d412711e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d412590e66-true-d412734e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412590e66-true-d412734e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d412590e66-true-d412734e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d412749e9-true-d412780e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d412749e9-true-d412780e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d412749e9-true-d412780e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d412749e24-true-d412801e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d412749e24-true-d412801e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d412749e24-true-d412801e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d412749e33-true-d412840e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d412749e33-true-d412840e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d412749e33-true-d412840e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d412749e47-true-d412861e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d412749e47-true-d412861e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d412749e47-true-d412861e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d412749e55-true-d412893e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d412749e55-true-d412893e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d412749e55-true-d412893e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d412908e16-true-d412930e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d412908e16-true-d412930e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d412908e16-true-d412930e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d412590e85-true-d412992e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412590e85-true-d412992e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d412590e85-true-d412992e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d412950e5-true-d413013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412950e5-true-d413013e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d412950e5-true-d413013e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d412590e101-true-d413057e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412590e101-true-d413057e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d412590e101-true-d413057e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d412590e116-true-d413068e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d412590e116-true-d413068e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d412590e116-true-d413068e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d413061e17-true-d413083e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d413061e17-true-d413083e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d413061e17-true-d413083e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d411117e303-true-d413108e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e303-true-d413108e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d411117e303-true-d413108e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d413093e6-true-d413137e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413093e6-true-d413137e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d413093e6-true-d413137e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d411117e311-true-d413174e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e311-true-d413174e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d411117e311-true-d413174e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d413159e9-true-d413208e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413159e9-true-d413208e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d413159e9-true-d413208e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d411117e322-true-d413250e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d411117e322-true-d413250e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d411117e322-true-d413250e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9327'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9326']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d413235e10-true-d413279e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413235e10-true-d413279e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d413235e10-true-d413279e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']])]"
         id="d406761e127-true-d413472e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d406761e127-true-d413472e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']] (rule-reference: d406761e127-true-d413472e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | self::cda:id | self::cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:effectiveTime | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:performer[cda:assignedEntity] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | self::cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'])]"
         id="d413301e6-true-d413723e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e6-true-d413723e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | cda:id | cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:effectiveTime | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:performer[cda:assignedEntity] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'] (rule-reference: d413301e6-true-d413723e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d413301e58-true-d413765e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e58-true-d413765e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d413301e58-true-d413765e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:width)]"
         id="d413301e71-true-d413786e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e71-true-d413786e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:width (rule-reference: d413301e71-true-d413786e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d413301e90-true-d413852e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e90-true-d413852e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d413301e90-true-d413852e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d413796e5-true-d413910e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413796e5-true-d413910e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d413796e5-true-d413910e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d413920e106-true-d413991e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d413920e106-true-d413991e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d413920e106-true-d413991e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d413991e119-true-d414046e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d413991e119-true-d414046e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d413991e119-true-d414046e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d414074e7-true-d414114e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414074e7-true-d414114e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d414074e7-true-d414114e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d414074e11-true-d414168e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414074e11-true-d414168e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d414074e11-true-d414168e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d414118e5-true-d414184e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414118e5-true-d414184e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d414118e5-true-d414184e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d414118e19-true-d414204e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414118e19-true-d414204e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d414118e19-true-d414204e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d414212e11-true-d414259e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414212e11-true-d414259e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d414212e11-true-d414259e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d414215e4-true-d414290e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d414215e4-true-d414290e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d414215e4-true-d414290e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d413301e96-true-d414344e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e96-true-d414344e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d413301e96-true-d414344e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d413301e98-true-d414383e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e98-true-d414383e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d413301e98-true-d414383e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d414392e30-true-d414451e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e30-true-d414451e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d414392e30-true-d414451e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d414392e53-true-d414502e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e53-true-d414502e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d414392e53-true-d414502e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d414392e62-true-d414512e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e62-true-d414512e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d414392e62-true-d414512e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d414392e70-true-d414546e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e70-true-d414546e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d414392e70-true-d414546e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d414392e86-true-d414630e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e86-true-d414630e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d414392e86-true-d414630e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d414392e102-true-d414652e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d414392e102-true-d414652e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d414392e102-true-d414652e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d413301e114-true-d414685e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e114-true-d414685e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d413301e114-true-d414685e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d414662e6-true-d414708e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d414662e6-true-d414708e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d414662e6-true-d414708e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d414718e47-true-d414744e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d414718e47-true-d414744e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d414718e47-true-d414744e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']])]"
         id="d413301e123-true-d414807e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e123-true-d414807e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']] (rule-reference: d413301e123-true-d414807e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | self::hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')])]"
         id="d414792e6-true-d414836e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d414792e6-true-d414836e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] (rule-reference: d414792e6-true-d414836e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d413301e131-true-d414873e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e131-true-d414873e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d413301e131-true-d414873e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d414858e6-true-d414901e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d414858e6-true-d414901e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d414858e6-true-d414901e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']])]"
         id="d413301e139-true-d414935e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e139-true-d414935e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']] (rule-reference: d413301e139-true-d414935e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | self::hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d414920e6-true-d414970e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d414920e6-true-d414970e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d414920e6-true-d414970e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d413301e147-true-d415010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e147-true-d415010e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d413301e147-true-d415010e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d414995e7-true-d415039e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d414995e7-true-d415039e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d414995e7-true-d415039e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/*[not(@xsi:nil = 'true')][not(self::hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']])]"
         id="d413301e157-true-d415076e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e157-true-d415076e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']] (rule-reference: d413301e157-true-d415076e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | self::hl7:id | self::hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d415061e6-true-d415105e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d415061e6-true-d415105e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | hl7:id | hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d415061e6-true-d415105e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d413301e165-true-d415139e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d413301e165-true-d415139e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d413301e165-true-d415139e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9346']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d415127e7-true-d415168e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20220402T205710/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9346-2020-10-15T145310.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer5)/d415127e7-true-d415168e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d415127e7-true-d415168e0)</assert>
   </rule>
</pattern>
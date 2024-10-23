<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9145
Name: Basis Voorstel Verstrekkingsverzoek
Description: Basis voor Voorstel Verstrekkingsverzoek. Template voor keuze tussen CDA of HL7 template.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9145-2016-07-15T114041-closed"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Basis Voorstel Verstrekkingsverzoek</title>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[@code = 'NL'] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | self::hl7:languageCode[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:component)]"
         id="d78522e11-true-d78804e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e11-true-d78804e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:realmCode[@code = 'NL'] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | hl7:languageCode[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author | hl7:custodian[hl7:assignedCustodian] | hl7:component (rule-reference: d78522e11-true-d78804e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d78868e17-true-d78972e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e17-true-d78972e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d78868e17-true-d78972e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d78868e19-true-d79091e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e19-true-d79091e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d78868e19-true-d79091e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d78868e71-true-d79141e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e71-true-d79141e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d78868e71-true-d79141e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d78868e76-true-d79214e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e76-true-d79214e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d78868e76-true-d79214e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d78868e81-true-d79227e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e81-true-d79227e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d78868e81-true-d79227e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d78868e86-true-d79342e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e86-true-d79342e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d78868e86-true-d79342e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d78868e88-true-d79363e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e88-true-d79363e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d78868e88-true-d79363e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d78868e112-true-d79551e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e112-true-d79551e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d78868e112-true-d79551e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d78868e121-true-d79603e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e121-true-d79603e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d78868e121-true-d79603e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d78868e126-true-d79676e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e126-true-d79676e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d78868e126-true-d79676e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d78868e131-true-d79689e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e131-true-d79689e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d78868e131-true-d79689e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]])]"
         id="d78868e139-true-d79723e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e139-true-d79723e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]] (rule-reference: d78868e139-true-d79723e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d78868e143-true-d79744e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e143-true-d79744e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d78868e143-true-d79744e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient[hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d78868e148-true-d79846e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2018-06-11T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d78868e148-true-d79846e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d78868e148-true-d79846e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | self::hl7:assignedAuthor[hl7:code/@code = 'ONESELF'])]"
         id="d79862e18-true-d79909e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d79862e18-true-d79909e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | hl7:assignedAuthor[hl7:code/@code = 'ONESELF'] (rule-reference: d79862e18-true-d79909e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization)]"
         id="d79862e37-true-d79984e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d79862e37-true-d79984e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization (rule-reference: d79862e37-true-d79984e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d79862e67-true-d80090e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d79862e67-true-d80090e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d79862e67-true-d80090e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d80076e1-true-d80111e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d80076e1-true-d80111e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d80076e1-true-d80111e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:code | self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d79862e69-true-d80224e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d79862e69-true-d80224e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:manufacturerModelName | hl7:softwareName (rule-reference: d79862e69-true-d80224e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d80249e26-true-d80327e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e26-true-d80327e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d80249e26-true-d80327e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d80249e47-true-d80381e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e47-true-d80381e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d80249e47-true-d80381e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d80249e56-true-d80394e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e56-true-d80394e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d80249e56-true-d80394e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d80249e64-true-d80440e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e64-true-d80440e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d80249e64-true-d80440e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d80249e80-true-d80536e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e80-true-d80536e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d80249e80-true-d80536e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d80249e96-true-d80561e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.5-2018-06-11T000000.html"
              test="not(.)">(representedOrganization)/d80249e96-true-d80561e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d80249e96-true-d80561e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:author/hl7:assignedAuthor[hl7:code/@code = 'ONESELF']/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@nullFlavor] | self::hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')])]"
         id="d79862e75-true-d80580e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.51-2018-12-18T141008.html"
              test="not(.)">(CDAauthorSDTCNL)/d79862e75-true-d80580e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor] | hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] (rule-reference: d79862e75-true-d80580e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[hl7:representedCustodianOrganization])]"
         id="d80614e15-true-d80628e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.50-2018-12-17T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d80614e15-true-d80628e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedCustodian[hl7:representedCustodianOrganization] (rule-reference: d80614e15-true-d80628e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization)]"
         id="d80614e19-true-d80645e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.50-2018-12-17T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d80614e19-true-d80645e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:representedCustodianOrganization (rule-reference: d80614e19-true-d80645e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | self::hl7:name | self::hl7:telecom | self::hl7:addr)]"
         id="d80614e23-true-d80678e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.50-2018-12-17T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d80614e23-true-d80678e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | hl7:name | hl7:telecom | hl7:addr (rule-reference: d80614e23-true-d80678e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:structuredBody[hl7:component])]"
         id="d78522e48-true-d80861e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e48-true-d80861e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:structuredBody[hl7:component] (rule-reference: d78522e48-true-d80861e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section])]"
         id="d78522e50-true-d81004e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e50-true-d81004e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:component[hl7:section] (rule-reference: d78522e50-true-d81004e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/*[not(@xsi:nil = 'true')][not(self::hl7:section[hl7:entry])]"
         id="d78522e52-true-d81147e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e52-true-d81147e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:section[hl7:entry] (rule-reference: d78522e52-true-d81147e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/*[not(@xsi:nil = 'true')][not(self::hl7:text | self::hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]] | self::hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]])]"
         id="d78522e54-true-d81300e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e54-true-d81300e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:text | hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]] | hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] (rule-reference: d78522e54-true-d81300e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']])]"
         id="d78522e58-true-d81473e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e58-true-d81473e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']] (rule-reference: d78522e58-true-d81473e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] | self::hl7:id | self::cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:repeatNumber | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] | self::cda:performer[cda:assignedEntity] | self::hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | self::hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d81313e5-true-d81673e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e5-true-d81673e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] | hl7:id | cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:repeatNumber | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] | cda:performer[cda:assignedEntity] | hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d81313e5-true-d81673e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d81313e55-true-d81716e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e55-true-d81716e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d81313e55-true-d81716e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:width | self::cda:high)]"
         id="d81313e66-true-d81753e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e66-true-d81753e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:width | cda:high (rule-reference: d81313e66-true-d81753e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']])]"
         id="d81313e98-true-d81815e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e98-true-d81815e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']] (rule-reference: d81313e98-true-d81815e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363'] | self::hl7:manufacturedMaterial)]"
         id="d81789e1-true-d81854e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81789e1-true-d81854e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363'] | hl7:manufacturedMaterial (rule-reference: d81789e1-true-d81854e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d81865e104-true-d81920e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d81865e104-true-d81920e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d81865e104-true-d81920e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d81925e33-true-d81978e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d81925e33-true-d81978e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d81925e33-true-d81978e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d82011e7-true-d82034e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82011e7-true-d82034e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d82011e7-true-d82034e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d82011e11-true-d82071e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82011e11-true-d82071e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d82011e11-true-d82071e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d82041e5-true-d82086e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82041e5-true-d82086e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d82041e5-true-d82086e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d82041e19-true-d82107e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82041e19-true-d82107e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d82041e19-true-d82107e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d82118e11-true-d82165e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82118e11-true-d82165e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d82118e11-true-d82165e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d82122e8-true-d82198e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d82122e8-true-d82198e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d82122e8-true-d82198e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d81313e100-true-d82269e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e100-true-d82269e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d81313e100-true-d82269e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d81313e105-true-d82319e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e105-true-d82319e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d81313e105-true-d82319e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d82330e29-true-d82408e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e29-true-d82408e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d82330e29-true-d82408e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d82330e50-true-d82462e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e50-true-d82462e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d82330e50-true-d82462e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d82330e59-true-d82475e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e59-true-d82475e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d82330e59-true-d82475e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d82330e67-true-d82521e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e67-true-d82521e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d82330e67-true-d82521e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d82330e83-true-d82617e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e83-true-d82617e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d82330e83-true-d82617e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d82330e99-true-d82642e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d82330e99-true-d82642e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d82330e99-true-d82642e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor)]"
         id="d82653e68-true-d82713e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d82653e68-true-d82713e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor (rule-reference: d82653e68-true-d82713e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:representedOrganization)]"
         id="d82718e33-true-d82829e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d82718e33-true-d82829e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d82718e33-true-d82829e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d82834e26-true-d82925e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d82834e26-true-d82925e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d82834e26-true-d82925e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d82834e34-true-d82998e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d82834e34-true-d82998e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d82834e34-true-d82998e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d82834e42-true-d83011e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d82834e42-true-d83011e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d82834e42-true-d83011e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d82834e50-true-d83039e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d82834e50-true-d83039e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d82834e50-true-d83039e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d83025e1-true-d83060e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d83025e1-true-d83060e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d83025e1-true-d83060e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d83147e29-true-d83225e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e29-true-d83225e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d83147e29-true-d83225e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d83147e50-true-d83279e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e50-true-d83279e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d83147e50-true-d83279e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d83147e59-true-d83292e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e59-true-d83292e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d83147e59-true-d83292e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d83147e67-true-d83338e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e67-true-d83338e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d83147e67-true-d83338e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d83147e83-true-d83434e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e83-true-d83434e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d83147e83-true-d83434e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d83147e99-true-d83459e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d83147e99-true-d83459e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d83147e99-true-d83459e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:code/@code='ONESELF'])]"
         id="d82653e76-true-d83481e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d82653e76-true-d83481e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:code/@code='ONESELF'] (rule-reference: d82653e76-true-d83481e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@nullFlavor] | self::hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')])]"
         id="d82653e87-true-d83500e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d82653e87-true-d83500e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor] | hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] (rule-reference: d82653e87-true-d83500e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d81313e122-true-d83552e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e122-true-d83552e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d81313e122-true-d83552e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d83533e8-true-d83574e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83533e8-true-d83574e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d83533e8-true-d83574e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d83585e36-true-d83612e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d83585e36-true-d83612e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d83585e36-true-d83612e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']])]"
         id="d81313e130-true-d83682e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e130-true-d83682e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']] (rule-reference: d81313e130-true-d83682e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2017-05-05T130346.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d83669e8-true-d83708e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83669e8-true-d83708e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2017-05-05T130346.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d83669e8-true-d83708e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']])]"
         id="d81313e138-true-d83742e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e138-true-d83742e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']] (rule-reference: d81313e138-true-d83742e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] | self::hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')])]"
         id="d83729e8-true-d83769e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83729e8-true-d83769e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] | hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')] (rule-reference: d83729e8-true-d83769e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d81313e146-true-d83807e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e146-true-d83807e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d81313e146-true-d83807e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d83794e11-true-d83834e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83794e11-true-d83834e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d83794e11-true-d83834e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d81313e156-true-d83872e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e156-true-d83872e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d81313e156-true-d83872e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d83859e11-true-d83904e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83859e11-true-d83904e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d83859e11-true-d83904e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d81313e167-true-d83948e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d81313e167-true-d83948e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d81313e167-true-d83948e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d83935e21-true-d83975e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d83935e21-true-d83975e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d83935e21-true-d83975e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d78522e64-true-d84013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d78522e64-true-d84013e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d78522e64-true-d84013e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9144']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section[hl7:entry]/hl7:entry[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d84000e5-true-d84040e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9144-2016-07-15T113847.html"
              test="not(.)">(MPCDADocVoorstelVV)/d84000e5-true-d84040e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d84000e5-true-d84040e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130'] | self::hl7:id | self::hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] | self::hl7:statusCode | self::hl7:recordTarget[hl7:patientRole] | self::hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]] | self::hl7:component[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]])]"
         id="d84063e19-true-d84295e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d84063e19-true-d84295e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130'] | hl7:id | hl7:code[(@code = '104' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4')] | hl7:statusCode | hl7:recordTarget[hl7:patientRole] | hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]] | hl7:component[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] (rule-reference: d84063e19-true-d84295e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d84325e19-true-d84429e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e19-true-d84429e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d84325e19-true-d84429e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d84325e21-true-d84544e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e21-true-d84544e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d84325e21-true-d84544e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d84325e73-true-d84594e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e73-true-d84594e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d84325e73-true-d84594e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d84325e78-true-d84667e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e78-true-d84667e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d84325e78-true-d84667e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d84325e83-true-d84680e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e83-true-d84680e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d84325e83-true-d84680e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d84325e88-true-d84793e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e88-true-d84793e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2017-12-31T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d84325e88-true-d84793e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d84325e90-true-d84814e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e90-true-d84814e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d84325e90-true-d84814e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d84325e157-true-d85002e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e157-true-d85002e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d84325e157-true-d85002e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d84325e166-true-d85054e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e166-true-d85054e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d84325e166-true-d85054e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d84325e171-true-d85127e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e171-true-d85127e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d84325e171-true-d85127e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d84325e176-true-d85140e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e176-true-d85140e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d84325e176-true-d85140e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d84325e184-true-d85174e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e184-true-d85174e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d84325e184-true-d85174e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d84325e186-true-d85195e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e186-true-d85195e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d84325e186-true-d85195e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d84325e191-true-d85297e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d84325e191-true-d85297e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d84325e191-true-d85297e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']])]"
         id="d84063e82-true-d85472e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d84063e82-true-d85472e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']] (rule-reference: d84063e82-true-d85472e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] | self::hl7:id | self::cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:repeatNumber | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] | self::cda:performer[cda:assignedEntity] | self::hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | self::hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d85312e8-true-d85672e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e8-true-d85672e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131'] | hl7:id | cda:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:repeatNumber | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]] | cda:performer[cda:assignedEntity] | hl7:author[hl7:assignedAuthor[hl7:assignedPerson]] | hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d85312e8-true-d85672e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d85312e58-true-d85715e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e58-true-d85715e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d85312e58-true-d85715e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:width | self::cda:high)]"
         id="d85312e69-true-d85752e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e69-true-d85752e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:width | cda:high (rule-reference: d85312e69-true-d85752e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']])]"
         id="d85312e101-true-d85814e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e101-true-d85814e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']] (rule-reference: d85312e101-true-d85814e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363'] | self::hl7:manufacturedMaterial)]"
         id="d85788e1-true-d85853e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85788e1-true-d85853e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363'] | hl7:manufacturedMaterial (rule-reference: d85788e1-true-d85853e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d85864e104-true-d85919e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d85864e104-true-d85919e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d85864e104-true-d85919e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/hl7:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d85924e33-true-d85977e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d85924e33-true-d85977e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d85924e33-true-d85977e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d86010e7-true-d86033e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86010e7-true-d86033e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d86010e7-true-d86033e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d86010e11-true-d86070e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86010e11-true-d86070e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d86010e11-true-d86070e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d86040e5-true-d86085e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86040e5-true-d86085e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d86040e5-true-d86085e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d86040e19-true-d86106e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86040e19-true-d86106e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d86040e19-true-d86106e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor])]"
         id="d86117e11-true-d86164e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86117e11-true-d86164e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor] (rule-reference: d86117e11-true-d86164e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9363']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code[@codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.8.2.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.8-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.10-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.9-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.13-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.20-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @codeSystem = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.9.5.11-2015-04-01T000000.xml')//valueSet[1]/completeCodeSystem/@codeSystem or @nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d86121e8-true-d86197e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d86121e8-true-d86197e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d86121e8-true-d86197e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d85312e103-true-d86268e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e103-true-d86268e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d85312e103-true-d86268e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d85312e108-true-d86318e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e108-true-d86318e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d85312e108-true-d86318e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d86329e29-true-d86407e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e29-true-d86407e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d86329e29-true-d86407e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d86329e50-true-d86461e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e50-true-d86461e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d86329e50-true-d86461e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d86329e59-true-d86474e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e59-true-d86474e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d86329e59-true-d86474e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d86329e67-true-d86520e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e67-true-d86520e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d86329e67-true-d86520e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d86329e83-true-d86616e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e83-true-d86616e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d86329e83-true-d86616e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d86329e99-true-d86641e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d86329e99-true-d86641e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d86329e99-true-d86641e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor)]"
         id="d86652e68-true-d86712e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d86652e68-true-d86712e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor (rule-reference: d86652e68-true-d86712e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:representedOrganization)]"
         id="d86717e33-true-d86828e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d86717e33-true-d86828e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d86717e33-true-d86828e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d86833e26-true-d86924e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d86833e26-true-d86924e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d86833e26-true-d86924e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d86833e34-true-d86997e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d86833e34-true-d86997e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d86833e34-true-d86997e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d86833e42-true-d87010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d86833e42-true-d87010e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d86833e42-true-d87010e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d86833e50-true-d87038e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d86833e50-true-d87038e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d86833e50-true-d87038e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | self::hl7:family[not(@qualifier)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d87024e1-true-d87059e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.32-2021-07-01T000000.html"
              test="not(.)">(author)/d87024e1-true-d87059e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family]] | hl7:family[not(@qualifier)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d87024e1-true-d87059e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:asOrganizationPartOf)]"
         id="d87146e29-true-d87224e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e29-true-d87224e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:asOrganizationPartOf (rule-reference: d87146e29-true-d87224e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d87146e50-true-d87278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e50-true-d87278e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d87146e50-true-d87278e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d87146e59-true-d87291e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e59-true-d87291e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d87146e59-true-d87291e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d87146e67-true-d87337e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e67-true-d87337e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d87146e67-true-d87337e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d87146e83-true-d87433e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e83-true-d87433e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d87146e83-true-d87433e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:assignedPerson]]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d87146e99-true-d87458e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d87146e99-true-d87458e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d87146e99-true-d87458e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:code/@code='ONESELF'])]"
         id="d86652e76-true-d87480e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d86652e76-true-d87480e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:code/@code='ONESELF'] (rule-reference: d86652e76-true-d87480e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/hl7:author[hl7:assignedAuthor[hl7:code/@code='ONESELF']]/hl7:assignedAuthor[hl7:code/@code='ONESELF']/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@nullFlavor] | self::hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')])]"
         id="d86652e87-true-d87499e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9187-2018-12-05T180828.html"
              test="not(.)">(MPCDAauthorZorgvPatient)/d86652e87-true-d87499e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor] | hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] (rule-reference: d86652e87-true-d87499e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d85312e125-true-d87551e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e125-true-d87551e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d85312e125-true-d87551e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d87532e8-true-d87573e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87532e8-true-d87573e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d87532e8-true-d87573e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d87584e36-true-d87611e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d87584e36-true-d87611e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d87584e36-true-d87611e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']])]"
         id="d85312e133-true-d87681e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e133-true-d87681e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']] (rule-reference: d85312e133-true-d87681e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2017-05-05T130346.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d87668e8-true-d87707e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87668e8-true-d87707e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9093'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.32-2017-05-05T130346.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d87668e8-true-d87707e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']])]"
         id="d85312e141-true-d87741e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e141-true-d87741e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']] (rule-reference: d85312e141-true-d87741e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] | self::hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')])]"
         id="d87728e8-true-d87768e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87728e8-true-d87768e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9357'] | hl7:code[(@code = '153931000146103' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'CE')] (rule-reference: d87728e8-true-d87768e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d85312e149-true-d87806e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e149-true-d87806e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d85312e149-true-d87806e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d87793e11-true-d87833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87793e11-true-d87833e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d87793e11-true-d87833e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d85312e159-true-d87871e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e159-true-d87871e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d85312e159-true-d87871e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d87858e11-true-d87903e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87858e11-true-d87903e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d87858e11-true-d87903e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d85312e170-true-d87947e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d85312e170-true-d87947e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d85312e170-true-d87947e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9131']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d87934e21-true-d87974e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87934e21-true-d87974e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d87934e21-true-d87974e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d84063e90-true-d88012e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d84063e90-true-d88012e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d84063e90-true-d88012e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9130']]/hl7:component[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d87999e8-true-d88039e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-20210921T194523/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9130-2016-07-14T201445.html"
              test="not(.)">(MPHL7VoorstelVVOrganizer)/d87999e8-true-d88039e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d87999e8-true-d88039e0)</assert>
   </rule>
</pattern>
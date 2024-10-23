<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9421
Name: Basis Afhandeling Voorschrift
Description: Basis voor Afhandeling Voorschrift. Template voor keuze tussen CDA of HL7 template.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9421-2022-11-21T151909-closed"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Basis Afhandeling Voorschrift</title>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/*[not(@xsi:nil = 'true')][not(self::hl7:realmCode[@code = 'NL'] | self::hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419'] | self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:title[not(@nullFlavor)] | self::hl7:effectiveTime[not(@nullFlavor)] | self::hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | self::hl7:languageCode[not(@nullFlavor)] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:author | self::hl7:custodian[hl7:assignedCustodian] | self::hl7:component)]"
         id="d219098e20-true-d219638e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e20-true-d219638e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:realmCode[@code = 'NL'] | hl7:typeId[@root = '2.16.840.1.113883.1.3'][@extension = 'POCD_HD000040'] | hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419'] | hl7:id[not(@nullFlavor)] | hl7:code[(@code = '52981000146104' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:title[not(@nullFlavor)] | hl7:effectiveTime[not(@nullFlavor)] | hl7:confidentialityCode[@codeSystem = '2.16.840.1.113883.5.25' or @code = 'N' or @code = 'R' or @code = 'V' or @nullFlavor] | hl7:languageCode[not(@nullFlavor)] | hl7:recordTarget[hl7:patientRole] | hl7:author | hl7:custodian[hl7:assignedCustodian] | hl7:component (rule-reference: d219098e20-true-d219638e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d219702e19-true-d219806e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e19-true-d219806e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d219702e19-true-d219806e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d219702e21-true-d219921e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e21-true-d219921e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d219702e21-true-d219921e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d219702e79-true-d219971e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e79-true-d219971e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d219702e79-true-d219971e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d219702e84-true-d220044e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e84-true-d220044e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d219702e84-true-d220044e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d219702e89-true-d220057e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e89-true-d220057e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d219702e89-true-d220057e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d219702e94-true-d220170e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e94-true-d220170e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d219702e94-true-d220170e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d219702e96-true-d220191e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e96-true-d220191e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d219702e96-true-d220191e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d219702e173-true-d220384e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e173-true-d220384e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d219702e173-true-d220384e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d219702e182-true-d220436e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e182-true-d220436e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d219702e182-true-d220436e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d219702e187-true-d220509e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e187-true-d220509e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d219702e187-true-d220509e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d219702e192-true-d220522e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e192-true-d220522e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d219702e192-true-d220522e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d219702e200-true-d220556e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e200-true-d220556e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d219702e200-true-d220556e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d219702e202-true-d220577e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e202-true-d220577e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d219702e202-true-d220577e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d219702e207-true-d220684e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d219702e207-true-d220684e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d219702e207-true-d220684e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | self::hl7:assignedAuthor[hl7:code/@code = 'ONESELF'])]"
         id="d220700e18-true-d220759e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e18-true-d220759e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')] | hl7:assignedAuthor[hl7:code/@code = 'ONESELF'] (rule-reference: d220700e18-true-d220759e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:assignedAuthoringDevice | self::hl7:representedOrganization)]"
         id="d220700e37-true-d220857e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e37-true-d220857e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:assignedAuthoringDevice | hl7:representedOrganization (rule-reference: d220700e37-true-d220857e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d220700e60-true-d220948e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e60-true-d220948e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d220700e60-true-d220948e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d220700e69-true-d221021e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e69-true-d221021e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d220700e69-true-d221021e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d220700e77-true-d221034e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e77-true-d221034e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d220700e77-true-d221034e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d220700e87-true-d221062e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e87-true-d221062e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d220700e87-true-d221062e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d221048e1-true-d221083e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d221048e1-true-d221083e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d221048e1-true-d221083e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:assignedAuthoringDevice/*[not(@xsi:nil = 'true')][not(self::hl7:code | self::hl7:manufacturerModelName | self::hl7:softwareName)]"
         id="d220700e89-true-d221201e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e89-true-d221201e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code | hl7:manufacturerModelName | hl7:softwareName (rule-reference: d220700e89-true-d221201e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d221226e42-true-d221300e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e42-true-d221300e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d221226e42-true-d221300e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d221226e67-true-d221354e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e67-true-d221354e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d221226e67-true-d221354e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d221226e76-true-d221367e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e76-true-d221367e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d221226e76-true-d221367e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d221226e84-true-d221413e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e84-true-d221413e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d221226e84-true-d221413e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d221226e102-true-d221509e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e102-true-d221509e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d221226e102-true-d221509e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[not(hl7:code/@code = 'ONESELF')]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d221226e121-true-d221534e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d221226e121-true-d221534e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d221226e121-true-d221534e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:author/hl7:assignedAuthor[hl7:code/@code = 'ONESELF']/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | self::hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | self::hl7:id[@nullFlavor] | self::hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')])]"
         id="d220700e95-true-d221553e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.39-2021-07-01T000000.html"
              test="not(.)">(CDAauthorSDTCNL)/d220700e95-true-d221553e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root='2.16.840.1.113883.2.4.6.3'] | hl7:id[not(@root='2.16.840.1.113883.2.4.6.3')] | hl7:id[@nullFlavor] | hl7:code[(@code = 'ONESELF' and @codeSystem = '2.16.840.1.113883.5.111')] (rule-reference: d220700e95-true-d221553e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:custodian[hl7:assignedCustodian]/*[not(@xsi:nil = 'true')][not(self::hl7:assignedCustodian[hl7:representedCustodianOrganization])]"
         id="d221587e17-true-d221601e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d221587e17-true-d221601e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:assignedCustodian[hl7:representedCustodianOrganization] (rule-reference: d221587e17-true-d221601e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/*[not(@xsi:nil = 'true')][not(self::hl7:representedCustodianOrganization)]"
         id="d221587e21-true-d221618e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d221587e21-true-d221618e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:representedCustodianOrganization (rule-reference: d221587e21-true-d221618e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:custodian[hl7:assignedCustodian]/hl7:assignedCustodian[hl7:representedCustodianOrganization]/hl7:representedCustodianOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | self::hl7:name | self::hl7:telecom | self::hl7:addr)]"
         id="d221587e25-true-d221651e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.15-2021-07-01T000000.html"
              test="not(.)">(CDAcustodianSDTCNL)/d221587e25-true-d221651e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[@root[not(. = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))]] | hl7:name | hl7:telecom | hl7:addr (rule-reference: d221587e25-true-d221651e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/*[not(@xsi:nil = 'true')][not(self::hl7:structuredBody[hl7:component])]"
         id="d219098e61-true-d222068e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e61-true-d222068e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:structuredBody[hl7:component] (rule-reference: d219098e61-true-d222068e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/*[not(@xsi:nil = 'true')][not(self::hl7:component[hl7:section])]"
         id="d219098e63-true-d222445e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e63-true-d222445e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:component[hl7:section] (rule-reference: d219098e63-true-d222445e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/*[not(@xsi:nil = 'true')][not(self::hl7:section)]"
         id="d219098e65-true-d222822e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e65-true-d222822e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:section (rule-reference: d219098e65-true-d222822e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/*[not(@xsi:nil = 'true')][not(self::hl7:text | self::hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | self::hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | self::hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]])]"
         id="d219098e67-true-d223214e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e67-true-d223214e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:text | hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]] (rule-reference: d219098e67-true-d223214e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']])]"
         id="d219098e71-true-d223438e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e71-true-d223438e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']] (rule-reference: d219098e71-true-d223438e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d223296e1-true-d223618e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223296e1-true-d223618e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d223296e1-true-d223618e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d223629e157-true-d223677e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d223629e157-true-d223677e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d223629e157-true-d223677e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d223629e199-true-d223753e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e199-true-d223753e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d223629e199-true-d223753e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d223727e1-true-d223792e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223727e1-true-d223792e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d223727e1-true-d223792e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d223803e112-true-d223840e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d223803e112-true-d223840e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d223803e112-true-d223840e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d223845e40-true-d223862e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d223845e40-true-d223862e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d223845e40-true-d223862e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d223895e7-true-d223918e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d223895e7-true-d223918e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d223895e7-true-d223918e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d223895e11-true-d223955e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d223895e11-true-d223955e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d223895e11-true-d223955e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d223925e5-true-d223970e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d223925e5-true-d223970e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d223925e5-true-d223970e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d223925e19-true-d223991e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d223925e19-true-d223991e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d223925e19-true-d223991e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d224002e11-true-d224049e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d224002e11-true-d224049e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d224002e11-true-d224049e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d224006e4-true-d224082e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d224006e4-true-d224082e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d224006e4-true-d224082e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d223629e201-true-d224158e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d223629e201-true-d224158e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d223629e201-true-d224158e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d223629e216-true-d224214e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d223629e216-true-d224214e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d223629e216-true-d224214e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d224225e42-true-d224299e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e42-true-d224299e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d224225e42-true-d224299e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d224225e67-true-d224353e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e67-true-d224353e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d224225e67-true-d224353e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d224225e76-true-d224366e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e76-true-d224366e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d224225e76-true-d224366e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d224225e84-true-d224412e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e84-true-d224412e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d224225e84-true-d224412e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d224225e102-true-d224508e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e102-true-d224508e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d224225e102-true-d224508e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d224225e121-true-d224533e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d224225e121-true-d224533e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d224225e121-true-d224533e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d223629e239-true-d224559e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e239-true-d224559e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d223629e239-true-d224559e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d224546e6-true-d224590e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224546e6-true-d224590e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d224546e6-true-d224590e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']])]"
         id="d223629e247-true-d224630e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e247-true-d224630e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']] (rule-reference: d223629e247-true-d224630e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d224617e6-true-d224661e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224617e6-true-d224661e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d224617e6-true-d224661e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d223629e255-true-d224704e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e255-true-d224704e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d223629e255-true-d224704e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d224688e6-true-d224723e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224688e6-true-d224723e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d224688e6-true-d224723e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d224734e43-true-d224755e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d224734e43-true-d224755e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d224734e43-true-d224755e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d223629e263-true-d224781e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e263-true-d224781e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d223629e263-true-d224781e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d224768e6-true-d224807e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224768e6-true-d224807e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d224768e6-true-d224807e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d223629e271-true-d224841e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e271-true-d224841e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d223629e271-true-d224841e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d224828e6-true-d224868e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224828e6-true-d224868e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d224828e6-true-d224868e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d223629e279-true-d224906e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e279-true-d224906e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d223629e279-true-d224906e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d224893e7-true-d224933e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d224893e7-true-d224933e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d224893e7-true-d224933e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d223629e290-true-d225017e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d223629e290-true-d225017e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d223629e290-true-d225017e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d225028e47-true-d225108e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225028e47-true-d225108e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d225028e47-true-d225108e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d225028e66-true-d225134e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225028e66-true-d225134e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d225028e66-true-d225134e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d225153e9-true-d225178e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d225153e9-true-d225178e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d225153e9-true-d225178e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d225153e36-true-d225196e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d225153e36-true-d225196e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d225153e36-true-d225196e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d225153e45-true-d225233e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d225153e45-true-d225233e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d225153e45-true-d225233e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d225153e68-true-d225251e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d225153e68-true-d225251e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d225153e68-true-d225251e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d225153e76-true-d225284e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d225153e76-true-d225284e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d225153e76-true-d225284e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d225304e25-true-d225328e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d225304e25-true-d225328e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d225304e25-true-d225328e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d225028e87-true-d225383e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225028e87-true-d225383e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d225028e87-true-d225383e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d225353e5-true-d225401e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225353e5-true-d225401e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d225353e5-true-d225401e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d225028e103-true-d225448e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225028e103-true-d225448e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d225028e103-true-d225448e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d225028e118-true-d225463e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225028e118-true-d225463e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d225028e118-true-d225463e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d225455e17-true-d225482e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d225455e17-true-d225482e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d225455e17-true-d225482e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d223629e312-true-d225508e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e312-true-d225508e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d223629e312-true-d225508e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d225495e6-true-d225535e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d225495e6-true-d225535e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d225495e6-true-d225535e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d223629e320-true-d225573e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e320-true-d225573e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d223629e320-true-d225573e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d225560e9-true-d225605e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d225560e9-true-d225605e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d225560e9-true-d225605e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d223629e331-true-d225649e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e331-true-d225649e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d223629e331-true-d225649e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d225636e9-true-d225683e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d225636e9-true-d225683e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d225636e9-true-d225683e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d223629e342-true-d225728e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d223629e342-true-d225728e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d223629e342-true-d225728e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d225715e10-true-d225755e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d225715e10-true-d225755e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d225715e10-true-d225755e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']])]"
         id="d219098e73-true-d225991e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e73-true-d225991e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']] (rule-reference: d219098e73-true-d225991e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d225849e1-true-d226171e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d225849e1-true-d226171e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d225849e1-true-d226171e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d226182e157-true-d226230e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d226182e157-true-d226230e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d226182e157-true-d226230e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d226182e199-true-d226306e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e199-true-d226306e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d226182e199-true-d226306e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d226280e1-true-d226345e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226280e1-true-d226345e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d226280e1-true-d226345e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d226356e112-true-d226393e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d226356e112-true-d226393e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d226356e112-true-d226393e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d226398e40-true-d226415e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d226398e40-true-d226415e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d226398e40-true-d226415e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d226448e7-true-d226471e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226448e7-true-d226471e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d226448e7-true-d226471e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d226448e11-true-d226508e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226448e11-true-d226508e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d226448e11-true-d226508e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d226478e5-true-d226523e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226478e5-true-d226523e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d226478e5-true-d226523e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d226478e19-true-d226544e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226478e19-true-d226544e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d226478e19-true-d226544e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d226555e11-true-d226602e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226555e11-true-d226602e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d226555e11-true-d226602e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d226559e4-true-d226635e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d226559e4-true-d226635e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d226559e4-true-d226635e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d226182e201-true-d226711e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d226182e201-true-d226711e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d226182e201-true-d226711e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d226182e216-true-d226767e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d226182e216-true-d226767e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d226182e216-true-d226767e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d226778e42-true-d226852e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e42-true-d226852e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d226778e42-true-d226852e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d226778e67-true-d226906e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e67-true-d226906e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d226778e67-true-d226906e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d226778e76-true-d226919e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e76-true-d226919e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d226778e76-true-d226919e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d226778e84-true-d226965e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e84-true-d226965e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d226778e84-true-d226965e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d226778e102-true-d227061e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e102-true-d227061e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d226778e102-true-d227061e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d226778e121-true-d227086e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d226778e121-true-d227086e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d226778e121-true-d227086e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d226182e239-true-d227112e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e239-true-d227112e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d226182e239-true-d227112e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d227099e6-true-d227143e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227099e6-true-d227143e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d227099e6-true-d227143e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']])]"
         id="d226182e247-true-d227183e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e247-true-d227183e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']] (rule-reference: d226182e247-true-d227183e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d227170e6-true-d227214e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227170e6-true-d227214e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d227170e6-true-d227214e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d226182e255-true-d227257e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e255-true-d227257e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d226182e255-true-d227257e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d227241e6-true-d227276e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227241e6-true-d227276e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d227241e6-true-d227276e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d227287e43-true-d227308e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d227287e43-true-d227308e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d227287e43-true-d227308e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d226182e263-true-d227334e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e263-true-d227334e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d226182e263-true-d227334e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d227321e6-true-d227360e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227321e6-true-d227360e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d227321e6-true-d227360e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d226182e271-true-d227394e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e271-true-d227394e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d226182e271-true-d227394e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d227381e6-true-d227421e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227381e6-true-d227421e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d227381e6-true-d227421e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d226182e279-true-d227459e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e279-true-d227459e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d226182e279-true-d227459e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d227446e7-true-d227486e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d227446e7-true-d227486e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d227446e7-true-d227486e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d226182e290-true-d227570e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d226182e290-true-d227570e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d226182e290-true-d227570e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d227581e47-true-d227661e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227581e47-true-d227661e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d227581e47-true-d227661e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d227581e66-true-d227687e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227581e66-true-d227687e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d227581e66-true-d227687e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d227706e9-true-d227731e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d227706e9-true-d227731e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d227706e9-true-d227731e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d227706e36-true-d227749e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d227706e36-true-d227749e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d227706e36-true-d227749e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d227706e45-true-d227786e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d227706e45-true-d227786e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d227706e45-true-d227786e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d227706e68-true-d227804e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d227706e68-true-d227804e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d227706e68-true-d227804e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d227706e76-true-d227837e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d227706e76-true-d227837e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d227706e76-true-d227837e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d227857e25-true-d227881e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d227857e25-true-d227881e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d227857e25-true-d227881e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d227581e87-true-d227936e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227581e87-true-d227936e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d227581e87-true-d227936e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d227906e5-true-d227954e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227906e5-true-d227954e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d227906e5-true-d227954e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d227581e103-true-d228001e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227581e103-true-d228001e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d227581e103-true-d228001e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d227581e118-true-d228016e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d227581e118-true-d228016e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d227581e118-true-d228016e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d228008e17-true-d228035e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d228008e17-true-d228035e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d228008e17-true-d228035e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d226182e312-true-d228061e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e312-true-d228061e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d226182e312-true-d228061e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d228048e6-true-d228088e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228048e6-true-d228088e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d228048e6-true-d228088e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d226182e320-true-d228126e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e320-true-d228126e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d226182e320-true-d228126e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d228113e9-true-d228158e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228113e9-true-d228158e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d228113e9-true-d228158e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d226182e331-true-d228202e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e331-true-d228202e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d226182e331-true-d228202e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d228189e9-true-d228236e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228189e9-true-d228236e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d228189e9-true-d228236e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d226182e342-true-d228281e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d226182e342-true-d228281e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d226182e342-true-d228281e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d228268e10-true-d228308e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228268e10-true-d228308e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d228268e10-true-d228308e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']])]"
         id="d219098e75-true-d228451e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d219098e75-true-d228451e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']] (rule-reference: d219098e75-true-d228451e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | self::cda:id | self::cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:effectiveTime | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:performer[cda:assignedEntity] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | self::cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'])]"
         id="d228371e1-true-d228637e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e1-true-d228637e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | cda:id | cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:effectiveTime | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:performer[cda:assignedEntity] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'] (rule-reference: d228371e1-true-d228637e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d228371e53-true-d228680e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e53-true-d228680e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d228371e53-true-d228680e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:width)]"
         id="d228371e66-true-d228707e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e66-true-d228707e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:width (rule-reference: d228371e66-true-d228707e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d228371e85-true-d228757e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e85-true-d228757e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d228371e85-true-d228757e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d228720e5-true-d228796e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228720e5-true-d228796e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d228720e5-true-d228796e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d228807e112-true-d228844e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d228807e112-true-d228844e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d228807e112-true-d228844e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d228849e40-true-d228866e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d228849e40-true-d228866e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d228849e40-true-d228866e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d228899e7-true-d228922e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d228899e7-true-d228922e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d228899e7-true-d228922e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d228899e11-true-d228959e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d228899e11-true-d228959e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d228899e11-true-d228959e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d228929e5-true-d228974e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d228929e5-true-d228974e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d228929e5-true-d228974e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d228929e19-true-d228995e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d228929e19-true-d228995e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d228929e19-true-d228995e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d229006e11-true-d229053e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d229006e11-true-d229053e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d229006e11-true-d229053e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d229010e4-true-d229086e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d229010e4-true-d229086e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d229010e4-true-d229086e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d228371e91-true-d229157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e91-true-d229157e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d228371e91-true-d229157e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d228371e93-true-d229207e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e93-true-d229207e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d228371e93-true-d229207e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d229218e42-true-d229292e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e42-true-d229292e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d229218e42-true-d229292e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d229218e67-true-d229346e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e67-true-d229346e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d229218e67-true-d229346e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d229218e76-true-d229359e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e76-true-d229359e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d229218e76-true-d229359e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d229218e84-true-d229405e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e84-true-d229405e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d229218e84-true-d229405e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d229218e102-true-d229501e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e102-true-d229501e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d229218e102-true-d229501e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d229218e121-true-d229526e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d229218e121-true-d229526e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d229218e121-true-d229526e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d228371e109-true-d229558e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e109-true-d229558e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d228371e109-true-d229558e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d229539e6-true-d229580e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229539e6-true-d229580e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d229539e6-true-d229580e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d229591e61-true-d229618e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d229591e61-true-d229618e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d229591e61-true-d229618e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']])]"
         id="d228371e118-true-d229688e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e118-true-d229688e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']] (rule-reference: d228371e118-true-d229688e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | self::hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')])]"
         id="d229675e6-true-d229717e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229675e6-true-d229717e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] (rule-reference: d229675e6-true-d229717e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d228371e126-true-d229756e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e126-true-d229756e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d228371e126-true-d229756e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d229743e6-true-d229782e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229743e6-true-d229782e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d229743e6-true-d229782e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']])]"
         id="d228371e134-true-d229816e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e134-true-d229816e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']] (rule-reference: d228371e134-true-d229816e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | self::hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d229803e6-true-d229847e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229803e6-true-d229847e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d229803e6-true-d229847e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d228371e142-true-d229887e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e142-true-d229887e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d228371e142-true-d229887e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d229874e7-true-d229914e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229874e7-true-d229914e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d229874e7-true-d229914e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/*[not(@xsi:nil = 'true')][not(self::hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']])]"
         id="d228371e152-true-d229952e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e152-true-d229952e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']] (rule-reference: d228371e152-true-d229952e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | self::hl7:id | self::hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d229939e6-true-d229981e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d229939e6-true-d229981e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | hl7:id | hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d229939e6-true-d229981e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d228371e160-true-d230018e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d228371e160-true-d230018e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d228371e160-true-d230018e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:ClinicalDocument[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9419']]/hl7:component/hl7:structuredBody[hl7:component]/hl7:component[hl7:section]/hl7:section/hl7:entry[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d230007e7-true-d230045e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9419-2022-11-21T143654.html"
              test="not(.)">(MPCDAAfhVoorschrift5)/d230007e7-true-d230045e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d230007e7-true-d230045e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420'] | self::hl7:code[(@code = '131' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4') or @nullFlavor] | self::hl7:statusCode | self::hl7:recordTarget[hl7:patientRole] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | self::hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]])]"
         id="d230068e18-true-d230532e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d230068e18-true-d230532e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420'] | hl7:code[(@code = '131' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4') or @nullFlavor] | hl7:statusCode | hl7:recordTarget[hl7:patientRole] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]] | hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]] (rule-reference: d230068e18-true-d230532e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d230555e19-true-d230659e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e19-true-d230659e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d230555e19-true-d230659e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d230555e21-true-d230774e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e21-true-d230774e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d230555e21-true-d230774e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d230555e79-true-d230824e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e79-true-d230824e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d230555e79-true-d230824e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d230555e84-true-d230897e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e84-true-d230897e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d230555e84-true-d230897e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d230555e89-true-d230910e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e89-true-d230910e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d230555e89-true-d230910e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d230555e94-true-d231023e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e94-true-d231023e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d230555e94-true-d231023e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d230555e96-true-d231044e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e96-true-d231044e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d230555e96-true-d231044e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d230555e173-true-d231237e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e173-true-d231237e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d230555e173-true-d231237e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d230555e182-true-d231289e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e182-true-d231289e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d230555e182-true-d231289e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d230555e187-true-d231362e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e187-true-d231362e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d230555e187-true-d231362e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d230555e192-true-d231375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e192-true-d231375e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d230555e192-true-d231375e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d230555e200-true-d231409e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e200-true-d231409e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d230555e200-true-d231409e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d230555e202-true-d231430e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e202-true-d231430e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d230555e202-true-d231430e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d230555e207-true-d231537e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d230555e207-true-d231537e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d230555e207-true-d231537e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']])]"
         id="d230068e81-true-d231763e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d230068e81-true-d231763e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']] (rule-reference: d230068e81-true-d231763e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d231552e6-true-d231943e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231552e6-true-d231943e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d231552e6-true-d231943e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d231954e157-true-d232002e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d231954e157-true-d232002e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d231954e157-true-d232002e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d231954e199-true-d232078e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e199-true-d232078e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d231954e199-true-d232078e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d232052e1-true-d232117e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d232052e1-true-d232117e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d232052e1-true-d232117e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d232128e112-true-d232165e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d232128e112-true-d232165e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d232128e112-true-d232165e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d232170e40-true-d232187e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d232170e40-true-d232187e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d232170e40-true-d232187e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d232220e7-true-d232243e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232220e7-true-d232243e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d232220e7-true-d232243e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d232220e11-true-d232280e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232220e11-true-d232280e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d232220e11-true-d232280e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d232250e5-true-d232295e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232250e5-true-d232295e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d232250e5-true-d232295e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d232250e19-true-d232316e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232250e19-true-d232316e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d232250e19-true-d232316e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d232327e11-true-d232374e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232327e11-true-d232374e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d232327e11-true-d232374e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d232331e4-true-d232407e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d232331e4-true-d232407e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d232331e4-true-d232407e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d231954e201-true-d232483e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d231954e201-true-d232483e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d231954e201-true-d232483e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d231954e216-true-d232539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d231954e216-true-d232539e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d231954e216-true-d232539e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d232550e42-true-d232624e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e42-true-d232624e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d232550e42-true-d232624e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d232550e67-true-d232678e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e67-true-d232678e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d232550e67-true-d232678e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d232550e76-true-d232691e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e76-true-d232691e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d232550e76-true-d232691e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d232550e84-true-d232737e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e84-true-d232737e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d232550e84-true-d232737e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d232550e102-true-d232833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e102-true-d232833e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d232550e102-true-d232833e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d232550e121-true-d232858e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d232550e121-true-d232858e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d232550e121-true-d232858e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d231954e239-true-d232884e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e239-true-d232884e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d231954e239-true-d232884e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d232871e6-true-d232915e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d232871e6-true-d232915e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d232871e6-true-d232915e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']])]"
         id="d231954e247-true-d232955e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e247-true-d232955e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']] (rule-reference: d231954e247-true-d232955e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d232942e6-true-d232986e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d232942e6-true-d232986e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d232942e6-true-d232986e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d231954e255-true-d233029e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e255-true-d233029e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d231954e255-true-d233029e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d233013e6-true-d233048e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233013e6-true-d233048e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d233013e6-true-d233048e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d233059e43-true-d233080e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d233059e43-true-d233080e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d233059e43-true-d233080e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d231954e263-true-d233106e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e263-true-d233106e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d231954e263-true-d233106e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d233093e6-true-d233132e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233093e6-true-d233132e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d233093e6-true-d233132e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d231954e271-true-d233166e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e271-true-d233166e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d231954e271-true-d233166e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d233153e6-true-d233193e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233153e6-true-d233193e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d233153e6-true-d233193e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d231954e279-true-d233231e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e279-true-d233231e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d231954e279-true-d233231e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d233218e7-true-d233258e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233218e7-true-d233258e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d233218e7-true-d233258e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d231954e290-true-d233342e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d231954e290-true-d233342e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d231954e290-true-d233342e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d233353e47-true-d233433e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233353e47-true-d233433e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d233353e47-true-d233433e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d233353e66-true-d233459e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233353e66-true-d233459e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d233353e66-true-d233459e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d233478e9-true-d233503e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d233478e9-true-d233503e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d233478e9-true-d233503e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d233478e36-true-d233521e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d233478e36-true-d233521e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d233478e36-true-d233521e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d233478e45-true-d233558e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d233478e45-true-d233558e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d233478e45-true-d233558e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d233478e68-true-d233576e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d233478e68-true-d233576e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d233478e68-true-d233576e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d233478e76-true-d233609e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d233478e76-true-d233609e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d233478e76-true-d233609e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d233629e25-true-d233653e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d233629e25-true-d233653e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d233629e25-true-d233653e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d233353e87-true-d233708e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233353e87-true-d233708e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d233353e87-true-d233708e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d233678e5-true-d233726e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233678e5-true-d233726e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d233678e5-true-d233726e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d233353e103-true-d233773e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233353e103-true-d233773e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d233353e103-true-d233773e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d233353e118-true-d233788e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233353e118-true-d233788e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d233353e118-true-d233788e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d233780e17-true-d233807e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d233780e17-true-d233807e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d233780e17-true-d233807e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d231954e312-true-d233833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e312-true-d233833e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d231954e312-true-d233833e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d233820e6-true-d233860e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233820e6-true-d233860e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d233820e6-true-d233860e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d231954e320-true-d233898e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e320-true-d233898e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d231954e320-true-d233898e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d233885e9-true-d233930e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233885e9-true-d233930e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d233885e9-true-d233930e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d231954e331-true-d233974e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e331-true-d233974e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d231954e331-true-d233974e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d233961e9-true-d234008e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d233961e9-true-d234008e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d233961e9-true-d234008e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d231954e342-true-d234053e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d231954e342-true-d234053e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d231954e342-true-d234053e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9416'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d234040e10-true-d234080e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234040e10-true-d234080e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d234040e10-true-d234080e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']])]"
         id="d230068e89-true-d234316e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d230068e89-true-d234316e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']] (rule-reference: d230068e89-true-d234316e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | self::cda:id | self::cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:maxDoseQuantity | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]])]"
         id="d234105e6-true-d234496e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234105e6-true-d234496e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415'] | cda:id | cda:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:maxDoseQuantity | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] (rule-reference: d234105e6-true-d234496e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d234507e157-true-d234555e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d234507e157-true-d234555e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d234507e157-true-d234555e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d234507e199-true-d234631e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e199-true-d234631e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d234507e199-true-d234631e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d234605e1-true-d234670e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234605e1-true-d234670e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d234605e1-true-d234670e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d234681e112-true-d234718e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d234681e112-true-d234718e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d234681e112-true-d234718e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d234723e40-true-d234740e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d234723e40-true-d234740e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d234723e40-true-d234740e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d234773e7-true-d234796e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234773e7-true-d234796e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d234773e7-true-d234796e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d234773e11-true-d234833e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234773e11-true-d234833e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d234773e11-true-d234833e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d234803e5-true-d234848e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234803e5-true-d234848e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d234803e5-true-d234848e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d234803e19-true-d234869e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234803e19-true-d234869e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d234803e19-true-d234869e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d234880e11-true-d234927e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234880e11-true-d234927e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d234880e11-true-d234927e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d234884e4-true-d234960e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d234884e4-true-d234960e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d234884e4-true-d234960e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:assignedAuthor[hl7:id])]"
         id="d234507e201-true-d235036e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d234507e201-true-d235036e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:assignedAuthor[hl7:id] (rule-reference: d234507e201-true-d235036e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:representedOrganization)]"
         id="d234507e216-true-d235092e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d234507e216-true-d235092e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:representedOrganization (rule-reference: d234507e216-true-d235092e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d235103e42-true-d235177e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e42-true-d235177e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d235103e42-true-d235177e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d235103e67-true-d235231e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e67-true-d235231e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d235103e67-true-d235231e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d235103e76-true-d235244e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e76-true-d235244e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d235103e76-true-d235244e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d235103e84-true-d235290e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e84-true-d235290e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d235103e84-true-d235290e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d235103e102-true-d235386e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e102-true-d235386e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d235103e102-true-d235386e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:author/hl7:assignedAuthor[hl7:id]/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d235103e121-true-d235411e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d235103e121-true-d235411e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d235103e121-true-d235411e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d234507e239-true-d235437e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e239-true-d235437e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d234507e239-true-d235437e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d235424e6-true-d235468e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235424e6-true-d235468e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d235424e6-true-d235468e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']])]"
         id="d234507e247-true-d235508e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e247-true-d235508e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']] (rule-reference: d234507e247-true-d235508e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | self::hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d235495e6-true-d235539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235495e6-true-d235539e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9440'] | hl7:code[(@code = '160121000146101' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.49-2022-11-15T120643.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d235495e6-true-d235539e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d234507e255-true-d235582e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e255-true-d235582e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d234507e255-true-d235582e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d235566e6-true-d235601e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235566e6-true-d235601e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d235566e6-true-d235601e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d235612e43-true-d235633e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d235612e43-true-d235633e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d235612e43-true-d235633e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d234507e263-true-d235659e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e263-true-d235659e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d234507e263-true-d235659e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d235646e6-true-d235685e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235646e6-true-d235685e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d235646e6-true-d235685e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']])]"
         id="d234507e271-true-d235719e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e271-true-d235719e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']] (rule-reference: d234507e271-true-d235719e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | self::hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:text)]"
         id="d235706e6-true-d235746e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235706e6-true-d235746e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9402'] | hl7:code[(@code = '12' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:text (rule-reference: d235706e6-true-d235746e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d234507e279-true-d235784e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e279-true-d235784e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d234507e279-true-d235784e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d235771e7-true-d235811e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d235771e7-true-d235811e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d235771e7-true-d235811e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d234507e290-true-d235895e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9415-2022-11-21T070356.html"
              test="not(.)">(MPCDAToedieningsafspraakSchemaInhoud5)/d234507e290-true-d235895e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d234507e290-true-d235895e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d235906e47-true-d235986e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d235906e47-true-d235986e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d235906e47-true-d235986e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d235906e66-true-d236012e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d235906e66-true-d236012e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d235906e66-true-d236012e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d236031e9-true-d236056e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d236031e9-true-d236056e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d236031e9-true-d236056e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d236031e36-true-d236074e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d236031e36-true-d236074e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d236031e36-true-d236074e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d236031e45-true-d236111e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d236031e45-true-d236111e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d236031e45-true-d236111e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d236031e68-true-d236129e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d236031e68-true-d236129e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d236031e68-true-d236129e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d236031e76-true-d236162e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d236031e76-true-d236162e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d236031e76-true-d236162e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d236182e25-true-d236206e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d236182e25-true-d236206e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d236182e25-true-d236206e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d235906e87-true-d236261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d235906e87-true-d236261e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d235906e87-true-d236261e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d236231e5-true-d236279e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d236231e5-true-d236279e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d236231e5-true-d236279e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d235906e103-true-d236326e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d235906e103-true-d236326e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d235906e103-true-d236326e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d235906e118-true-d236341e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d235906e118-true-d236341e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d235906e118-true-d236341e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d236333e17-true-d236360e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d236333e17-true-d236360e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d236333e17-true-d236360e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d234507e312-true-d236386e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e312-true-d236386e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d234507e312-true-d236386e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d236373e6-true-d236413e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236373e6-true-d236413e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d236373e6-true-d236413e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d234507e320-true-d236451e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e320-true-d236451e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d234507e320-true-d236451e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d236438e9-true-d236483e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236438e9-true-d236483e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d236438e9-true-d236483e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d234507e331-true-d236527e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e331-true-d236527e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d234507e331-true-d236527e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d236514e9-true-d236561e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236514e9-true-d236561e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d236514e9-true-d236561e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d234507e342-true-d236606e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d234507e342-true-d236606e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d234507e342-true-d236606e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9417'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9415']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d236593e10-true-d236633e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236593e10-true-d236633e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d236593e10-true-d236633e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/*[not(@xsi:nil = 'true')][not(self::cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']])]"
         id="d230068e97-true-d236776e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d230068e97-true-d236776e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']] (rule-reference: d230068e97-true-d236776e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | self::cda:id | self::cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | self::cda:effectiveTime | self::cda:quantity | self::cda:expectedUseTime | self::cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:performer[cda:assignedEntity] | self::cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | self::cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'])]"
         id="d236658e6-true-d236962e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e6-true-d236962e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364'] | cda:id | cda:code[(@code = '373784005' and @codeSystem = '2.16.840.1.113883.6.96') or @nullFlavor] | cda:effectiveTime | cda:quantity | cda:expectedUseTime | cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:performer[cda:assignedEntity] | cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]] | cda:entryRelationship[@typeCode='COMP' and @inversionInd='true'] (rule-reference: d236658e6-true-d236962e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'])]"
         id="d236658e58-true-d237005e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e58-true-d237005e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.12'] (rule-reference: d236658e58-true-d237005e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:expectedUseTime/*[not(@xsi:nil = 'true')][not(self::cda:width)]"
         id="d236658e71-true-d237032e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e71-true-d237032e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:width (rule-reference: d236658e71-true-d237032e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d236658e90-true-d237082e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e90-true-d237082e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d236658e90-true-d237082e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d237045e5-true-d237121e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d237045e5-true-d237121e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d237045e5-true-d237121e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d237132e112-true-d237169e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d237132e112-true-d237169e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d237132e112-true-d237169e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d237174e40-true-d237191e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d237174e40-true-d237191e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d237174e40-true-d237191e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d237224e7-true-d237247e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237224e7-true-d237247e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d237224e7-true-d237247e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d237224e11-true-d237284e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237224e11-true-d237284e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d237224e11-true-d237284e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d237254e5-true-d237299e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237254e5-true-d237299e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d237254e5-true-d237299e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d237254e19-true-d237320e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237254e19-true-d237320e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d237254e19-true-d237320e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d237331e11-true-d237378e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237331e11-true-d237378e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d237331e11-true-d237378e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:product[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d237335e4-true-d237411e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d237335e4-true-d237411e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d237335e4-true-d237411e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/*[not(@xsi:nil = 'true')][not(self::cda:assignedEntity)]"
         id="d236658e96-true-d237482e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e96-true-d237482e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:assignedEntity (rule-reference: d236658e96-true-d237482e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@nullFlavor = 'NI'] | self::hl7:representedOrganization)]"
         id="d236658e98-true-d237532e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e98-true-d237532e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@nullFlavor = 'NI'] | hl7:representedOrganization (rule-reference: d236658e98-true-d237532e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d237543e42-true-d237617e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e42-true-d237617e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d237543e42-true-d237617e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d237543e67-true-d237671e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e67-true-d237671e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d237543e67-true-d237671e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d237543e76-true-d237684e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e76-true-d237684e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d237543e76-true-d237684e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d237543e84-true-d237730e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e84-true-d237730e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d237543e84-true-d237730e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d237543e102-true-d237826e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e102-true-d237826e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d237543e102-true-d237826e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:performer[cda:assignedEntity]/cda:assignedEntity/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d237543e121-true-d237851e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d237543e121-true-d237851e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d237543e121-true-d237851e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/*[not(@xsi:nil = 'true')][not(self::hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']])]"
         id="d236658e114-true-d237883e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e114-true-d237883e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']] (rule-reference: d236658e114-true-d237883e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | self::hl7:addr)]"
         id="d237864e6-true-d237905e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d237864e6-true-d237905e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091'] | hl7:addr (rule-reference: d237864e6-true-d237905e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:participant[hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]]/hl7:participantRole[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9091']]/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:city | self::hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d237916e61-true-d237943e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9092-2016-06-21T155532.html"
              test="not(.)">(AdresAfleverlocatie)/d237916e61-true-d237943e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:city | hl7:country[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.101.11.13-2013-03-25T141300.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d237916e61-true-d237943e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']])]"
         id="d236658e123-true-d238013e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e123-true-d238013e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']] (rule-reference: d236658e123-true-d238013e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | self::hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')])]"
         id="d238000e6-true-d238042e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238000e6-true-d238042e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9095'] | hl7:code[(@code = '4' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'TS')] (rule-reference: d238000e6-true-d238042e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']])]"
         id="d236658e131-true-d238081e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e131-true-d238081e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']] (rule-reference: d236658e131-true-d238081e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)])]"
         id="d238068e6-true-d238107e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238068e6-true-d238107e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9097'] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.30-2017-04-03T130647.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem)] (rule-reference: d238068e6-true-d238107e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']])]"
         id="d236658e139-true-d238141e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e139-true-d238141e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']] (rule-reference: d236658e139-true-d238141e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | self::hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d238128e6-true-d238172e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238128e6-true-d238172e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9178'] | hl7:code[(@code = '13' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.33-2017-05-05T131418.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d238128e6-true-d238172e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d236658e147-true-d238212e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e147-true-d238212e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d236658e147-true-d238212e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d238199e7-true-d238239e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238199e7-true-d238239e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d238199e7-true-d238239e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/*[not(@xsi:nil = 'true')][not(self::hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']])]"
         id="d236658e157-true-d238277e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e157-true-d238277e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']] (rule-reference: d236658e157-true-d238277e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]]/hl7:supply[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | self::hl7:id | self::hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')])]"
         id="d238264e6-true-d238306e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238264e6-true-d238306e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9312'] | hl7:id | hl7:code[(@code = '52711000146108' and @codeSystem = '2.16.840.1.113883.6.96')] (rule-reference: d238264e6-true-d238306e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d236658e165-true-d238343e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d236658e165-true-d238343e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d236658e165-true-d238343e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9420']]/hl7:component[cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]]/cda:supply[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9364']]/cda:entryRelationship[@typeCode='COMP' and @inversionInd='true']/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d238332e7-true-d238370e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9420-2022-11-21T144449.html"
              test="not(.)">(MPHL7AfhVoorschriftOrganizer6)/d238332e7-true-d238370e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d238332e7-true-d238370e0)</assert>
   </rule>
</pattern>